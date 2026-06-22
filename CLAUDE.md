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
5. Lee PENDIENTES.md y listame en lenguaje simple TODOS los pendientes
   marcados "[ABIERTO]", con este formato:
   "Ahora mismo tienes abierto:
    1) ...
    2) ...
    ..."
   ESTA LECTURA NO SE PUEDE SALTAR. Si la IA no leyó PENDIENTES.md y no
   listó los pendientes abiertos, no puede proponer ningún trabajo nuevo.
Solo después de los pasos 1-5 puedes decirme en qué módulo estoy y
proponer el siguiente paso (leyendo CONTROL.md).

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

## PROTOCOLO DE SUBIDA DE CRUDOS Y CONSTRUCCIÓN

Para trabajar un módulo, la dinámica es esta y NO se salta:

1. El usuario dice qué módulo quiere trabajar.
2. Claude Code verifica si harnesses/modulo_XX_nombre/archivos/ existe; si no,
   prepara solo esa carpeta (sin subcarpetas).
3. Claude Code avisa: "Carpeta del Módulo XX lista. Sube ahí los crudos y
   avísame cuando estén."
4. El usuario sube los crudos a archivos/.
5. El usuario avisa que ya subió.
6. SOLO ENTONCES Claude Code construye el arnés con el Constructor v2.7 vigente,
   leyendo solo esos crudos, SIN PISTAS (prohibido mirar el ARNES.md viejo del
   módulo ni el de otro módulo).
7. Se prueba el arnés con un caso real y se hace oficial (reemplaza el viejo).

NOTA CRÍTICA: la reorganización de carpetas (subcarpetas tipo 1_CARGAR_SIEMPRE,
mover a plantillas/ o conocimiento/, crear MATRIZ, índice con formato) NO se hace
durante la subida ni durante la construcción. Es una tarea ÚNICA y FINAL, solo
cuando el usuario confirme que terminó de subir TODOS los crudos y reconstruir
TODOS los arneses. Mientras tanto, las carpetas se dejan planas como estén — el
constructor funciona igual.

---

## REGLA DURA — REGISTRO OBLIGATORIO DE ERRORES Y HUECOS
Cuando una sesión ENCUENTRE un fallo, hueco o defecto (del sistema, del
arnés o propio), ANTES de cerrar la tarea debes hacer DOS COSAS:
(a) Anotarlo en AUDITORIA.md como hallazgo nuevo: añade al FINAL
    (orden cronológico, nunca reescribas lo anterior) con:
    — qué se encontró
    — por qué pasó o por qué importa
    — qué decisión se tomó (o que queda pendiente)
(b) Agregarlo como línea "[ABIERTO]" en PENDIENTES.md y actualizar el
    contador "PENDIENTES ABIERTOS: N" de la cabecera.
Una tarea que encontró un fallo y NO lo registró en AMBOS sitios NO se
considera cerrada, aunque el commit ya esté hecho.
Cuando se RESUELVE un pendiente ya listado: cambia su línea de "[ABIERTO]"
a "[RESUELTO YYYY-MM-DD]" y actualiza el contador en PENDIENTES.md.

---

## REGLA DURA — NOMBRES DE MÓDULOS DE LA TABLA OFICIAL
Antes de crear la carpeta de CUALQUIER módulo nuevo, DEBES:
1. Leer la tabla de módulos en la Sección 8 de HARNESS_SDD_BLUEPRINT.md.
2. Copiar el nombre EXACTO del módulo tal como aparece en esa tabla.
3. Construir el nombre de carpeta así: modulo_NN_<nombre normalizado>
   (minúsculas, espacios→guiones bajos, sin paréntesis, sin caracteres especiales).
NUNCA inventes el nombre del módulo. NUNCA uses el nombre de un módulo diferente.
Si no leíste la tabla antes de crear la carpeta, el nombre puede estar mal.
check_coherencia.sh verificará que las carpetas de preparación (sin ARNES.md)
tengan el nombre correcto — fallará si no coincide con la tabla.

---

## PREPARAR EL SIGUIENTE MÓDULO
Cuando termines de construir el arnés de un módulo, prepara
automáticamente la carpeta del siguiente módulo pendiente:
1. Lee la Sección 8 de HARNESS_SDD_BLUEPRINT.md para obtener el nombre oficial.
2. Crea harnesses/modulo_XX_<nombre_oficial>/archivos/.gitkeep.
3. Haz commit y push.
4. Avísame en lenguaje simple: "Carpeta del Módulo XX lista. Sube ahí
   los archivos del módulo y avísame cuando estén para construir el arnés."
No construyas el arnés de ese módulo hasta que yo confirme que ya subí
los archivos.
