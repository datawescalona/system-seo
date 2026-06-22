# ARNES.audit_v6.md — Módulo 03: Análisis de palabras clave
# Constructor v2.6 — Con FASE 1.5 (inventario en bruto anti-omisión)
# Versión arnés: v6_PRUEBA

---

## FASE 0 — VERIFICACIÓN DE FUENTE Y TIPO

- Fuente cruda disponible: 20 archivos en 1_CARGAR_SIEMPRE/ ✓
- Todos legibles en texto ✓
- COMPUERTA DE RIQUEZA DE FUENTE: la fuente contiene criterio real: excepciones (sectores sensibles, cuentas sin campaña activa, Mac vs. Windows, keywords informacionales vs. transaccionales, competidores en negativo, sinónimos regionales, palabras que Google no une aunque signifiquen lo mismo). No es solo camino feliz.
- Clasificación: **HACER-de-pasos** — el módulo produce un entregable concreto (Excel) a través de una secuencia definida.

---

## FASE 1 — EXTRAER EL ORDEN DEL MÉTODO

**Secuencia real reconstruida desde la fuente:**

| # | Paso | Quién | Primer entregable real |
|---|------|-------|------------------------|
| 0 | Verificación (negocio, tipo análisis, acceso Planner, sector sensible) | AGENTE + HUMANO | — |
| 1 | Recopilar términos base del negocio | AGENTE + HUMANO | ★ Lista de términos en TEXTO |
| 2 | Generar combinaciones con el Concatenador | AGENTE | Lista de combinaciones en texto |
| 3 | Cargar combinaciones en Planificador + configurar filtros | HUMANO | — |
| 4 | Revisar sugerencias y construir el plan de palabras clave | HUMANO (agente clasifica) | — |
| 5 | Descargar CSV con volúmenes y estacionalidad | HUMANO | Archivo CSV |
| 6 | Limpiar CSV y construir Excel final | HUMANO (agente guía) | ★ Excel presentable |
| 7 | Configurar seguimiento de posiciones | HUMANO (MODO GUÍA si falta herramienta) | Proyecto activo en herramienta |

El PRIMER entregable real es la lista de términos base en texto (PASO 1). El Excel aparece en PASO 6.

---

## FASE 1.5 — INVENTARIO EN BRUTO

### A. DATOS Y CIFRAS CONCRETAS (números, límites, umbrales)

| ID | Cita textual (corta) | Archivo |
|----|----------------------|---------|
| N01 | "aquí solo puedes añadir 10 palabras clave juntas para que te des sugerencias" | 09.Funciones del Keyword Planner de Google.txt |
| N02 | "el mínimo que te da Google" es 10 búsquedas/mes | 09.Funciones del Keyword Planner de Google.txt |
| N03 | "poner aquí 10" (filtro de volumen mínimo estándar) | 09.Funciones del Keyword Planner de Google.txt |
| N04 | "estando un sector con muchísima demanda, elevarlo a 100, a 1000" | 09.Funciones del Keyword Planner de Google.txt |
| N05 | "poner aquí 500 filas" (para revisar más keywords de un vistazo) | 09.Funciones del Keyword Planner de Google.txt |
| N06 | "hacer una campaña de Google AdWords en la que os gastéis un euro" | 08.Keyword Planner de Google.txt |
| N07 | "hasta las dos semanas no hayan empezado a salir todo" / "el primer día" (tiempo variable para que aparezcan datos exactos tras activar campaña) | 16.Keyword planner.txt |
| N08 | "un periodo de prueba de seis meses" (TrueRanker) | 13.Tracking de Keywords.txt |
| N09 | "98 combinaciones" (salida del concatenador en ejemplo de zapatillas) | 07.Concatenador de palabras clave.txt |
| N10 | "165 combinaciones" (salida del concatenador en ejemplo de agencia SEO) | 07.Concatenador de palabras clave.txt |
| N11 | rangos: "1 y 100, 100 y 1000" (lo que muestra el Planner sin campaña activa) | 16.Keyword planner.txt |
| N12 | "poner el límite en 10" (ejercicio: mínimo de volumen para casetas de perros) | 17.Ejercicios.txt |

### B. REGLAS E INSTRUCCIONES OPERATIVAS

| ID | Cita / regla | Archivo |
|----|--------------|---------|
| R01 | Usar el Planificador de palabras clave de Google como herramienta principal | 06.Herramientas.txt, 08.Keyword Planner de Google.txt |
| R02 | NO usar el dominio para obtener sugerencias: "el dominio no está optimizado" → usar keyword directamente | 09.Funciones del Keyword Planner de Google.txt |
| R03 | Activar siempre filtro "Excluir palabras clave del plan" | 09.Funciones del Keyword Planner de Google.txt |
| R04 | Quitar filtro "Excluir ideas de contenido para adultos" (viene activado por defecto) | 09.Funciones del Keyword Planner de Google.txt |
| R05 | No tocar los rangos de fechas | 09.Funciones del Keyword Planner de Google.txt |
| R06 | Poner competidores en negativo | 09.Funciones del Keyword Planner de Google.txt, 10.Keyword Research Práctico.txt |
| R07 | Poner "mejor", "mejores" en negativo (informacional) | 10.Keyword Research Práctico.txt |
| R08 | Poner "precio", "precios" en negativo del transaccional | 10.Keyword Research Práctico.txt |
| R09 | Usar "Palabras clave guardadas" para cargar el concatenador en masa (sin límite) | 09.Funciones del Keyword Planner de Google.txt |
| R10 | Grupo de anuncios: poner "1" (campo requerido por la herramienta, sin relevancia para SEO) | 09.Funciones del Keyword Planner de Google.txt |
| R11 | Señal de fin: cuando ninguna sugerencia nueva es relevante tras probar múltiples keywords | 10.Keyword Research Práctico.txt |
| R12 | Descargar en CSV (no Hoja de cálculo de Google: se bloquea con miles de keywords) | 10.Keyword Research Práctico.txt, 11.Presentación del Keyword Research.txt |
| R13 | En Excel: eliminar columnas vacías y filas de cabecera sobrantes | 11.Presentación del Keyword Research.txt |
| R14 | Reordenar meses de enero a diciembre (año natural, no últimos 12 meses desde el día actual) | 11.Presentación del Keyword Research.txt |
| R15 | Reemplazar ".0" por nada (buscar y reemplazar) | 11.Presentación del Keyword Research.txt |
| R16 | Reemplazar celdas de volumen vacías por "0" | 11.Presentación del Keyword Research.txt |
| R17 | Ordenar por volumen medio mensual descendente | 11.Presentación del Keyword Research.txt |
| R18 | Eliminar filas con volumen = 0 | 11.Presentación del Keyword Research.txt |
| R19 | Cabecera en naranja + negrita + fuente más grande | 11.Presentación del Keyword Research.txt |
| R20 | Congelar primera fila (Vista → Inmovilizar fila superior) | 11.Presentación del Keyword Research.txt |
| R21 | Escala de color verde-rojo en los 12 meses, fila por fila | 11.Presentación del Keyword Research.txt |
| R22 | Mes pico de cada fila: en negrita | 11.Presentación del Keyword Research.txt |
| R23 | Gráfico de línea miniatura (tendencia anual) para cada fila | 11.Presentación del Keyword Research.txt |
| R24 | Columnas de competencia y puja: mover a la derecha y marcar en gris | 11.Presentación del Keyword Research.txt |
| R25 | Una pestaña por categoría / servicio / línea de producto | 11.Presentación del Keyword Research.txt |
| R26 | Guardar como XLSX (no CSV) | 15.Anexo 2_ Cómo presentar Keyword Research en Windows.txt |
| R27 | Iniciar el seguimiento ANTES de hacer acciones de SEO (para ver el antes y después) | 13.Tracking de Keywords.txt |
| R28 | Configurar seguimiento en escritorio Y móvil por separado | 13.Tracking de Keywords.txt |
| R29 | Conectar herramienta de seguimiento con Google Search Console si está disponible | 13.Tracking de Keywords.txt |
| R30 | En Windows: macro con referencias relativas para aplicar formato en serie | 15.Anexo 2_ Cómo presentar Keyword Research en Windows.txt |
| R31 | En Mac: copiar formato línea a línea (no hay macros con referencias relativas) | 11.Presentación del Keyword Research.txt |

### C. EXCEPCIONES Y CASOS FRONTERA

| ID | Cita / excepción | Archivo |
|----|------------------|---------|
| E01 | Sectores sensibles donde el Planner no da datos: salud, fármacos, vapeadores, mascarillas, contenido sexual → usar herramienta de pago alternativa | 06.Herramientas.txt |
| E02 | Sin campaña activa: el Planner muestra rangos en lugar de números exactos; no disponible la estacionalidad mensual | 08.Keyword Planner de Google.txt, 16.Keyword planner.txt |
| E03 | Tiempo variable para activar datos exactos: entre el primer día y 14 días después de iniciar campaña con 1€ | 16.Keyword planner.txt |
| E04 | Keyword que parece long tail pero tiene más volumen que la genérica (ej. "vestidos de fiesta" > "vestidos"): la intención manda, no la longitud | 02.Keywords.txt |
| E05 | Sinónimos que Google aún no unifica (ej. "neveras" / "frigoríficos", "power bank" / "cargador portátil"): incluir ambos en el análisis | 02.Keywords.txt |
| E06 | Keywords de marca de la competencia: no añadir al plan transaccional del cliente | 10.Keyword Research Práctico.txt |
| E07 | Keywords de marca propia: sí añadir | 10.Keyword Research Práctico.txt |
| E08 | Keywords con localización geográfica donde el negocio no opera: no añadir | 10.Keyword Research Práctico.txt |
| E09 | "Mejor/mejores": informacional o mixto → no añadir al transaccional | 10.Keyword Research Práctico.txt |
| E10 | "Precio/precios": informacional de alta calidad → no añadir al transaccional (va al blog) | 10.Keyword Research Práctico.txt |
| E11 | Google Sheets se bloquea con análisis de miles de keywords → usar Excel | 10.Keyword Research Práctico.txt |
| E12 | Sectores de nicho o negocio entre empresas: no poner mínimo alto, llegar hasta 10 búsquedas | 09.Funciones del Keyword Planner de Google.txt |

### D. HERRAMIENTAS MENCIONADAS

| ID | Herramienta | Para qué sirve | Archivo |
|----|-------------|----------------|---------|
| H01 | Planificador de palabras clave de Google (dentro de Google Ads) | Herramienta principal: volúmenes oficiales, estacionalidad, sugerencias | 08, 09, 10 |
| H02 | Concatenador de palabras clave (herramienta web gratuita) | Generar todas las combinaciones de variantes de términos | 07 |
| H03 | Google Trends | Consultar la tendencia multi-año de una keyword (crecimiento o caída a lo largo de años) | 05 |
| H04 | TrueRanker | Seguimiento de posicionamiento; 6 meses de prueba gratuita | 13 |
| H05 | Semrush | Alternativa al Planner (sectores sensibles) y seguimiento de posiciones | 06, 13 |
| H06 | Sistrix | Alternativa al Planner | 06 |
| H07 | Ahrefs | Alternativa al Planner y seguimiento | 06, 13 |
| H08 | KeywordTool.io | Alternativa; versión gratuita sin volúmenes | 06 |
| H09 | Answer the Public | Solo para keywords informacionales (preguntas y combinaciones por letra del alfabeto) | 06 |
| H10 | Excel | Presentar el análisis; preferible a Google Sheets para grandes volúmenes | 11, 15 |
| H11 | Google Sheets | Alternativa a Excel; se bloquea con miles de keywords | 10 |
| H12 | Google Search Console | Conectar con herramienta de seguimiento para mejorar la calidad de los datos | 13 |

### E. CRITERIOS DE DECISIÓN

| ID | Criterio | Archivo |
|----|----------|---------|
| C01 | Transaccional vs. informacional: examinar los resultados de Google para esa búsqueda — anuncios + páginas de producto = transaccional; artículos + guías = informacional | 04.Tipos de Keywords.txt |
| C02 | Cuándo terminar el plan: cuando no aparecen sugerencias nuevas relevantes tras probar múltiples keywords distintas | 10.Keyword Research Práctico.txt |
| C03 | Qué herramienta de pago usar si el Planner no da datos: la que tenga disponible el cliente o la agencia | 06.Herramientas.txt |
| C04 | Volumen mínimo del filtro: 10 para nichos/negocios entre empresas; 100 o 1.000 para sectores de alta demanda | 09.Funciones del Keyword Planner de Google.txt |
| C05 | Incluir ambos términos cuando son sinónimos no unificados por Google | 02.Keywords.txt |
| C06 | No añadir keywords con localización donde no hay presencia del negocio, aunque tengan volumen | 10.Keyword Research Práctico.txt |

---

## FASE 2 — TRAZABILIDAD: DESTINO DE CADA ELEMENTO DEL INVENTARIO

### Números y límites (lista completa — MAPA DE COBERTURA REFORZADO)

| ID | Elemento | Destino en el arnés | Justificación |
|----|----------|--------------------|-|
| N01 | Límite de 10 palabras en la casilla de búsqueda de sugerencias | **INCLUIDO — PASO 3.2** | Dato operativo crítico: el humano necesita saber este límite para no intentar pegar el concatenador en el lugar equivocado. Se explica también la distinción con "Palabras guardadas" donde no hay límite. |
| N02 | 10 búsquedas/mes = mínimo absoluto que muestra Google | **INCLUIDO — PASO 3.3 (Filtro 1)** | Se explica que 10 es el valor mínimo de Google y el valor recomendado para nichos. |
| N03 | 10 = valor estándar del filtro de volumen mínimo | **INCLUIDO — PASO 3.3 (Filtro 1)** | Mismo punto que N02, cubierto en el mismo lugar. |
| N04 | 100 o 1.000 para sectores de alta demanda | **INCLUIDO — PASO 3.3 (Filtro 1)** | Se incluye como criterio de ajuste para grandes ecommerces. |
| N05 | 500 filas de visualización en el Planificador | **INCLUIDO — PASO 3.4** | Instrucción operativa de configuración de vista. |
| N06 | 1 euro de campaña para desbloquear datos exactos | **INCLUIDO — PASO 0 (verificación de acceso)** | El humano necesita saber cuál es la forma de obtener datos exactos si no tiene campaña activa. |
| N07 | 1 a 14 días de espera tras activar campaña | **INCLUIDO — PASO 0 (verificación de acceso)** | Rango real de espera declarado explícitamente para que el humano no espere resultados inmediatos. |
| N08 | 6 meses de prueba de TrueRanker | **DESCARTADO del arnés principal** | Dato de oferta comercial del momento en que se grabó el curso; puede estar caducada. El arnés menciona TrueRanker como herramienta válida pero sin fijar ese período específico, que puede haber cambiado. |
| N09 | 98 combinaciones (ejemplo concatenador zapatillas) | **DESCARTADO** | Número de ejemplo ilustrativo, no una norma o límite operativo. No aporta instrucción al arnés. |
| N10 | 165 combinaciones (ejemplo concatenador agencia SEO) | **DESCARTADO** | Mismo caso que N09. |
| N11 | Rangos 1-100, 100-1.000 (Planner sin campaña) | **INCLUIDO — PASO 0** | El humano necesita saber qué tipo de datos obtiene según su situación de cuenta. |
| N12 | Mínimo 10 en el ejercicio de casetas para perros | **INCLUIDO — PASO 3.3 (Filtro 1)** | Confirma que 10 es el valor estándar para nichos, coherente con N02/N03. |

---

## ANCHORS POR PASO (versión auditoría)

Formato: [fuente: archivo — "cita corta"]
★ = paso de alto riesgo: cruzar contra fuente obligatoriamente

### PASO 0 — VERIFICACIÓN

**Check 1 (tipo de negocio):**
[fuente: 09.Funciones — "en cuanto más te nichas, en cuanto trabajas sectores o con públicos más específicos, tienes que intentar hacer Keywords Research hasta 10 búsquedas que es el mínimo que te da Google"]
> Qué dice la fuente: el tipo de negocio determina el umbral de volumen mínimo a trabajar.
> Qué hace el paso: pregunta el tipo de negocio para poder calibrar ese umbral en PASO 3.

**Check 3 (acceso al Planificador — sin campaña activa):**
★ [fuente: 16.Keyword planner — "el Keyword Planner como sabéis es una herramienta de Google AdWords [...] si no tienes ninguna campaña en activo te muestra franjas, es decir, esta Keyword tiene de 10 a 100 búsquedas"]
★ [fuente: 16.Keyword planner — "muchos de vosotros no os deis eso. He activado la campaña y hasta las dos semanas no hayan empezado a salir todo"]
★ [fuente: 08.Keyword Planner — "hacer una campaña de Google AdWords en la que os gastéis un euro"]
> Qué dice la fuente: sin campaña activa se pierden datos exactos y estacionalidad; activar con 1€ desbloquea los datos pero puede tardar hasta 14 días.
> Qué hace el paso: informa al humano de las tres situaciones posibles (campaña activa, sin campaña con datos exactos pendientes, sectores con franjas) y el coste/tiempo para resolverlo.

**Check 4 (sector sensible):**
★ [fuente: 06.Herramientas — "cuando quieres sacar búsquedas de cosas de las que no se pueden hacer anuncios en Google, no te da respuesta. Y esto os va a pasar con proyectos que tengan que ver con temas de salud muchas veces, con temas de fármacos, con temas de vapeadores"]
> Qué dice la fuente: lista de sectores donde el Planner no funciona.
> Qué hace el paso: identifica si aplica antes de empezar, para redirigir a herramienta alternativa.

### PASO 1 — RECOPILAR TÉRMINOS BASE

★ [fuente: 07.Concatenador — "las que hayamos encontrando ya nuestro proceso de exploración sobre el sector, sobre la competencia y demás [...] hablar también mucho con el cliente para que él nos diga su conocimiento del mercado"]
★ [fuente: 07.Concatenador — "en Cataluña se dice bambas. Incluso, y lo sé porque tengo familia en Galicia, sé que en Galicia le dicen tenis"]
[fuente: 07.Concatenador — "el tema del single y el plural. Es una alternativa más que poner en el buscador"]
[fuente: 07.Concatenador — "las faltas de ortografía o diferentes formas de escribir una palabra"]
> Qué dice la fuente: los términos base vienen del cliente, la experiencia, la competencia, y sinónimos regionales. Hay que incluir singular/plural, tildes/sin tildes, inglés/español.
> Qué hace el paso: estructura esas fuentes como preguntas concretas al humano.

### PASO 2 — GENERAR COMBINACIONES

[fuente: 07.Concatenador — "esta herramienta nos ayuda a poder valorar todas las combinaciones de golpe y que no nos estemos dejando nada y ahorrándonos tiempo para no tener que hacerlo de forma manual"]
[fuente: 07.Concatenador — "probar combinaciones para ver cuál es sentido y cuáles no. A, B, C tiene sentido. A, C, de nuevo, también tiene sentido si quitamos la preposición. C, A, aquí C, A también tiene sentido"]
> Qué dice la fuente: el concatenador prueba todas las combinaciones de columnas y el humano selecciona las que tienen sentido gramatical.
> Qué hace el paso: describe esa lógica para que el agente la replique manualmente si la herramienta no está disponible.

### PASO 3 — CARGAR Y CONFIGURAR

★ [fuente: 09.Funciones — "aquí solo puedes añadir 10 palabras clave juntas para que te des sugerencias, pero en este caso no estamos hablando de sugerencias, yo lo que quiero es añadir un listado largo de palabras clave guardadas"]
> Qué dice la fuente: hay DOS lugares diferentes en el Planificador con comportamientos diferentes. El límite de 10 aplica solo a la casilla de sugerencias, no a "Palabras guardadas".
> Qué hace el paso: distingue explícitamente las dos pestañas y dónde va cada cosa, e incluye el límite de 10 como advertencia visible.

★ [fuente: 09.Funciones — "excluir palabras clave del plan, siempre. Estas dos filtros, siempre que empecéis a hacer un Keyword Research, los tenéis que poner"]
> Qué dice la fuente: el filtro "excluir del plan" es obligatorio, no opcional.
> Qué hace el paso: lo marca como obligatorio con instrucción directa.

[fuente: 09.Funciones — "poner aquí 500 filas"]
> Qué dice la fuente: configurar 500 filas para trabajar más rápido.
> Qué hace el paso: instruye hacerlo en PASO 3.4.

[fuente: 09.Funciones — "poner un mínimo de búsquedas en 10 [...] si estáis trabajando un sector en el que no queréis dejar ninguna palabra clave, fuera ponéis 10"]
> Qué dice la fuente: mínimo de 10 para no perder keywords con demanda real; subir a 100 o 1000 para sectores de alta demanda.
> Qué hace el paso: incluye ambas instrucciones en Filtro 1, con el criterio para decidir entre ellas.

[fuente: 09.Funciones — "este filtro de excluir ideas de contenido para adultos, siempre te lo pone, automáticamente, lo quitamos"]
> Qué dice la fuente: viene activado por defecto y hay que quitarlo.
> Qué hace el paso: incluido como instrucción específica en Filtro 3.

[fuente: 09.Funciones — "Los rangos de fechas, perdón que no he dicho nada, no los toquéis"]
> Qué dice la fuente: no modificar fechas.
> Qué hace el paso: incluido como instrucción en PASO 3.3.

[fuente: 09.Funciones — "vamos a empezar, para empezar necesito introducir una palabra clave o un dominio, os recomiendo empezar por aquí [...] ¿Por qué no voy a utilizar un dominio?"]
> Qué dice la fuente: iniciar con keyword, no con dominio, porque el sitio no está optimizado.
> Qué hace el paso: incluido en PASO 3.2.

### PASO 4 — REVISAR SUGERENCIAS

★ [fuente: 04.Tipos de Keywords — "una de las mejores formas de saber si una keyword es transaccional o informacional [...] es ir a Google a hacer búsquedas"]
★ [fuente: 04.Tipos de Keywords — "No suelen salir resultados de Google Ads [...] cuando haces una búsqueda en Google, si una keyword es transaccional, suele tener anuncios arriba"]
> Qué dice la fuente: criterio operativo para clasificar: buscar en Google y ver si hay anuncios y páginas de producto (transaccional) o artículos e información (informacional).
> Qué hace el paso: incluido como criterio de inclusión con descripción del método de verificación.

[fuente: 10.Keyword Research Práctico — "mejor agencia SEO no es un keyword transaccional [...] mejor, mejores en negativo"]
[fuente: 10.Keyword Research Práctico — "precio y precios. [...] Es una búsqueda informacional de muchísima calidad [...] pero no es transaccional"]
[fuente: 10.Keyword Research Práctico — "agencia SEO ciudad real, no me interesa [...] ciudades donde no hay oficina"]
> Qué dice la fuente: categorías específicas de keywords a excluir del transaccional.
> Qué hace el paso: listadas explícitamente como negativas obligatorias.

[fuente: 10.Keyword Research Práctico — "¿Qué pasará cuando llega un momento en que tú haces varias pruebas introduciendo diferentes keywords y no hay ninguna sugerencia que me sirve? Ese será el momento en el que tú hayas acabado"]
> Qué dice la fuente: señal de fin del plan.
> Qué hace el paso: incluido como criterio de cierre del PASO 4.

### PASO 5 — DESCARGAR CSV

[fuente: 10.Keyword Research Práctico — "le doy a CSV [...] voy a estar trabajando con los keywords research normalmente con Excel"]
[fuente: 10.Keyword Research Práctico — "Google Spreadsheets como está en la nube se queda corto [...] PETA"]
> Qué dice la fuente: CSV es el formato correcto; Google Sheets falla con grandes volúmenes.
> Qué hace el paso: instruye descargar en CSV y explica la razón.

### PASO 6 — CONSTRUIR EXCEL

[fuente: 11.Presentación — "eliminar columnas que no nos sirven de nada"]
[fuente: 11.Presentación — "quiero el año natural para poder ver la estacionalidad y entenderla más rápida"]
[fuente: 11.Presentación — "vamos a quitar todos estos punto cero [...] buscar y reemplazar"]
[fuente: 11.Presentación — "donde no haya nada, voy a pedirle que me ponga un cero [...] ordenar por volumen y de cero hacia abajo, como veis, me las cargo"]
[fuente: 11.Presentación — "escala de color de los meses de más demanda a menos demanda, menos demanda en rojo, más demanda en verde"]
[fuente: 11.Presentación — "el mes con más demanda salga en negrita"]
[fuente: 11.Presentación — "línea de nuevo [...] tendencia anual"]
[fuente: 11.Presentación — "a mí me gusta marcarla en gris para que se entienda que no es tan relevante"]
[fuente: 11.Presentación — "darle al formato así un poco que destaque más, le voy a poner esta narajita"]
[fuente: 11.Presentación — "congelar primera fila"]
[fuente: 15.Anexo 2 — "guardar como, vale, para poder cambiar el nombre del documento y lo ponemos en XLSX"]
> Qué dicen las fuentes: pasos detallados de limpieza y formato en Excel.
> Qué hace el paso: incluidos todos en PASO 6.1 y 6.2 en el mismo orden que la fuente.

[fuente: 11.Presentación — "agrupándolo por pestañas para que sea todo mucho más claro"]
> Qué dice la fuente: una pestaña por categoría.
> Qué hace el paso: incluido en PASO 6.3.

### PASO 7 — SEGUIMIENTO

[fuente: 13.Tracking — "quiero ver cuál era el posicionamiento de esas Keywords antes de hacer nada [...] empiezo a traquear las Keywords para ver antes y después"]
[fuente: 13.Tracking — "los dispositivos móviles y los dispositivos de escritorio [...] son independientes"]
[fuente: 13.Tracking — "conectar wells console [...] para que los datos que tiene que tenga esta herramienta son mejores"]
> Qué dice la fuente: el seguimiento empieza antes de actuar, en escritorio y móvil por separado, conectado a Search Console.
> Qué hace el paso: incluido en PASO 7 con las tres instrucciones.

---

## MAPA DE COBERTURA — LISTA DE NÚMEROS/LÍMITES (para revisión humana)

Esta lista es para que el humano confirme que ningún número de la fuente se omitió sin razón explícita:

| # | Número | De qué trata | ¿Entró al arnés? | Dónde / Por qué no |
|---|--------|--------------|------------------|---------------------|
| 1 | **10** (límite casilla de sugerencias) | Máximo de palabras que acepta la casilla de búsqueda de sugerencias del Planificador | ✅ SÍ | PASO 3.2 — con advertencia visible y distinción respecto a "Palabras guardadas" |
| 2 | **10** (mínimo de búsquedas) | Valor mínimo de búsquedas/mes que muestra Google; umbral estándar del filtro | ✅ SÍ | PASO 3.3 Filtro 1 |
| 3 | **100 / 1.000** (filtro para alta demanda) | Alternativa al mínimo de 10 para sectores con muchísimas keywords | ✅ SÍ | PASO 3.3 Filtro 1 (como criterio de ajuste) |
| 4 | **500** (filas de visualización) | Número de filas a mostrar en el Planificador para trabajar más cómodo | ✅ SÍ | PASO 3.4 |
| 5 | **1 euro** (campaña mínima) | Gasto mínimo para desbloquear datos exactos en el Planificador | ✅ SÍ | PASO 0 verificación de acceso |
| 6 | **1 a 14 días** (espera para datos exactos) | Tiempo variable que tarda el Planificador en mostrar datos exactos tras activar campaña | ✅ SÍ | PASO 0 verificación de acceso |
| 7 | **6 meses** (prueba TrueRanker) | Período de prueba gratuita de una herramienta de seguimiento | ❌ NO | Dato comercial del momento de grabación del curso — puede estar caducado. El arnés menciona TrueRanker como herramienta válida pero no fija ese período específico. |
| 8 | **98 / 165** (combinaciones de ejemplo) | Salidas del concatenador en los ejemplos prácticos del curso | ❌ NO | Números ilustrativos de un ejemplo concreto. No representan norma ni límite operativo. |
| 9 | Rangos **1-100, 100-1.000** (Planner sin campaña) | Lo que muestra el Planificador sin datos exactos | ✅ SÍ | PASO 0 verificación de acceso |

---

## COBERTURA DE ARCHIVOS FUENTE

| Archivo | Generó pasos en el arnés |
|---------|--------------------------|
| 01.Introducción.txt | No (presentación del instructor, sin método operativo) |
| 02.Keywords.txt | Contexto conceptual (qué es una keyword, long tail, sinónimos) → alimenta criterios de PASO 1 y E04/E05 |
| 03.Customer Journey.txt | Contexto conceptual (fases de compra) → alimenta criterio transaccional/informacional PASO 4 |
| 04.Tipos de Keywords.txt | ★ PASO 4 — criterio de clasificación transaccional/informacional/mixto |
| 05.Estacionalidad y Tendencia.txt | PASO 6 (formato de estacionalidad en Excel) + H03 (Google Trends para tendencia multi-año) |
| 06.1.Links-de-Herramientas.txt | No (solo URLs) |
| 06.Herramientas.txt | PASO 0 Check 4 (sectores sensibles) + E01 + H05-H09 |
| 07.1.Link-Concatenador-de-palabras-clave.txt | No (solo URL) |
| 07.Concatenador de palabras clave.txt | ★ PASO 1 (términos base) + PASO 2 (lógica de combinaciones) |
| 08.Keyword Planner de Google.txt | PASO 0 Check 3 + R01 (Planner como herramienta principal) + N06 |
| 09.Funciones del Keyword Planner de Google.txt | ★ PASO 3 completo (todos los filtros, límite de 10, 500 filas, Palabras guardadas) |
| 10.Keyword Research Práctico.txt | ★ PASO 4 (criterios de inclusión/exclusión, señal de fin) + PASO 5 (descarga CSV) |
| 11.Presentación del Keyword Research.txt | ★ PASO 6 completo (todos los pasos de limpieza y formato del Excel) |
| 12.Ejemplos de Keyword Research.txt | No generó pasos nuevos (ejemplos visuales, confirman R25 sobre pestañas) |
| 13.Tracking de Keywords.txt | PASO 7 completo + H04 (TrueRanker) |
| 14.Anexo 1_ Cómo crear una cuenta de Google Ads.txt | PASO 0 Check 3 (referencia a cómo crear la cuenta) — no genera paso propio |
| 15.Anexo 2_ Cómo presentar Keyword Research en Windows.txt | PASO 6 (R26 guardar como XLSX, R30 macro Windows) |
| 16.Keyword planner.txt | ★ PASO 0 Check 3 (rangos sin campaña activa, tiempo de espera 1-14 días) |
| 17.Ejercicios.txt | Confirma N12 (mínimo 10 para análisis de casetas para perros) — no genera paso nuevo |
| LEEME.txt | No (nota organizativa de la carpeta) |
