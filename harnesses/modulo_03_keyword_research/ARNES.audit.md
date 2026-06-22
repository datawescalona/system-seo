# AUDITORÍA — Módulo 03: Keyword Research
# Arnés versión: 2.7
# Fecha de construcción: 2026-06-22
# Constructor: v2.7 (CONSTRUCTOR_ARNESES.md)
# Fuentes: 19 archivos en harnesses/modulo_03_keyword_research/archivos/1_CARGAR_SIEMPRE/

---

## CLASIFICACIÓN DEL MÓDULO
HACER-de-pasos con segmento de criterio.
Entregable: Excel de keywords con estacionalidad.

---

## INVENTARIO EN BRUTO → TRAZABILIDAD COMPLETA

Para cada elemento del inventario: dónde terminó en el arnés o por qué se descartó.

---

### DATOS Y CIFRAS

| Elemento | Fuente (archivo — fragmento) | Destino en el arnés |
|---|---|---|
| Mínimo 10 búsquedas en KP | 09 — "en el mínimo se pone el 10, ¿vale? para que no me muestre Keywords que tengan cero de volumen" | Bloque 3, filtros obligatorios |
| Subir mínimo a 1.000 en sectores de alta demanda | 09 — "si estuviese haciendo Keywords para salando, pondría el mínimo de búsquedas en mil y trabajaría de ahí para arriba" | Bloque 3, filtros obligatorios |
| Quedarse en 10 en nicho B2B | 09 — "en cuanto más te nichas, en cuanto trabajas sectores o con públicos más específicos, tienes que intentar hacer Keywords Research hasta 10 búsquedas que es el mínimo que te da Google" | Bloque 3, filtros obligatorios |
| Truco campaña 1€ para datos exactos | 08 — "hacer una campaña de Google AdWords en la que os gastéis un euro y como ya estaréis invirtiendo, Google los dará los volúmenes" / 14 — mismo concepto / 16 — confirmado | Bloque 3, compuerta B |
| Hasta 2 semanas para activar datos exactos | 16 — "hasta las dos semanas no hagan empezado a salir todo, tanto el volumen exacto como la estacionalidad" | Bloque 3, compuerta B |
| KP sin campaña activa da franjas | 08 — "si no tienes ninguna campaña en activo te muestra franjas, es decir, esta Keyword tiene de 10 a 100 búsquedas" | Bloque 3, compuerta B |
| Sin campaña: no se puede poner mínimo de búsquedas | 16 — "No se puede poner un promedio de búsquedas, tú no le puedes decir muéstrame Keywords que tengan más de 50 búsquedas al mes porque no te está dando ese dato" | Bloque 3, compuerta B |
| Sin campaña: no hay estacionalidad | 16 — "afecta la estacionalidad, si tú lo tienes una campaña en activo, como los volúmenes que te dan son rangos, no te va a dar luego la estacionalidad" | Bloque 3, compuerta B |
| KP guarda borradores en la nube | 08 — "como se guarda, sin preocuparme de que la herramienta pete porque se guarda" | Bloque 3, paso 6 |
| Vista de 500 filas en KP | 09 — "os recomiendo poner aquí 500 filas" | DESCARTADO: detalle de configuración de UI sin impacto en el método; su inclusión añadiría ruido innecesario |
| Escala verde-rojo + negrita en mes máximo | 11 — "Le más alto, más bajo. Y mirad lo que pasa. ¿Veis? ¿Veis lo que está pasando? Verde y rojo." / "voy a poner una escala de color de los meses de más demanda a menos demanda" | Bloque 5, paso 3 |
| Estacionalidad: 12 últimos meses, actualización mensual | 11 — "a principios de... A principios, los primeros días de septiembre, los datos de agosto se cambian los del año anterior por el de este año, porque son los 12 últimos meses" | Bloque 5, descarga |
| Números de ejemplo históricos (Nike, vestidos, hotel...) | 02, 05 — múltiples cifras de proyectos reales del docente | DESCARTADO: son datos históricos de ejemplos ilustrativos del curso, no del método operativo. Incluirlos confundiría al usuario (valores desactualizados). La cita larga de verifica comprensión está abajo |

> **Verificación de comprensión para el descarte de los ejemplos numéricos:**
> La fuente dice en 05: "A día de hoy, Zapatilla Nike tiene 201.000 búsquedas al mes. Por ende, la tendencia de Zapatilla Nike a lo largo de esos 6 años ha sido tremendamente positiva."
> Lo que hace el paso con eso: esos números son ejemplos didácticos del docente para ilustrar cómo cambia la tendencia con el tiempo. No son parte del método que el arnés debe enseñar a ejecutar. El arnés en cambio enseña a obtener esos datos directamente del Keyword Planner para el sector del usuario.

---

### REGLAS Y PASOS

| Elemento | Fuente (archivo — fragmento) | Destino |
|---|---|---|
| KWR transaccional: 0 informacionales | 09 — "solo quiero añadir palabras transaccionales, no quiero palabras informacionales" / 10 — "solo keywords transaccionales, no quiero ver ni una Keyword Informacional" | Bloque 4 |
| Orden: términos base → concatenador → KP (no al revés) | 07 — primero el concatenador, 09 — el KP usa el listado del concatenador, 10 — proceso completo en orden | Bloque 2 (términos) → Bloque 3 (KP) → Bloque 4 (sugerencias) |
| Filtro "excluir keywords del plan": el más importante | 09 — "excluir palabras clave del plan, importantísimo, este siempre lo tenéis que seleccionar" / "esa es la mejor forma de trabajar en el Keyword Planner, y os aseguro que la mayoría de la gente no la está haciendo" | Bloque 3, filtros obligatorios (marcado explícitamente como el más importante) |
| Señal de fin: ninguna variante nueva da keywords transaccionales | 10 — "No hay mejor forma de saber que uno ha acabado. Ya no hay ninguna sugerencia que me sirva. Por lo tanto ya está." | Bloque 4, señal de fin |
| Competidores: siempre en negativo | 09 — "yo no quiero, como estoy haciendo un ejemplo de un Keyword Research para mi agencia de SEODO...nunca voy a trabajar palabras clave de la competencia" / 10 — mismo criterio | Bloque 4 |
| Singular Y plural | 07 — "nos tenemos que acordar también de los singulares. En la mayoría de sectores las keywords se buscan tanto en singular como en plural" | Bloque 2, columna A |
| Tilde Y sin tilde | 07 — "sin tilde. Lo voy a añadir ahora con tilde. ¿Qué pasa con las tildes? Buscando prácticamente nadie utiliza tildes...para tener una visión completa de cuál es la demanda del sector, la vamos a dejar" | Bloque 2, columna A |
| Variantes regionales | 07 — "zapatillas. ¿Vale? Zapatillas para correr...Calzado. También es un término genérico. En algunas partes de España se dice deportivas o aquí en Cataluña se dice bambas. Incluso...en Galicia le dicen tenis" | Bloque 2, columna A |
| Variantes en inglés | 07 — "vemos que hay mucha gente que usa terminología en inglés, y eso también lo tenemos que tener en cuenta porque zapatillas de correr y zapatillas de running es lo mismo" | Bloque 2, columna A |
| Faltas de ortografía frecuentes | 07 — "tenis con dos n's" — ejemplo de variante ortográfica como columna en el concatenador | Bloque 2, columna A |
| Un KWR por territorio (no mezclar) | 09 — "os lo recomiendo, porque como veréis en la asignatura de SEO internacional...en los países culturalmente se busca diferente...es mejor hacer un Keyword Readers individual para cada territorio" | Bloque 3, paso 3 |
| Organizar Excel por pestañas | 10 — "si una empresa tiene varias líneas de negocio, ofrece varios servicios...lo que hay que hacer es ir al otro servicio y repetir todo" / 11 — pestañas por categoría demostradas en vivo | Bloque 5, paso 4 |
| Descargar con estacionalidad (opción CSV correcta) | 11 — "os recomiendo poner aquí 500 filas...Botón de descargar aquí abajo...¿Por qué? Porque así vamos a tener la estacionalidad" | Bloque 5, paso 1 |
| Guardar como .xlsx | 15 — "guardar como, vale, para poder cambiar el nombre del documento y lo ponemos en XLSX" | Bloque 5, paso 4 |
| Reordenar meses en año natural | 11 — "lo que voy a hacer es coger estas columnas y las voy a mover delante en gozar y pegar... De enero a diciembre. Ya tengo el año natural" | Bloque 5, paso 2 |
| Limpiar puntos decimales (.0) | 11 — "le digo el texto que busca que es el punto cero y le doy a poner que lo reemplace por nada" | Bloque 5, paso 2 |
| Poner ceros en vacíos | 11 — "donde no haya nada, voy a pedirle que me ponga un cero... Reemplazar todos, ahí están todos los ceros" | Bloque 5, paso 2 |
| Eliminar filas con volumen 0 | 11 — "añadir filtro, ordenar de mayor a menor, para que se queden todos los ceros abajo y luego seleccionarlos y eliminarlos todos" | Bloque 5, paso 2 |
| Congelar primera fila | 11 — "Voy a la pestaña de view o vistas...le doy a congelar primera fila" | Bloque 5, paso 2 |
| Gráfico de línea por keyword | 11 — "Insertar línea de nuevo...selecciono de enero a diciembre, le doy a OK y mirar qué línea más bonita con la estacionalidad anual" | Bloque 5, paso 3 |
| Mac vs Windows: macros | 11, 15 — "en Mac no se pueden hacer macros. En Excel sí, con lo cual tú puedes grabar una serie de comandos" / 15 — proceso completo de la macro en Windows | Bloque 5, paso 3 |
| Negativas "mejor/mejores" | 09 — "voy a aprovechar mejor y ciudad real para añadir al listado de excluidas" / 10 — "mejor agencia SEO no es un keyword transaccional" | Bloque 4 |
| Negativas de ciudades sin presencia | 10 — "agencia SEO ciudad real, no me interesa, no la añadiría...no voy a posicionar en Ciudad Real si no tengo oficina" (parafraseado del contexto) | Bloque 4 |

---

### EXCEPCIONES Y CASOS FRONTERA

| Elemento | Fuente (archivo — fragmento) | Destino |
|---|---|---|
| KP sin datos para sectores sensibles | 06 — "cuando quieres sacar búsquedas de cosas de las que no se pueden hacer anuncios en Google, no te da respuesta. Y esto os va a pasar con proyectos que tengan que ver con temas de salud muchas veces, con temas de fármacos, con temas de... vapeadores, los cigarrillos electrónicos" | Bloque 4, nota sobre sectores sensibles |
| Keywords mixtas: mezcla de resultados | 04 — "hay algo justo en medio. Hay algo que está justo en medio en función de los resultados que ofrecen Google, que son las keywords mixtas. Las keywords mixtas están justo aquí en el vértice, justo entre la consideración y la compra" | Bloque 4, criterio de decisión |
| Longtail con más volumen que la genérica (excepción) | 02 — "Vestidos de fiesta tiene 90 mil 500 búsquedas y vestidos tiene 49 mil 500...Aquí que ha pasado... realmente por el proceso de compra del usuario, no es un longtail de vestidos...El proceso de compra de un vestido es como hay una fiesta, me tengo que comprar un vestido" | Bloque 1, compuerta de criterio |
| Sinónimos que Google ya puede unificar (no siempre) | 02 — "cada vez más Google entiende las keywords que tienen en la misma intencionalidad de búsqueda y da los mismos resultados, pero no pasa en todos los sectores ¿vale? Ni con todas las keywords" | No incluido como regla explícita; el método de incluir sinónimos en el concatenador y dejar que el KP filtre los volúmenes cubre esta casuística implícitamente. |
| Answer the Public: solo informacionales | 06 — "¿Qué tenéis que tener en cuenta? Que es algo de lo que ya os tendrías que haber dado cuenta, viendo estos resultados, que son solo keywords informacionales. Answers de Public o los otros módulos que tienen de preguntas, las otras herramientas, solo sirven para hacer keywords informacionales" | Bloque 4, nota sobre Answer the Public |
| Cuenta KP sin campaña: sin datos exactos, sin estacionalidad, sin filtro de mínimo | 16 — "Ni rangos exactos, ni promedio de búsquedas mínimo, ni estacionalidad del proyecto, esa es la información que perdemos" | Bloque 3, compuerta B |

---

### HERRAMIENTAS

| Herramienta | Fuente | Destino |
|---|---|---|
| Keyword Planner | 06, 08, 09 — fuente oficial de Google | Bloque 3 y Bloque 4 |
| Concatenador | 07 — herramienta gratuita en found.co.uk/ppc-keyword-tool | Bloque 2 |
| Herramientas alternativas (Semrush, Ahrefs, Sistrix, Ubersuggest) | 06 — "es la única situación en la que yo voy a usar una de estas herramientas para hacer un keyword research" | Bloque 4, nota sobre sectores sensibles |
| Google Trends | 05 — para tendencia a largo plazo, no estacionalidad mensual | No incluido como herramienta activa del método: la fuente lo usa para explicar el concepto de tendencia, no como paso del KWR. No confundir con la estacionalidad del KP. |
| TrueRanker | 13 — herramienta de tracking | Sección de tracking |
| Google Search Console | 13 — "conectar wells console lo que va a hacer es pedirme acceso a gmail...para que se vinculen y así pueda coger los datos y tener mejor información" | Sección de tracking |

---

### CRITERIOS DE DECISIÓN

| Criterio | Fuente | Destino |
|---|---|---|
| Verificar tipo de keyword con la SERP | 04, 10 — "si tenéis dudas vais a Google y lo consultáis" / "buscáis en Google mejor agencia SEO y veis los resultados que os da" | Bloque 4, instrucción de revisión |
| Anuncios en SERP = keyword transaccional | 04 — "cuando haces una búsqueda en Google, si una keyword es transaccional, suele tener anuncios arriba porque como vende, quieres salir anunciantes" | Bloque 4, criterio |
| Sin anuncios en SERP = keyword informacional | 04 — "cuando hagamos una keyword es informacional muchas de las veces. No salen anuncios, la mayoría de las veces no salen anuncios porque como es a keyword no tiene conversión" | Bloque 4, criterio |
| Cuándo subir el mínimo de búsquedas | 09 — explicado en el contexto de Zara vs agencia B2B | Bloque 3, filtros |

---

## MAPA DE COBERTURA — NÚMEROS Y LÍMITES

Todos los números y límites del inventario, verificados uno a uno:

| Número/Límite | Fuente | En el arnés |
|---|---|---|
| Mínimo 10 búsquedas | 09 | ✅ Bloque 3 |
| Subir a 1.000 en sectores gran volumen | 09 | ✅ Bloque 3 |
| 1€ para campaña de prueba | 08, 14, 16 | ✅ Bloque 3 |
| Hasta 2 semanas para activar datos exactos | 16 | ✅ Bloque 3 |
| 12 últimos meses en la descarga | 11 | ✅ Bloque 5 |
| 500 filas en vista KP | 09 | ❌ Descartado — detalle de UI, no del método |
| Ejemplos de volúmenes históricos (Nike, vestidos...) | 02, 05 | ❌ Descartados — datos históricos de ejemplos ilustrativos del docente |

**Ningún número o límite del inventario quedó sin rastrear.**

---

## VERIFICACIÓN DE LOS TRES REQUISITOS DEL PASO 2

**(a) Límite de 10 palabras del Planificador:**
✅ Presente en Bloque 3, filtros obligatorios.
Cita de origen: 09 — "en el mínimo se pone el 10, ¿vale? para que no me muestre Keywords que tengan cero de volumen"

**(b) Regla de presentación digerible (plan resumido + una pregunta por turno + por bloques):**
✅ Presente:
- Plan resumido: sección MAPA DEL PROCESO, presentada antes de cualquier pregunta.
- Una pregunta por turno: explícito en cada bloque con "(Espera respuesta)" entre preguntas.
- Por bloques: estructura de 5 bloques que se cierran antes de abrir el siguiente.

**(c) Orden correcto — empieza por términos base, no por el Excel:**
✅ Presente:
- Bloque 1: entiende el negocio.
- Bloque 2: genera términos base y los concatena.
- Bloque 3: lleva los términos al Keyword Planner.
- El Excel aparece solo en el Bloque 5, que es su posición correcta en la secuencia.
Cita de origen: 07 — el concatenador genera la lista, 09 — esa lista se añade al KP, no al revés.

---

## DECISIONES DE DISEÑO

1. **Regla anti-jailbreak en IDENTIDAD:** formulada como regla dura con respuesta concreta para que el arnés no se rompa ante presión del usuario.

2. **Customer journey en Bloque 1:** incluido como pregunta de contexto (no como clase teórica) para que el arnés pueda tomar mejores decisiones sobre las keywords. La excepción del longtail (vestidos de fiesta) se convirtió en una COMPUERTA DE CRITERIO aplicable a cualquier sector.

3. **Compuertas nombradas A, B, C, final:** cada una pide algo que el usuario puede verificar contra su propia realidad (su lista de términos, su cuenta de Google Ads, la SERP de una keyword dudosa, su Excel terminado).

4. **Google Trends no incluido como herramienta del método:** la fuente lo usa como ejemplo didáctico para explicar "tendencia" vs "estacionalidad", pero no forma parte de los pasos del Keyword Research. Incluirlo habría creado confusión sobre su rol.

5. **Molde del entregable:** el arnés no genera un Excel directamente. Guía al usuario para que lo construya él con el Keyword Planner. Eso es fiel al método de la fuente.
