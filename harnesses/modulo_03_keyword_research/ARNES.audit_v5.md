# ARNES.audit_v5.md — Módulo 03: Keyword Research
# Versión de auditoría con anclas a la fuente cruda
# Para cruce humano obligatorio (Compuerta A del Constructor v2.5)
# ★ = ancla de mayor riesgo — cruzar OBLIGATORIAMENTE
# Resto: cruzar 2-3 al azar

---

## SECUENCIA DEL MÉTODO (declarada en FASE 1 antes de destilar)

| # | Quién | Qué hace |
|---|---|---|
| 1 | AGENTE + HUMANO | Recopilar términos base y variantes en texto |
| 2 | AGENTE | Estructurar variantes en el concatenador → lista de combinaciones |
| 3 | HUMANO en Planificador | Configurar filtros + cargar la lista del concatenador |
| 4 | HUMANO en Planificador | Revisar sugerencias, seleccionar, poner negativos, repetir |
| 5 | HUMANO en Planificador | Descargar CSV con volúmenes mensuales |
| 6 | HUMANO/AGENTE | Limpiar y formatear el Excel de presentación |
| 7 | HUMANO en herramienta de seguimiento | Configurar seguimiento de posicionamiento |

**Primer entregable:** lista de términos base en texto (Paso 1). El Excel es el entregable del Paso 6.

---

## ANCLAS POR PASO

---

### IDENTIDAD / PASO 0

**Ancla 1 — el análisis de palabras clave es el primer paso de cualquier proyecto**
[fuente: 01.Introducción.txt — "Keyword Research fundamental imprescindible, Keyword Research cuando se encara, se arranca un proyecto a nivel de SEO hay que hacer un Keyword Research"]
**Qué hace el arnés:** establece que el agente no ejecuta nada más antes de completar este análisis; es el punto de partida de todo.

**Ancla 2 — diferencia entre cuenta con y sin campaña activa** ★
[fuente: 16.Keyword planner.txt — "esta herramienta se visualiza en los datos de forma diferente si tienes campañas en activo o no [...] si no tienes ninguna campaña en activo te muestra franjas, es decir, esta Keyword tiene de 10 a 100 búsquedas"]
[fuente: 16.Keyword planner.txt — "Ni rangos exactos, ni promedio de búsquedas mínimo, ni estacionalidad del proyecto, esa es la información que perdemos cuando no tenemos una campaña en activo"]
**Qué dice la fuente exactamente:** sin campaña activa: solo franjas, sin filtro por mínimo de búsquedas, sin estacionalidad mensual. Con campaña activa: volúmenes exactos (redondeados) y estacionalidad completa. La fuente propone crear una campaña con 1 € para activar los datos.
**Qué hace el arnés:** lo convierte en declaración obligatoria del Paso 0 y marca los datos de franjas en el entregable.

**Ancla 3 — sectores sensibles sin datos en el Planificador** ★
[fuente: 06.Herramientas.txt — "cuando quieres sacar búsquedas de cosas de las que no se pueden hacer anuncios en Google, no te da respuesta. Y esto os va a pasar con proyectos que tengan que ver con temas de salud muchas veces, con temas de fármacos [...] vapeadores [...] mascarillas"]
[fuente: 06.Herramientas.txt — "temas que aunque sean legales, son sensibles a los ojos de Google, no da volumen de búsquedas [...] sexo [...] pornografía [...] servicios de citas"]
**Qué dice la fuente exactamente:** la restricción no es solo para contenido ilegal — también afecta a temas legales que Google excluye de su plataforma de anuncios por considerarlos sensibles.
**Qué hace el arnés:** verificación obligatoria en el Paso 0; si aplica, el agente pide la herramienta alternativa antes de continuar.

---

### PASO 1 — Términos base

**Ancla 4 — sinónimos y regionalismos: razón de incluir variantes**
[fuente: 07.Concatenador de palabras clave.txt — "hay términos que se buscan de diferente forma, ya sea porque hay sinónimos o por la región en la que nos encontramos [...] en Cataluña se dice bambas. Incluso [...] en Galicia le dicen tenis"]
**Qué hace el arnés:** pide al agente recoger variantes confirmadas (por el cliente, webs del sector, o con volumen en el Planificador), no inventadas por similitud.

**Ancla 5 — caso frontera: palabra clave larga con más volumen que su versión corta** ★
[fuente: 02.Keywords.txt — "vestidos de fiesta tiene 90 mil 500 búsquedas y vestidos tiene 49 mil 500 búsquedas al mes, pero tú Javi no me has contado que el longtail tiene menos volumen"]
[fuente: 02.Keywords.txt — "vestidos de fiesta, realmente por el proceso de compra del usuario, no es un longtail de vestidos [...] el proceso de compra de un vestido es como hay una fiesta, me tengo que comprar un vestido [...] es un longtail de fiesta no de vestidos"]
**Qué dice la fuente exactamente:** la excepción a la lógica de volumen ocurre cuando el motor de la búsqueda es el evento o la ocasión, no el producto. El usuario no parte del producto para llegar al evento; parte del evento para decidir qué producto necesita. Eso invierte la lógica del volumen.
**Qué hace el arnés:** lo documenta como caso frontera en el Paso 1 para que el agente no descarte palabras clave largas por el solo hecho de que "deberían tener menos volumen".

**Ancla 6 — sinónimos que Google puede tratar igual o diferente** ★
[fuente: 02.Keywords.txt — "cada vez más Google entiende las keywords que tienen en la misma intencionalidad de búsqueda y da los mismos resultados, pero no pasa en todos los sectores [...] Hay veces [...] que la gente la llama de dos formas diferentes y Google no da los mismos resultados"]
[fuente: 02.Keywords.txt — "neveras es un sinónimo y neveras tiene que estar en el análisis de palabras clave también"]
**Qué dice la fuente exactamente:** la unificación automática de sinónimos por Google es progresiva y no universal. No puede asumirse.
**Qué hace el arnés:** instrucción en el Paso 4 de verificar en el buscador antes de asumir que Google unifica dos términos.

---

### PASO 2 — Concatenador

**Ancla 7 — propósito del concatenador: cubrir todo el espectro de combinaciones**
[fuente: 07.Concatenador de palabras clave.txt — "nos ayuda a poder valorar todas las combinaciones de golpe y que no nos estemos dejando nada y ahorrándonos tiempo para no tener que hacerlo de forma manual"]
**Qué hace el arnés:** el concatenador no es opcional para proyectos con muchas variantes — es la forma de no dejar ninguna combinación sin evaluar.

**Ancla 8 — generar muchas combinaciones no es un problema**
[fuente: 07.Concatenador de palabras clave.txt — "No me molesta el hecho de generar cientos y cientos y cientos de combinaciones porque el filtrado del volumen me dirá cuáles me quedo y cuáles no"]
**Qué hace el arnés:** el Paso 2 explica por qué generar una lista larga está bien — el Planificador hace el filtrado automáticamente.

---

### PASO 3 — Configurar el Planificador

**Ancla 9 — el filtro "excluir palabras ya en el plan" es el más importante** ★
[fuente: 09.Funciones del Keyword Planner de Google.txt — "Excluir palabras clave del plan, importantísimo, este siempre lo tenéis que seleccionar [...] de todas las bondades que os he dicho del Keyword Planner, es la más importante, este de aquí"]
**Qué dice la fuente exactamente:** sin este filtro, el Planificador sigue sugiriendo palabras que ya añadiste, y el trabajo se vuelve repetitivo y propenso a duplicados.
**Qué hace el arnés:** lo marca como SIEMPRE activo, con la explicación de por qué.

**Ancla 10 — mínimo de búsquedas: criterio para elegir el umbral**
[fuente: 09.Funciones del Keyword Planner de Google.txt — "si estuviese haciendo Keywords para [un comercio electrónico grande], pondría el mínimo de búsquedas en mil [...] En [negocio a negocio], no voy a poner un mínimo porque una Keyword de 10 búsquedas tiene un potencial de negocio brutal porque me puedo traer un cliente que no es que vaya a hacer una compra"]
**Qué hace el arnés:** traduce esto en criterio explícito: 10 para nicho o negocio a negocio; 100–1.000 para sectores de gran consumo.

**Ancla 11 — una región por análisis, no mezclar países**
[fuente: 09.Funciones del Keyword Planner de Google.txt — "en los países culturalmente se busca diferente [...] el español que se puede utilizar en México o en Colombia tiene diferencias al de España [...] es mejor hacer un Keyword Readers individual para cada territorio"]
**Qué hace el arnés:** instrucción explícita en el Paso 3: un análisis por territorio, nunca mezclar países.

---

### PASO 4 — Revisar sugerencias

**Ancla 12 — cómo identificar el tipo de palabra clave: ir al buscador** ★
[fuente: 04.Tipos de Keywords.txt — "una de las mejores formas de saber si una keyword es transaccional o informacional [...] es ir a Google a hacer búsquedas [...] si veo que del uno al diez de los resultados que hay en la primera página. Todo ese información no es nada de compra ni de contratación. Es un resultado informacional"]
[fuente: 04.Tipos de Keywords.txt — "¿Qué hay aquí que os he dicho que se encontraban en las búsquedas transaccionales? Anuncios de Google. Uno, dos, tres y cuatro anuncios"]
**Qué dice la fuente exactamente:** la página de resultados del buscador es el árbitro definitivo cuando el criterio no es suficiente. Anuncios = transaccional. Solo contenido = informacional.
**Qué hace el arnés:** lo convierte en el método estándar del Paso 4 cuando hay dudas, no como consejo opcional.

**Ancla 13 — "mejor [X]" es informacional, no transaccional** ★
[fuente: 10.Keyword Research Práctico.txt — "mejor agencia SEO no es un keyword transaccional, es un keyword informacional o mixta diría [...] no debería trabajar porque esto es para que un medio externo o una web que quiera hablar de varias agencias ha listado un ranking"]
**Qué dice la fuente exactamente:** quien busca "mejor [X]" quiere un ranking comparativo de varios proveedores, no la web de uno solo. No es una palabra clave que una empresa deba trabajar en su propio sitio como transaccional.
**Qué hace el arnés:** caso específico listado en el Paso 4.

**Ancla 14 — palabras con geolocalización no relevante: en negativo** ★
[fuente: 10.Keyword Research Práctico.txt — "el que está buscando Agencia SEO [ciudad concreta] es porque quiere una agencia acerca de la sede de su empresa [...] Si yo no tengo oficina [en esa ciudad], hay que darle al usuario lo que busca y optimizar no solo para Google, en base siempre al usuario"]
**Qué dice la fuente exactamente:** incluir palabras con ciudad o región donde el negocio no opera genera tráfico que el negocio no puede atender. Es una práctica de posicionamiento que va en contra del usuario.
**Qué hace el arnés:** instrucción explícita en el Paso 4: en negativo si el negocio no opera en esa ubicación.

**Ancla 15 — señal de cierre del análisis: no hay más sugerencias relevantes**
[fuente: 10.Keyword Research Práctico.txt — "¿Cuándo llega un momento en que tú hayas acabado tu keyword research? No hay mejor forma de saber que uno ha acabado. Ya no hay ninguna sugerencia que me sirva. Por lo tanto ya está"]
**Qué hace el arnés:** el criterio de cierre no es un número de palabras sino la ausencia de sugerencias nuevas relevantes tras varias pruebas.

**Ancla 16 — introducir nuevas variantes para extraer más sugerencias**
[fuente: 10.Keyword Research Práctico.txt — "para comprobar si quedan sugerencias es poner otra keyword [...] Hay que ir poniendo alternativas para que Google me siga devolviendo sugerencias"]
**Qué hace el arnés:** instrucción operativa en el Paso 4: cuando el listado se vacía, introducir nuevas palabras del plan para seguir extrayendo sugerencias.

---

### PASO 5 — Descargar

**Ancla 17 — descargar con estacionalidad mensual: el dato diferencial** ★
[fuente: 11.Presentación del Keyword Research.txt — "Este dato para la estacionalidad de un sector es brutal, es un dato que es buenísimo y nadie lo muestra en sus keyword research. Se borra o no se descarga siquiera porque no se conoce la opción y sólo se enseña esto"]
**Qué dice la fuente exactamente:** la mayoría de profesionales descarga solo el promedio anual y pierde los datos de estacionalidad mensual. La opción que los incluye existe pero no es la predeterminada y no es conocida.
**Qué hace el arnés:** especifica que la descarga debe incluir los datos mensuales, no solo la media.

---

### PASO 6 — Limpiar y formatear el Excel

**Ancla 18 — eliminar ".0": paso técnico obligatorio**
[fuente: 11.Presentación del Keyword Research.txt — "el Keyword Planner aquí un punto cero. En lugar de poner 10 [...] te pone este punto, que en realidad debería ser una coma, pero es un punto [...] no lo reconoce como un número"]
[fuente: 15.Anexo 2_ Cómo presentar Keyword Research en Windows.txt — "buscamos punto cero para reemplazar con nada [...] le doy a reemplazar todos"]
**Qué hace el arnés:** paso técnico no opcional — sin esta limpieza no se puede ordenar ni filtrar correctamente.

**Ancla 19 — formato condicional fila a fila, no sobre el rango completo** ★
[fuente: 11.Presentación del Keyword Research.txt — "no seleccionas todo esto y ya está, porque nos saldrá bien, porque entonces me buscará el mes con más volumen en todo este cuadrado, yo lo que quiero es que me lo saque de fila en fila"]
**Qué dice la fuente exactamente:** si el formato condicional se aplica sobre todas las filas a la vez, Excel busca el máximo y mínimo globales del rango entero — no la estacionalidad individual de cada palabra. El resultado parece correcto visualmente pero no lo es.
**Qué hace el arnés:** lo señala como el error más común y lo resuelve con la instrucción de aplicar fila a fila.

**Ancla 20 — mes pico en negrita: configuración exacta**
[fuente: 11.Presentación del Keyword Research.txt — "le doy a Top 10, ¿vale? Y si me abre esto. Ahora voy a poner lugar de 10, 1 [...] quiero negrita, bold, ¿vale? Sin relleno, sin bordes, sin nada. Sólo quiero negrita"]
**Qué hace el arnés:** Top 1, solo negrita, sin relleno extra (el color de la escala verde-rojo ya cubre eso).

**Ancla 21 — la demanda se anticipa al pico de uso** ★
[fuente: 05.Estacionalidad y Tendencia.txt — "Agosto es un mes en el que no tiene tanta demanda. ¿Por qué? Porque en Agosto la gente usa las gafas, pero no las están comprando. Las compran antes. Se anticipa la demanda siempre al pico de máximo consumo"]
**Qué dice la fuente exactamente:** el pico de búsquedas de gafas de sol es en primavera (la gente las compra antes del calor), no en agosto (cuando las usa). La demanda de búsqueda anticipa siempre al pico de consumo.
**Qué hace el arnés:** lo incluye en el Paso 6 como advertencia explícita: no interpretes la estacionalidad por intuición — usa el dato de la herramienta.

**Ancla 22 — organizar por pestañas: una por categoría de negocio**
[fuente: 12.Ejemplos de Keyword Research.txt — "tenemos ordenado por categorización [...] artificiales, este es todo el volumen [...] tengo otra pestaña de centros de mesa, una de ramos [...] una pestaña para sí misma con todo lo que tiene que ver con rosas"]
**Qué hace el arnés:** el Paso 6 especifica la organización en pestañas por categoría o línea de negocio.

---

### PASO 7 — Seguimiento de posicionamiento

**Ancla 23 — empezar el seguimiento antes de tocar la web** ★
[fuente: 13.Tracking de Keywords.txt — "¿por qué empieza a traquear Keywords? justo cuando acaba el Keyword Rises [...] porque yo quiero ver cuál era el posicionamiento de esas Keywords antes de hacer nada"]
**Qué dice la fuente exactamente:** el seguimiento empieza al terminar el análisis, antes de cualquier acción de posicionamiento, para tener la posición de partida. Sin ese dato, no puede medirse el impacto posterior.
**Qué hace el arnés:** lo señala como el criterio más importante del Paso 7.

**Ancla 24 — escritorio y móvil son independientes** ★
[fuente: 13.Tracking de Keywords.txt — "el posicionamiento en Google es independiente el de escritorio y el de móvil [...] puedes estar en un escritorio en primera posición y en móvil en décima porque tienes una versión mobile horrorosa"]
**Qué dice la fuente exactamente:** un sitio puede tener posiciones muy distintas en escritorio y en móvil. Son métricas separadas.
**Qué hace el arnés:** instrucción de configurar el seguimiento en los dos tipos de dispositivo por separado.

**Ancla 25 — no revisar el seguimiento a diario**
[fuente: 13.Tracking de Keywords.txt — "un tracking de keywords no es para volverse loco [...] lo que cuenta es el medio plazo medio largo plazo [...] si un cliente [...] pide que cada día le pasáis este informe decir que no"]
**Qué hace el arnés:** instrucción explícita en el Paso 7 para que el agente eduque al cliente en el comportamiento correcto ante el seguimiento.

---

## MAPA DE COBERTURA

| Archivo fuente | Paso(s) del arnés |
|---|---|
| 01.Introducción.txt | IDENTIDAD |
| 02.Keywords.txt | Paso 1 (variantes, longtail invertido, sinónimos, aplicaciones del análisis) |
| 03.Customer Journey.txt | Paso 0 (tipos de análisis) y Paso 4 (criterio de intención de búsqueda) |
| 04.Tipos de Keywords.txt | Paso 0 (tipo de análisis), Paso 4 (transaccional, informacional, mixta, SERP como árbitro) |
| 05.Estacionalidad y Tendencia.txt | Paso 6 (formato visual y nota sobre anticipación de demanda) |
| 06.Herramientas.txt | Paso 0 (sectores sensibles), Paso 3 (el Planificador como fuente oficial) |
| 06.1.Links-de-Herramientas.txt | **Sin pasos del método.** URLs de acceso a herramientas externas. El arnés las trata como datos externos que el humano aporta. |
| 07.Concatenador de palabras clave.txt | Paso 2 (concatenador) y Paso 3 (carga masiva) |
| 07.1.Link-Concatenador-de-palabras-clave.txt | **Sin pasos del método.** URL de referencia — mismo criterio que 06.1. |
| 08.Keyword Planner de Google.txt | Paso 3 (descripción del Planificador, borrador en nube, región/idioma) |
| 09.Funciones del Keyword Planner de Google.txt | Paso 3 (filtros obligatorios) y Paso 4 (flujo de revisión y negativos) |
| 10.Keyword Research Práctico.txt | Paso 4 (ejecución completa, casos de criterio, señal de cierre) |
| 11.Presentación del Keyword Research.txt | Paso 5 (descarga) y Paso 6 (limpieza y formato visual) |
| 12.Ejemplos de Keyword Research.txt | Paso 6 (organización por pestañas y referencia de calidad) |
| 13.Tracking de Keywords.txt | Paso 7 (seguimiento de posicionamiento) |
| 14.Anexo 1_ Cómo crear una cuenta de Google Ads.txt | Paso 0 (cuenta con/sin campaña activa) |
| 15.Anexo 2_ Cómo presentar Keyword Research en Windows.txt | Paso 6 (limpieza técnica y macros en Windows) |
| 16.Keyword planner.txt | Paso 0 (diferencia entre cuenta con/sin campaña activa) |
| 17.Ejercicios.txt | **Sin pasos del método.** Enunciado del ejercicio formativo de origen. No es metodología aplicable. |
| LEEME.txt | **Sin pasos del método.** Nota de organización de carpetas. No es contenido metodológico. |

**Archivos que no generaron pasos — decisión explícita:**
- **06.1 y 07.1 (links):** las URLs de herramientas externas cambian y dependen de qué herramienta use el cliente. El arnés no las hardcodea — las trata como datos externos que el humano aporta (`[dato externo]`).
- **17.Ejercicios.txt:** enunciado del ejercicio que el instructor asignó al alumno del curso de origen. No es metodología operativa.
- **LEEME.txt:** nota organizativa de la carpeta de archivos. No contiene metodología.
