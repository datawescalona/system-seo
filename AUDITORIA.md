# AUDITORÍA — SISTEMA HARNESS-SDD
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 🧠 QUÉ ES ESTE ARCHIVO
Registro permanente de hallazgos, defectos encontrados y decisiones
tomadas durante la construcción del sistema. CONTROL.md dice QUÉ se
hizo y QUÉ sigue; este archivo dice POR QUÉ se hizo así y qué se
encontró roto en el camino. Si dudas del motivo detrás de un cambio,
busca aquí antes de preguntar al usuario.

⚠️ Este archivo no se reescribe — se añade al final (orden cronológico).
⚠️ La verdad del avance sigue siendo CONTROL.md. Esto es el "por qué",
no el "qué".

---

## HALLAZGO 1 — Memoria desincronizada del repo real (Sesión 5)
**Qué se encontró:** El CONTROL.md decía 2/91 arneses cuando el repo
real (carpetas en /harnesses/) tenía 35/86 construidos. La memoria de
sesiones de IA anteriores no coincidía con el estado real de GitHub.

**Por qué pasó:** Se confió en la memoria conversacional de sesiones
previas en lugar de leer el repo directamente antes de actuar.

**Decisión tomada:** La fuente de verdad del avance es SIEMPRE la
lista real de carpetas en /harnesses/ de GitHub, nunca la memoria de
una IA ni un CONTROL.md desactualizado. Si hay duda, se lee el repo y
se corrige el CONTROL.md de inmediato. Esta regla quedó fijada en la
cabecera de CONTROL.md.

---

## HALLAZGO 2 — Plantilla de arnés sin verificación de fuente (Sesión 5-6)
**Qué se encontró:** Los 34 arneses construidos en sesiones 2-4
(Módulos 04-37) no tenían: verificación obligatoria de que los archivos
del módulo estuvieran adjuntos, modo guía para datos externos faltantes,
ni una señal de cierre flexible. Un arnés podía "trabajar de memoria"
sin archivos reales y el usuario no se enteraba.

**Por qué pasó:** La plantilla original (v1.0/v1.1) no contemplaba
estos controles; se añadieron recién en el Módulo 03 como prueba de
concepto y no se propagaron de inmediato al resto.

**Decisión tomada:** Parche universal v1.1 → v1.2 aplicado a los 34
arneses (commit d47ff3c): PASO 0 de verificación de fuente obligatoria,
MODO GUÍA cuando falta un dato externo (nunca se inventa), y señal de
cierre flexible. Verificado con `grep -L "PASO 0"` antes de subir.

---

## HALLAZGO 3 — Sin blindaje contra instrucciones que suplantan al agente (Sesión 7)
**Qué se encontró:** Ningún arnés tenía una defensa explícita contra
instrucciones del usuario (o de un tercero pegando texto) que intentaran
hacer que el agente "olvide sus instrucciones", actúe como otro agente,
o se salte el PASO 0 de verificación de fuente.

**Por qué importa:** Un arnés es un agente especializado que debe
mantenerse dentro de su módulo y respetar su propio PASO 0 incluso
bajo presión social o intentos de jailbreak — si no, deja de ser
confiable como fuente de verdad.

**Decisión tomada:** Blindaje anti-jailbreak añadido al final del
bloque IDENTIDAD de los 35 arneses (Módulos 03-37), versión subida a
1.3 (commit 166ecb4). La plantilla maestra del Blueprint (Sección 5)
también se actualizó a v1.3 para que todo arnés nuevo (Módulo 38 en
adelante) nazca ya con el blindaje incluido.

---

## HALLAZGO 4 — El PLAN_SISTEMA_COMPLETO.md tenía su propia "próxima tarea" (Sesión 8)
**Qué se encontró:** PLAN_SISTEMA_COMPLETO.md declaraba una próxima
tarea propia ("Terminar el Mega Arnés Orquestador") distinta de la que
indicaba CONTROL.md ("Construir el ARNES.md del Módulo 38"). Dos
archivos maestros con dos verdades distintas sobre qué hacer a
continuación.

**Por qué importa:** Si dos archivos compiten por ser la fuente de la
próxima tarea, cualquier IA que lea el repo puede equivocarse de
prioridad según cuál archivo lea primero.

**Decisión tomada:** PLAN_SISTEMA_COMPLETO.md deja de tener una
"próxima tarea" propia. Pasa a ser solo el plano arquitectónico fijo
de los 3 sistemas (no cambia sesión a sesión) y remite explícitamente
a CONTROL.md como única fuente de la próxima tarea.

---

## HALLAZGO 5 — Faltaba un punto de entrada único para retomar sin contexto (Sesión 7-8)
**Qué se encontró:** Para retomar el sistema, el usuario tenía que
saber qué archivo pegar (CONTROL.md, el Blueprint, etc.) y en qué
orden. No había un único archivo que cualquier IA pudiera leer para
auto-ubicarse y guiar al usuario sin que este explicara nada.

**Decisión tomada:** Se creó INICIO.md como punto de entrada único:
lee CONTROL.md, se ubica, saluda en lenguaje simple, espera la
confirmación del usuario y solo entonces actúa. Cualquier sesión nueva
empieza pegando la URL de este archivo.

---

## PRINCIPIO RECTOR (válido para toda decisión futura)
Construir sin probar propaga el mismo defecto a todos los arneses
multiplicado (pasó con los 34 arneses que repitieron el mismo hueco 34
veces antes de detectarlo). Por eso: ningún arnés se marca "probado" sin
pasar la batería de pruebas funcional descrita en
HARNESS_SDD_BLUEPRINT.md / manual de operación, y ninguna IA debe
reportar un cambio como hecho sin que la verificación cruda contra el
repo lo confirme — la verdad es el repo, no el resumen de una IA.
