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

if [ "$FALLO" -ne 0 ]; then
  exit 1
fi

echo "OK COHERENTE"
