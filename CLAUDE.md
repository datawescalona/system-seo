# INSTRUCCIONES PARA CLAUDE CODE — REPO system-seo

## ARRANQUE BLINDADO — obligatorio al empezar CUALQUIER sesión en esta carpeta
Antes de decir nada sobre en qué módulo va el sistema, haz esto sin preguntar:
1. `git fetch origin && git reset --hard origin/main` — parte siempre del
   repo en vivo de GitHub, nunca de memoria ni de una copia vieja en /tmp
   u otro lado. (Si `git status` muestra cambios sin commitear en esta
   carpeta antes de resetear, avisa primero en vez de descartarlos.)
2. Si falta el hook de coherencia, reinstálalo:
   `cp scripts/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit`
3. Corre `./scripts/check_coherencia.sh` ANTES de decir nada del estado.
4. Si NO dice "OK COHERENTE": párate y avísame del fallo. No digas en qué
   módulo voy, no construyas nada, no sigas.
Solo después de ver "OK COHERENTE" puedes decirme en lenguaje simple en
qué módulo estoy y cuál es la próxima tarea (leyendo CONTROL.md).

---

Cuando yo te diga "construye el arnés del Módulo XX" (o algo similar),
haz TODO esto solo, sin pedirme pasos intermedios:

1. Lee los archivos reales de harnesses/modulo_XX_nombre/archivos/.
   Si un PDF está como imagen y no se puede leer, sáltalo y anótalo como
   limitación en el arnés. Nunca inventes el contenido de los archivos.

2. Construye el ARNES.md desde ese contenido real, usando la Sección 5
   de HARNESS_SDD_BLUEPRINT.md, pero con la versión de plantilla VIGENTE
   — la que CONTROL.md declara en su línea "Blueprint maestro" — nunca
   un número fijado a mano aquí. La cabecera "# Versión: X.X" del nuevo
   ARNES.md debe llevar ese mismo número vigente. Debe incluir: IDENTIDAD
   con blindaje anti-jailbreak, PASO 0 de verificación de fuente, lista
   real de archivos, habilidad principal real, loop con MODO GUÍA y
   cierre flexible.

3. Guárdalo en harnesses/modulo_XX_nombre/ARNES.md

4. Actualiza CONTROL.md: marca ese módulo como creado, sube el número de
   sesión, actualiza el conteo de arneses, y pon como próxima tarea el
   siguiente módulo pendiente.

5. Haz commit y push a origin/main.

6. Dime en lenguaje simple qué hiciste y dame git log --oneline -1.

CONTROL.md es la fuente de verdad del avance. No me pidas que repita
contexto que ya está en el repo. Háblame en lenguaje simple, no soy técnico.

## PREPARAR EL SIGUIENTE MÓDULO
Cuando termines de construir el arnés de un módulo, prepara
automáticamente la carpeta del siguiente módulo pendiente:
1. Crea harnesses/modulo_XX_nombre/archivos/.gitkeep (la carpeta vacía
   lista para recibir archivos).
2. Haz commit y push.
3. Avísame en lenguaje simple: "Carpeta del Módulo XX lista. Sube ahí
   los archivos del módulo y avísame cuando estén para construir el arnés."
No construyas el arnés de ese módulo hasta que yo confirme que ya subí
los archivos.
