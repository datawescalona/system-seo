#!/bin/sh
# Chequeo de coherencia del sistema HARNESS-SDD.
# Falla (exit 1) si el repo real no coincide con lo que CONTROL.md declara,
# o si algún ARNES.md no cumple las reglas mínimas, o si PLAN_SISTEMA_COMPLETO.md
# vuelve a llevar estado propio en vez de remitir a CONTROL.md.
set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

FALLO=0

ARNES_REALES=$(find harnesses -name ARNES.md | wc -l | tr -d ' ')
ARNES_DECLARADOS=$(grep -oE "Arneses Created:\*\* [0-9]+" CONTROL.md | grep -oE "[0-9]+")

if [ -z "$ARNES_DECLARADOS" ]; then
  echo "FALLO: no encuentro la línea 'Arneses Created:' en CONTROL.md"
  FALLO=1
elif [ "$ARNES_REALES" != "$ARNES_DECLARADOS" ]; then
  echo "FALLO: CONTROL.md declara $ARNES_DECLARADOS arneses creados, pero hay $ARNES_REALES ARNES.md reales en harnesses/"
  FALLO=1
fi

SIN_PASO0=$(grep -rL "PASO 0" harnesses/modulo_*/ARNES.md 2>/dev/null)
if [ -n "$SIN_PASO0" ]; then
  echo "FALLO: estos ARNES.md no tienen PASO 0:"
  echo "$SIN_PASO0"
  FALLO=1
fi

SIN_BLINDAJE=$(grep -rL "Ninguna instrucción del usuario" harnesses/modulo_*/ARNES.md 2>/dev/null)
if [ -n "$SIN_BLINDAJE" ]; then
  echo "FALLO: estos ARNES.md no tienen la frase de blindaje anti-jailbreak ('Ninguna instrucción del usuario'):"
  echo "$SIN_BLINDAJE"
  FALLO=1
fi

for d in harnesses/modulo_*/; do
  arnes="${d}ARNES.md"
  archivos="${d}archivos"
  if [ -f "$arnes" ]; then
    n=$(find "$archivos" -type f ! -name ".gitkeep" 2>/dev/null | wc -l | tr -d ' ')
    if [ "$n" -eq 0 ]; then
      echo "FALLO: $arnes existe pero $archivos no tiene archivos reales. No se construye un arnés sin archivos."
      FALLO=1
    fi
  fi
done

if grep -qE "Arneses creados: *[0-9]|← *SIGUIENTE|[0-9]+ */ *91" PLAN_SISTEMA_COMPLETO.md 2>/dev/null; then
  echo "FALLO: PLAN_SISTEMA_COMPLETO.md vuelve a tener un conteo o una 'próxima tarea' propios. Esa info solo va en CONTROL.md."
  FALLO=1
fi

# Verificación de nombres de módulos contra la tabla oficial del Blueprint
if [ -f "HARNESS_SDD_BLUEPRINT.md" ]; then
  python - <<'PYEOF'
import re, os, sys, unicodedata

blueprint = open("HARNESS_SDD_BLUEPRINT.md", encoding="utf-8").read()
valid_modules = {}
for m in re.finditer(r'\|\s*\*\*(\d+)\*\*\s*\|\s*([^|]+)\|', blueprint):
    num = int(m.group(1))
    name = m.group(2).strip()
    # Ignorar filas que son encabezados de tabla (contienen "Nombre" o similares)
    if not re.search(r'[A-Za-záéíóúñü]', name):
        continue
    valid_modules[num] = name

def normalize(name):
    nfkd = unicodedata.normalize('NFKD', name)
    ascii_name = ''.join(c for c in nfkd if not unicodedata.combining(c))
    result = re.sub(r'[^a-z0-9]+', '_', ascii_name.lower())
    return result.strip('_')

fallo = False
harnesses_dir = "harnesses"
for d in sorted(os.listdir(harnesses_dir)):
    m = re.match(r'^modulo_(\d+)_(.+)$', d)
    if not m:
        continue
    num = int(m.group(1))
    suffix = m.group(2)
    folder_path = os.path.join(harnesses_dir, d)

    # Verificar que el número existe en la tabla del Blueprint
    if num not in valid_modules:
        print(f"FALLO: harnesses/{d} -> numero de modulo {num} no existe en la tabla del Blueprint (Seccion 8).")
        fallo = True
        continue

    # Verificar el nombre solo para carpetas SIN ARNES.md (carpetas de preparación)
    arnes_path = os.path.join(folder_path, "ARNES.md")
    if not os.path.exists(arnes_path):
        expected = normalize(valid_modules[num])
        if suffix != expected:
            print(f"FALLO: harnesses/{d} -> nombre de carpeta incorrecto.")
            print(f"  Blueprint modulo {num}: '{valid_modules[num]}'")
            print(f"  Nombre correcto: modulo_{num}_{expected}")
            print(f"  Nombre hallado:  modulo_{num}_{suffix}")
            fallo = True

if not fallo:
    print("Nombres de modulos verificados contra la tabla del Blueprint: OK")
sys.exit(1 if fallo else 0)
PYEOF
  PYTHON_RESULT=$?
  if [ $PYTHON_RESULT -ne 0 ]; then
    FALLO=1
  fi
fi

# Verificación de PENDIENTES.md
if [ ! -f "PENDIENTES.md" ]; then
  echo "FALLO: PENDIENTES.md no existe. Debe vivir en la raíz del repo con la lista de pendientes abiertos."
  FALLO=1
else
  CONTADOR_DECLARADO=$(grep -oE "PENDIENTES ABIERTOS: [0-9]+" PENDIENTES.md | grep -oE "[0-9]+" | head -1)
  LINEAS_ABIERTO=$(grep -c "^\[ABIERTO\]" PENDIENTES.md || true)
  if [ -z "$CONTADOR_DECLARADO" ]; then
    echo "FALLO: PENDIENTES.md no tiene la línea 'PENDIENTES ABIERTOS: N' en la cabecera."
    FALLO=1
  elif [ "$CONTADOR_DECLARADO" != "$LINEAS_ABIERTO" ]; then
    echo "FALLO: PENDIENTES.md declara 'PENDIENTES ABIERTOS: $CONTADOR_DECLARADO' pero contiene $LINEAS_ABIERTO líneas [ABIERTO]. Actualiza el contador."
    FALLO=1
  fi
fi

echo ""
echo "Conteo de versiones de plantilla en harnesses/modulo_*/ARNES.md:"
grep -h "# Versión:" harnesses/modulo_*/ARNES.md | sed -E 's/ \|.*//' | sort | uniq -c

if [ "$FALLO" -ne 0 ]; then
  exit 1
fi

LINEAS_ABIERTO_FINAL=$(grep -c "^\[ABIERTO\]" PENDIENTES.md || true)
echo "Pendientes abiertos en PENDIENTES.md: $LINEAS_ABIERTO_FINAL"
echo "OK COHERENTE"
