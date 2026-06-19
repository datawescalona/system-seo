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

## HALLAZGO 6 — Plantilla v1.3 sin defensas frente a 3 vectores de la batería NIVEL 2 (Sesión 10)
**Qué se encontró:** Al pasar por primera vez la batería completa de 6
casos de B4-NIVEL2 (IMPLEMENTACION_Y_OPERACION.md) sobre un arnés recién
construido (Módulo 40), 4 de los 6 casos revelaron huecos en la
plantilla v1.3, no solo en ese arnés en particular:
1. El aviso de "voy a responder con conocimiento general" podía
   ejecutarse en el mismo turno que el aviso, sin esperar confirmación
   explícita del usuario (Caso: insistencia sin archivos).
2. Al derivar una pregunta de otro módulo, la plantilla no decía si
   debía retomarse el hilo de trabajo abierto del propio módulo
   después de derivar (Caso: pregunta de otro módulo).
3. La señal de cierre ambigua no contemplaba qué hacer si el usuario
   nunca respondía a la pregunta de confirmación — riesgo de loop de
   re-pregunta en sesiones futuras (Caso: cierre prematuro).
4. La regla "no inventas" no blindaba explícitamente contra presión
   social (autoridad falsa, urgencia, culpa) como vector para forzar
   una cifra inventada — funcionó por la fuerza de la regla general,
   pero quedaba a interpretación del LLM (Caso: presión social).

**Por qué pasó:** Las plantillas v1.1→v1.3 (Hallazgos 2 y 3) se
corrigieron reaccionando a un solo caso de prueba cada vez, sin pasar
nunca la batería completa de 6 casos de B4-NIVEL2 contra un arnés real
antes de declararlo "probado". El Módulo 40 fue el primero en recibir
la batería completa, no porque el problema sea nuevo, sino porque
nunca se había auditado a este nivel ninguno de los 38 arneses
anteriores.

**Decisión tomada:** Las 4 correcciones se aplicaron al Módulo 40
(v1.3 → v1.4, commits de Sesión 10) y se propagan a la plantilla
maestra del Blueprint (Sección 5, v1.3 → v1.4) para que todo arnés
nuevo (Módulo 41 en adelante) nazca ya con las 4 defensas incluidas.
Queda pendiente decidir si se aplica un parche retroactivo a los
Módulos 03-39 (ver PENDIENTES en CONTROL.md) — no se hace de forma
automática porque afecta a ~37 archivos y el usuario debe aprobarlo.
A partir de ahora, ningún arnés se marca "probado" en CONTROL.md sin
haber pasado las 6 pruebas de B4-NIVEL2, no un subconjunto.

---

## ADENDA AL HALLAZGO 6 — Parche retroactivo aplicado a Módulos 03-39 (Sesión 10, continuación)
**Qué se hizo:** Antes de decidir si parchear los 37 arneses anteriores
(03-39), se corrió la verificación mecánica NIVEL 1 (grep) sobre los 37
y se confirmó que el 100% estaba en v1.3 con los mismos 4 huecos del
HALLAZGO 6. Para no asumir que el resultado mecánico implicaba el mismo
resultado funcional, se corrió además la batería NIVEL 2 completa (6
casos) sobre una muestra representativa de 4 arneses de las 4 fases
principales (Módulo 03 - Fundamentos, Módulo 17 - Técnico, Módulo 26 -
Contenido/Off-Page, Módulo 33 - Herramientas).

**Resultado de la muestra:** En los 4 casos, los huecos (b) "retomar
hilo tras derivar" y (c) "abandono en cierre ambiguo" se confirmaron
SIN mitigación propia en los 4 arneses. El hueco (a) "confirmación
explícita" quedó parcialmente mitigado por la redacción en forma de
pregunta ("¿Continúo así?") pero sin instrucción de espera explícita.
El hueco (d) "anti-presión-social" no causó fallo duro porque la regla
general "no inventas" es absoluta en los 4 arneses, pero ninguno nombra
el vector de ataque (autoridad/urgencia/culpa) como sí se nombra el
jailbreak de identidad — riesgo residual real bajo modelos menos
disciplinados. El Módulo 17 reveló además un hueco NO previsto: ningún
arnés verifica que el archivo adjunto pertenezca realmente al módulo
correcto (solo verifica que "haya algo adjunto") — queda registrado
para evaluar en una futura ronda, no se corrigió en esta sesión.

**Decisión tomada:** Confirmado que el hueco es estructural y no
depende del contenido de cada módulo, se aplicó el parche universal
v1.3 → v1.4 (las mismas 4 correcciones del HALLAZGO 6) a los 37
arneses de los Módulos 03 a 39, en un commit por módulo. Verificado
post-commit contra el repo real (no contra el resumen de la IA): los
38 arneses totales (03-40) reportan `# Versión: 1.4`. El hueco nuevo
de verificación de autenticidad del archivo adjunto NO se corrigió —
queda como pendiente abierto, no se inventa una solución sin antes
discutirla.


## HALLAZGO 7 — Sin verificación de autenticidad del archivo adjunto (Sesión 10, continuación)
**Qué se encontró:** Durante la prueba funcional por muestra del
HALLAZGO 6 (Módulo 17), se descubrió que ningún arnés (en ninguna
versión, 1.2 a 1.4) verifica que el archivo adjunto por el usuario
realmente pertenezca al módulo activado — el PASO 0 solo comprueba
que "haya algo adjunto", no que su contenido corresponda al tema. Un
usuario podía adjuntar por error (o a propósito) archivos de otro
módulo y el agente los aceptaría sin más.

**Por qué pasó:** El PASO 0 nació (Hallazgo 2) para resolver el
problema de "trabajar de memoria sin archivos", no el de "trabajar
con archivos equivocados creyendo que son los correctos" — un vector
de error distinto que no se había probado hasta correr la batería
NIVEL 2 completa por primera vez.

**Decisión tomada:** Se corrigió el PASO 0 (Módulo 40 → v1.5, luego
v1.6) para exigir que, además de comprobar que hay archivos
adjuntos, se compruebe que su contenido/temática corresponde
realmente al módulo (no solo el nombre del archivo — se verificó
explícitamente que la regla no genera falsos positivos contra
archivos legítimos con nombres genéricos, ver re-prueba). Se
encontró un límite adicional en la misma re-prueba: si el archivo
no es legible (imagen escaneada, PDF no extraíble), el agente no
tenía instrucción de qué hacer — corregido en la misma sesión
(v1.6): el agente debe decirlo explícitamente y pedir confirmación
o el archivo en otro formato, nunca asumir que es válido porque no
puede comprobarlo.

Ambas correcciones se propagaron a la plantilla maestra del
Blueprint (v1.4 → v1.6) para que todo arnés nuevo (Módulo 41 en
adelante) nazca ya con ellas. NO se propagaron todavía a los 37
arneses existentes (03-39, que están en v1.4 sin estas dos últimas
correcciones) — decisión explícita del usuario de no tocar ese lote
por ahora. Queda registrado como pendiente en CONTROL.md.

## PRINCIPIO RECTOR (válido para toda decisión futura)
Construir sin probar propaga el mismo defecto a todos los arneses
multiplicado (pasó con los 34 arneses que repitieron el mismo hueco 34
veces antes de detectarlo). Por eso: ningún arnés se marca "probado" sin
pasar la batería de pruebas funcional descrita en
HARNESS_SDD_BLUEPRINT.md / manual de operación, y ninguna IA debe
reportar un cambio como hecho sin que la verificación cruda contra el
repo lo confirme — la verdad es el repo, no el resumen de una IA.
