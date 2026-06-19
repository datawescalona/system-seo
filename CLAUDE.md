# INSTRUCCIONES PARA CLAUDE CODE — REPO system-seo

Cuando yo te diga "construye el arnés del Módulo XX" (o algo similar),
haz TODO esto solo, sin pedirme pasos intermedios:

1. Lee los archivos reales de harnesses/modulo_XX_nombre/archivos/.
   Si un PDF está como imagen y no se puede leer, sáltalo y anótalo como
   limitación en el arnés. Nunca inventes el contenido de los archivos.

2. Construye el ARNES.md desde ese contenido real, usando la plantilla
   v1.3 de la Sección 5 de HARNESS_SDD_BLUEPRINT.md. Debe incluir:
   cabecera "# Versión: 1.3", IDENTIDAD con blindaje anti-jailbreak,
   PASO 0 de verificación de fuente, lista real de archivos, habilidad
   principal real, loop con MODO GUÍA y cierre flexible.

3. Guárdalo en harnesses/modulo_XX_nombre/ARNES.md

4. Actualiza CONTROL.md: marca ese módulo como creado, sube el número de
   sesión, actualiza el conteo de arneses, y pon como próxima tarea el
   siguiente módulo pendiente.

5. Haz commit y push a origin/main.

6. Dime en lenguaje simple qué hiciste y dame git log --oneline -1.

CONTROL.md es la fuente de verdad del avance. No me pidas que repita
contexto que ya está en el repo. Háblame en lenguaje simple, no soy técnico.
