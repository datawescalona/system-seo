# AUDITORÍA — ARNÉS MÓDULO 69: HTACCESS Y SERVIDORES PARA SEO
# Versión del arnés auditado: 2.7 | Fecha: 2026-10-31
# Este archivo NO se carga como conocimiento del agente. Sirve para que el humano verifique el arnés contra la fuente.

---

## 1. Clasificación (PASO 0 del constructor)
- Categoría: HACER-de-pasos con parte conceptual (SABER) al inicio. Entregable: esqueleto de configuración comentado (Apache o Nginx).
- Fuente: 6 archivos .txt (transcripciones de voz) + 2 PDF. Los 2 PDF se pudieron leer: `01.HTAccess.pdf` (19 páginas, diapositivas) y `00.Ejercicio.pdf` (1 página).
- COMPUERTA DE RIQUEZA DE FUENTE: la fuente tiene criterio real (advertencias, orden de reglas, qué NO recomienda, cuándo cambiar de servidor), pero es POBRE en un punto crítico: no incluye el texto literal de ningún archivo de configuración. Declarado: el arnés entrega lógica y estructura, no líneas de código inventadas (ver HALLAZGO 17).
- Calidad de la fuente: son transcripciones automáticas con errores de reconocimiento de voz. Equivalencias usadas al leer (todas deducibles del contexto, ninguna inventada): "Jinx / en Jinx / inje" = Nginx; "HT-AXIS / htacces / ht acces" = el archivo de configuración de Apache (.htaccess); "redirec match" = la directiva de redirección con expresiones regulares; "mode de flay" = módulo de compresión (deflate); "espires" = módulo de caducidad (expires); "robot techiste / robot text" = archivo de robots; "skimifrog / skriming froh" = Screaming Frog (rastreador); "six tricks" = Sistrix; "gc" = gzip.

## 2. Secuencia real del método (reconstruida, FASE 1)
1. Entender qué es un servidor y cómo viaja una petición (02).
2. Saber para qué sirve al SEO y qué diferencia hay entre Apache y Nginx (03).
3. Identificar qué servidor se tiene y montar un entorno de prueba (04).
4. Aplicar en Apache: redirecciones, encabezado de robots, compresión y caché, contraseña, user agents, IP (05).
5. Aplicar en Nginx: redirecciones, compresión, contraseña, user agents, IP (06).
6. Ejercicio: redirecciones tras quitar un directorio, entregando el archivo de configuración (00.Ejercicio.pdf).
Primer entregable que el usuario necesita: saber qué servidor tiene (por eso el Bloque 1 del arnés). Paso del humano con herramienta externa: identificar el servidor, probar en un entorno de prueba y rastrear. Paso del agente: planificar la configuración.

## 3. Inventario en bruto y destino de cada elemento
Formato: [ID] elemento — ancla [fuente: archivo — "cita corta localizable"] → destino en el arnés.

### Archivo 02 (qué es un servidor web)
- [A1] Definición de servidor web — [02 — "Básicamente será el programa que procesa una aplicación del lado de servidor realizando todo tipo de conexiones con el cliente"] → CONCEPTOS.
- [A2] Tipos de hosting (compartido, VPS, nube) — [02 — "si es un hosting compartido, si es un vps, si es un cloud"] → CONCEPTOS (solo nombrados; el material dice que no profundiza).
- [A3] Distinguir HTTP de HTML — [02 — "puede haber cierta confusión cuando se diga un encabezado HTML o un encabezado HTTP"] → CONCEPTOS.
- [A4] Otras peticiones (HEAD, PUT, DELETE, CONNECT, TRACE) — [02 — "ciertas peticiones como g, put, delete, connect o trace"] → CONCEPTOS (solo nombradas).
- [A5] Socket — [02 — "es básicamente cuando dos procesos pueden intercambiar datos"] → CONCEPTOS.
- [A6] DNS asigna la IP — [02 — "por el registro de DNS este dominio tiene asignada un IP"] → CONCEPTOS.
- [A7] Ping para ver la conexión (unos cuatro paquetes) — [02 — "utilizamos una consola y pues la hacemos ping"] → CONCEPTOS.
- [A8] Caché del navegador — [02 — "se crea una entrada de cache"] → CONCEPTOS.
- [A9] Más peso, más lenta la página — [02 — "cuanto más pesado es un archivo"] → CONCEPTOS.
- [A10] La caché conserva el recurso viejo hasta que se renueva — [02 — "hasta que no se renueva"] → CONCEPTOS y Apache, caché del navegador.
- [A11] Lenguajes del servidor acaban en HTML — [02 — "PHP, Java, Python"] → CONCEPTOS.
- [A12] POST es más seguro, cifrado — [02 — "es mucho más seguro está cifrado"] → CONCEPTOS.
- [A13] Métrica de interacción en velocidad — [02 — "cuánto tardó la interacción en hacerse"] → CONCEPTOS.
- DESCARTADO: ejemplo con google.com y su IP concreta, la anécdota personal del autor sobre cómo aprendió esto, y la mención de axios/fetch/ajax (se explican en otro módulo): no aportan al método SEO.

### Archivo 03 (servidor y SEO, Apache frente a Nginx)
- [B1] Redirecciones 301, 302 y códigos de error — [03 — "redirecciones tanto 301 como 302 como distintos códigos de error"] → Bloque 2 y Apache/Redirecciones.
- [B2] Metaetiqueta a un PDF vía encabezado — [03 — "meterle una metatiqueta a un PDF"] → Apache, encabezado de robots.
- [B3] Mejorar velocidad (WPO) — [03 — "performance o una mejora del VPO"] → Apache y Nginx, velocidad. (Nota: la transcripción dice "performance o una mejora del VPO"; se leyó como WPO por el contexto de las diapositivas, que dicen "WPO".)
- [B4] El archivo de robots no impide el acceso — [03 — "No se lo impides al usuario"] → Apache, user agents.
- [B5] Los robots no están obligados a seguirlo — [03 — "no están obligados a seguirlo"] → Apache, user agents.
- [B6] Ataque de denegación de servicio — [03 — "ataque de negación de servicio"] → Apache, bloquear por IP.
- [B7] Un servidor caído afecta el SEO — [03 — "Google sigue rastreando tu página web y siempre está sin funcionar"] → Apache, bloquear por IP.
- [B8] Un CDN ayuda contra ataques — [03 — "un CDN te puede ayudar a impedir que recibas un ataque"] → Apache, bloquear por IP.
- [B9] Versión de HTTP: 1.1, 2 y 3; recomienda la 2 — [03 — "lo que recomiendo hoy por hoy es la versión 2 porque es la más estable"] → Bloque 2.
- [B10] La versión 3 aún inestable — [03 — "un poquito inestable"] → Bloque 2.
- [B11] La versión de HTTP se cambia desde el panel — [03 — "deberíamos ver la acción del C panel o del press como cambiar esa configuración"] → Bloque 2.
- [B12] Los servidores mayoritarios son Apache y Nginx — [03 — "Apache o en Jinx porque realmente son los mayoritarios"] → CONCEPTOS.
- [B13] Servidores de Microsoft también existen — [03 — "existen también ciertos servidores de Microsoft"] → CONCEPTOS.
- [B14] Linux sin licencia — [03 — "no hay que pagar licencia"] → CONCEPTOS.
- [B15] No cambiar de servidor salvo problemas de carga — [03 — "a no ser que tengáis problemas de carga"] → CONCEPTOS.
- [B16] Cambiar no obliga a cambiar direcciones — [03 — "no tienes que cambiar ni a urreles"] → CONCEPTOS.
- [B17] Nginx más rápido (abre solo lo necesario) — [03 — "solo abre los procedimientos justos y necesarios para cada petición"] → CONCEPTOS.
- [B18] Apache más fácil para SEO por el archivo de configuración por carpeta — [03 — "se puede hacer con el archivo htacces"] → CONCEPTOS.
- [B19] Nginx más escalable; 200 personas frente a 100.000 de golpe — [03 — "200 personas diariamente"] y [03 — "100.000 personas de golpe"] → CONCEPTOS.
- [B20] Las configuraciones de uno no valen en el otro — [03 — "las configuraciones de Apache no valen en Jinx y las configuraciones de Jinx no valen en Apache"] → Bloque 1 (regla clave).

### Archivo 04 (entorno de prueba)
- [C1] Virtualizar un servidor propio — [04 — "vamos a aprender a virtualizar un servidor"] → ENTORNO DE PRUEBA.
- [C2] Saber cuál de los dos se usa — [04 — "cuál de estos dos software estáis utilizando"] → Bloque 1.
- [C3] Sirve cualquier web o tecnología — [04 — "cualquier tipo de web con cualquier tipo de tecnología"] → ENTORNO DE PRUEBA.
- [C4] Editor de texto — [04 — "descargaros algún tipo de editor de texto"] → ENTORNO DE PRUEBA (sin nombrar el editor concreto).
- DESCARTADO: los pasos de instalación del entorno de virtualización y de creación del sitio de prueba (nombre de usuario, correo, páginas de ejemplo): son específicos de una herramienta que el material no nombra con claridad en la transcripción. Se declara como MODO GUÍA en el arnés.

### Archivo 05 (Apache)
- [D1] Editar el archivo por carpeta, no los generales — [05 — "lo mejor es no tocar ni editar los archivos de configuración"] → Apache, dónde se configura.
- [D2] El gestor de contenidos lo genera — [05 — "lo crea y lo genera a WordPress por defecto"] → Apache, dónde se configura.
- [D3] Se puede descargar por FTP — [05 — "descargarlo por FTP"] → Apache, dónde se configura.
- [D4] Redirección con expresiones regulares y 301 — [05 — "hacer un redirec match 301"] → Redirecciones 1.
- [D5] Con 302 es 302 — [05 — "si ponéis un 302 estaréis haciendo una redirección 302"] → Redirecciones 1.
- [D6] Redirección simple no admite expresiones regulares — [05 — "Redirec match permite la inserción de rey x mientras que redirec no"] → Redirecciones 1.
- [D7] Recomienda la de expresiones regulares — [05 — "yo recomiendo siempre redirec match"] → Redirecciones 1.
- [D8] Redirección de servidor antes que plugins — [05 — "estas redirecciones van antes que toda la redirección es que se hagan por plugins"] → Apache, dónde se configura.
- [D9] Redirección con otra redirección — [05 — "haríamos una redirección con otra redirección"] → Redirecciones 2.
- [D10] Comentar una línea la desactiva — [05 — "si se queda comentado esto no funcionará"] → Redirecciones 2.
- [D11] Limpiar el navegador — [05 — "hacer una limpieza integral de esta página dentro de mi navegador"] → Redirecciones 7.
- [D12] Recargar con fuerza no basta — [05 — "aunque le da control f5 me seguirá sin funcionar"] → Redirecciones 7.
- [D13] Desactivar la caché al probar — [05 — "inhabilites a caché"] → Redirecciones 7.
- [D14] Un directorio redirige también los 404 — [05 — "aunque sea un 404 no lo vamos a ver a página de ejemplo"] → Redirecciones 3.
- [D15] Redirección de dominio antes del bloque del gestor de contenidos — [05 — "la pongáis delante de condicionamiento de workpress"] → Redirecciones 4.
- [D16] No hacerla radical si cambió la arquitectura — [05 — "no hacerla totalmente radical a no ser que se mantenga exactamente la misma arquitectura"] → Redirecciones 4.
- [D17] Dominio antiguo con y sin www — [05 — "con vdb y sin vdb"] → Redirecciones 4.
- [D18] No-www a www — [05 — "una redirección de ww a no www"] → Redirecciones 5.
- [D19] Redirigir dominio al mismo dominio rompe — [05 — "una redirección de redirecciones y daría un error"] → Redirecciones 5.
- [D20] http a https mejor por el servidor o panel — [05 — "directamente por la configuración del servidor antes de hacerlo por media de http acceses"] → Redirecciones 6.
- [D21] Encabezado no index no follow en PDF — [05 — "no index no follow"] → Encabezado de robots.
- [D22] Comprobar con encabezados HTTP en el rastreador — [05 — "extraer los encabezados de http"] → Encabezado de robots.
- [D23] Alcance por carpeta — [05 — "solo funcionará con los pdf que estén dentro de esa carpeta"] → Encabezado de robots.
- [D24] jpg o jpeg con interrogación — [05 — "jpeg o jpg"] → Encabezado de robots.
- [D25] Compresión con módulo de compresión — [05 — "mode de flay"] y [05 — "compresión gzip"] → Velocidad.
- [D26] El gzip debe estar activado — [05 — "se tiene que tener el gzip activado"] → Velocidad.
- [D27] Ejemplo 202 KB a 36 KB — [05 — "eran doscientos e dos kilobytes y pasa 36 kilobytes"] → Velocidad (etiquetado como ejemplo del material).
- [D28] Módulos habilitados por defecto, no siempre — [05 — "suelen estar habilitados por defectos"] → Velocidad.
- [D29] No pegar el bloque tal cual; buscar el tipo MIME — [05 — "no recomiendo que pongáis directamente este"] → Velocidad.
- [D30] Ejemplo mp4 — [05 — "un cache para vídeos de mp4"] → Velocidad.
- [D31] Un mes — [05 — "normalmente por un mes suele estar bastante bien"] → Velocidad.
- [D32] Un año posible, discutible — [05 — "guarda durante un año"] → Velocidad.
- [D33] Un día para un archivo concreto — [05 — "tendría un día"] → Velocidad.
- [D34] Contraseña — [05 — "se necesite un usuario y una contraseña"] → Contraseña.
- [D35] Guardar el archivo de claves fuera de la carpeta pública — [05 — "se recomienda por seguridad ponerlo en otro archivo en otro en otro directorio"] → Contraseña.
- [D36] Ponerlo arriba — [05 — "ponerlo por arriba"] → Contraseña.
- [D37] Ruta completa — [05 — "tendríamos que coger la ruta entera"] → Contraseña.
- [D38] Error 500 si la ruta falla — [05 — "nos podrá dar un error 500"] → Contraseña y RIESGOS.
- [D39] Contraseña evita la indexación al 100 % — [05 — "evitará la indexación 100%"] → Contraseña.
- [D40] Carpeta concreta — [05 — "bloquear todos los archivos que están en esa carpeta"] → Contraseña.
- [D41] Bloqueo de user agent probado cambiando el user agent — [05 — "cambiamos la configuración del user agent"] → User agents.
- [D42] Ejemplo: bloquear al robot de Google — [05 — "vamos a evitar que entre uno que conocemos todos que es google bot"] → User agents (con advertencia).
- [D43] Bloqueo drástico — [05 — "es una forma bastante drástica"] → User agents.
- [D44] Bloquear por IP — [05 — "bloquear por ip"] → Bloquear por IP.
- [D45] Ataque de denegación de servicio — [05 — "ataque de dos"] → Bloquear por IP.
- DESCARTADO: el ejemplo concreto de dominio ficticio usado en la práctica, el cambio entre navegadores y los atajos de teclado (detalles de la demostración), y el aviso de que las herramientas de analítica pueden confundirse con un ataque (detalle de la demostración).

### Archivo 06 (Nginx)
- [E1] Nginx no usa el archivo por carpeta — [06 — "no necesitan un archivo de configuración que pueda tocar cualquiera"] → Bloque 1 y Nginx.
- [E2] Reiniciar tras cada cambio — [06 — "tenemos que reiniciar el servidor cuando hagamos estas redirecciones"] y [06 — "hay que reiniciar en jinx cada vez que se haga una redirección"] → Nginx.
- [E3] Regla de ubicación con coincidencia exacta — [06 — "un location un igual"] → Nginx, redirecciones.
- [E4] Falta el puerto / usar el host — [06 — "nos está faltando el puerto"] → Nginx y ENTORNO DE PRUEBA.
- [E5] Debate return o rewrite — [06 — "hay debate entre poner return or write"] → Nginx, redirecciones.
- [E6] Compresión gzip en Nginx — [06 — "una codificación gc"] → Nginx.
- [E7] El generador de contraseñas es de Apache — [06 — "pone que es una herramienta de apache"] → Nginx, contraseña.
- [E8] Reglas dentro del bloque servidor dentro del bloque HTTP — [06 — "todos estos location tiene que estar dentro de server que server a su vez está dentro de htp"] → Nginx.
- [E9] User agent devuelve 403 — [06 — "me redurnas un error 403"] → Nginx, user agents.
- [E10] Comodín — [06 — "con el asterisco"] → Nginx, user agents.
- [E11] Bloqueo real frente a la recomendación del archivo de robots — [06 — "es imposible que puedan entrar a diferencia del robot techiste que es una recomendación"] → User agents (Apache y Nginx).
- [E12] Bloquear todas las IP menos la propia — [06 — "bloquear todas las ip menos la nuestra"] → Nginx, IP.
- [E13] Punto y coma — [06 — "ponerle siempre un ticoma"] → Nginx, IP.
- [E14] Más formas de redirección en Nginx — [06 — "es muchísimo mayor"] → Nginx.
- [E15] El material deja archivos de ejemplo de Apache y Nginx — [06 — "os dejo los archivos de ht de acces y el archivo de inje de acces"] → PASO 0 punto 3 y HALLAZGO 17 (esos archivos NO están en la carpeta).
- [E16] Se complementa con expresiones regulares — [06 — "se complementa muy pero que muy bien con regex"] → RESTRICCIONES (derivar).
- [E17] Puerto 8080 en la prueba — [06 — "sin el puerto 8080"] → ENTORNO DE PRUEBA.

### PDF
- [P1] Diapositiva de diferenciar HTTP de HTML — [01.HTAccess.pdf — "DIFERENCIAR HTTP DE HTML"] → CONCEPTOS.
- [P2] Lista de usos SEO del servidor — [01.HTAccess.pdf — "Versión HTTP?"] → Bloque 2.
- [P3] Tipos de redirección en Apache: página, directorio, dominio, sin www a www — [01.HTAccess.pdf — "Redireccionar una página."] y [01.HTAccess.pdf — "No-www a WWW."] → Redirecciones.
- [P4] Más peticiones: HEAD, PUT, DELETE, CONNECT, TRACE — [01.HTAccess.pdf — "Existen más peticiones como HEAD, PUT, DELETE, CONNECT o TRACE"] → CONCEPTOS.
- [P5] Ejercicio: directorio de entradas que se quita — [00.Ejercicio.pdf — "quitar el directorio category"] → EJERCICIO DEL MÓDULO.
- [P6] Ejercicio: servidor a elección — [00.Ejercicio.pdf — "Apache o Nginx"] → EJERCICIO DEL MÓDULO.

## 4. Mapa de cobertura de NÚMEROS Y LÍMITES (revisar uno por uno)
- 301 y 302 (códigos de redirección) → incluidos (Apache, redirecciones 1; Bloque 2).
- 403 (prohibido, user agent en Nginx) → incluido (Nginx, user agents).
- 404 (direcciones que no existen) → incluido (redirecciones 3; Compuerta 2).
- 500 (error por ruta incorrecta) → incluido (Contraseña; RIESGOS).
- 1.1, 2 y 3 (versiones de HTTP) → incluidos (Bloque 2).
- 202 KB y 36 KB (ejemplo de compresión) → incluidos, etiquetados como ejemplo del material (Velocidad).
- Un mes, un año, un día (caché) → incluidos (Velocidad).
- 200 personas al día y 100.000 de golpe → incluidos (CONCEPTOS).
- 100 % (la contraseña evita la indexación) → incluido (Contraseña).
- Puerto 8080 → incluido (ENTORNO DE PRUEBA).
- Unos cuatro paquetes del ping → incluido (CONCEPTOS).
- 19 páginas del PDF de diapositivas y 1 del ejercicio → descartados (dato de la fuente, no del método).
- Números de la demostración (usuario y contraseña de ejemplo, dirección IP de ejemplo, nombres de páginas de ejemplo) → descartados: son datos de la demostración y no del método; además la contraseña de ejemplo no debe circular.
Ningún número del inventario quedó sin destino.

## 5. Decisiones mías (no del material) — el humano debe confirmarlas
1. Orden de las secciones del esqueleto de configuración (solo la regla de dominio y protocolo antes del gestor de contenidos viene del material).
2. La recomendación de guardar una copia del archivo original antes de editar (está marcada en el arnés como "recomendación mía").
3. La estructura en 5 bloques y las 3 compuertas (diseño del arnés según el constructor).
4. Clasificar el módulo como HACER-de-pasos con parte conceptual (podría considerarse SABER; el humano decide).
5. Leer "VPO" como WPO (ver [B3]) y las equivalencias de la transcripción de la sección 1.
6. La decisión de NO escribir sintaxis de código (ver HALLAZGO 17).

## 6. COMPUERTA A — cruce obligatorio del humano contra la fuente
Pasos de mayor riesgo (cruzar TODOS): [D15] orden de la regla de dominio, [D16] no redirigir de forma radical, [D20] https mejor desde el servidor, [D38] error 500, [D39] contraseña al 100 %, [D42] bloquear al robot de Google solo como demostración, [E2] reiniciar Nginx, [E11] bloqueo real frente a recomendación. Más 2 o 3 al azar del resto (sugeridos: [D27], [D31], [B19]).
Estado: PENDIENTE. Este cruce lo hace el humano; no se da por hecho.

## 7. COMPUERTA B — batería en sesión limpia y autosuficiencia
Estado: PENDIENTE (no se ha corrido). Hay que ejecutar en una sesión limpia, con el arnés SOLO y la fuente archivada: (a) pruebas funcionales: redirección de página, de directorio con la carpeta incluida, de dominio con arquitectura distinta (el arnés debe recomendar página a página), bloqueo de user agent pidiendo bloquear al buscador; (b) casos límite deliberados: Nginx sin reinicio, ruta incorrecta del archivo de contraseñas, pedir código literal sin archivos de ejemplo (el arnés debe usar MODO GUÍA), pedir mezclar Apache y Nginx; (c) pruebas adversariales (jailbreak, presión social) en OTRO modelo o por un humano. Hasta que se reporten, el arnés NO está "probado".
