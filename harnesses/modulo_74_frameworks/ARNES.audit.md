# AUDITORÍA — MÓDULO 74: FRAMEWORKS (Constructor v2.7, 2026-10-31)

## 1. Clasificación y secuencia real del método
- Categoría: SABER (explicativo), con una tarea práctica de criterio ligera (bloque de metaetiquetas de la página de inicio). Sin molde de entregable (Fase 5): decisión mía, no de la fuente.
- Riqueza de fuente (Compuerta de riqueza): hay criterio real sobre metaetiquetas (excepciones de robots, valores contradictorios, fecha de caducidad, cuándo NO usar nada), renderizado y colaboración con programadores; es floja en código literal (no hay fragmentos completos) y en procedimientos reproducibles de frameworks.
- Secuencia declarada de la fuente: introducción y por qué importa (B1) > qué es un framework (B1) > cómo funciona una web (B2) > metaetiquetas (B3) > tecnologías según lenguaje (B4) > WordPress de forma distinta y copia local (B5) > Laravel y trabajo con programadores (B6) > frameworks de JavaScript y renderizado (B7) > curiosidades de CSS (B8) > ejercicio. El arnés deja al humano elegir bloque; el primer entregable simple es el resumen del bloque pedido.

## 2. Estado de lectura de cada archivo
- 00.Ejercicio.pdf: leído completo con pdftotext.
- 01.Frameworks.pdf: texto extraído (títulos, un bloque de código Laravel, ejemplo de hreflang). Los diagramas y capturas no tienen texto: LIMITACIÓN, su contenido no se inventó.
- 01.Introducción.txt, 02, 03, 04, 05, 06, 07, 08, 09: leídos completos. 
- 08: el comienzo de la parte de renderizado en el navegador falta (el texto empieza a mitad de la idea). LIMITACIÓN.

## 3. Equivalencias deducidas de la transcripción (por contexto; ninguna inventada)
- joaceo / yo a SEO / yodo SEO = Yoast SEO; ramad = Rank Math.
- Symphony = Symfony; Larabel = Laravel; View = Vue; Gas B = Gatsby; gritson = Gridsome; nex = Next; no (como competencia de Next) = Nuxt; ría/riac = React; graf cuel = GraphQL; Subify = Shopify; Kaya = Kayak; Bustra/bustrap = Bootstrap; puh = Pug; teguin = Tailwind; buss css = PurgeCSS; yango = Django; espring = Spring; ugo = framework de Go (nombre exacto ilegible).
- IAX = AJAX; Analyze Voláfter = unavailable_after; Ventana In Ratting Content Adult = metaetiqueta de clasificación para adultos (rating); Metal in Google = metaetiqueta google; Metal in Viewport = viewport; match image preview = max-image-preview; AL = all; Yuma en Texte = humans.txt (decisión de lectura, poco seguro); metatax.io = metatags.io; Crowler = rastreador.
- uvp content / uvp admin / uvp include = wp-content, wp-admin, wp-includes; gd.php = header.php; intespérate = index.php; apas custom fill = Advanced Custom Fields; Lagón/larago = Laragon.
- NO resueltos (no se usaron): webref a escache / v3cache (dos plugins de caché), Vila (herramienta tipo repositorio hecha con Vue), vtsskud (sitio de aprendizaje), ir wikid (otro framework de CSS), lista de usuarios de Gatsby salvo Figma, React y DigitalOcean.

## INVENTARIO EN BRUTO (destinos: B1..B8 = bloques del arnés; EJ = tarea práctica; P0 = PASO 0; PAR = parches; C1..C5 = compuertas)

### 00.Ejercicio.pdf (ejercicio, texto extraído OK)
- [00.Ejercicio — "Llevamos el SEO de una conocida aerolínea internacional"] → EJ (contexto del caso)
- [00.Ejercicio — "cómo se tendrían que ver en el front-end las metaetiquetas de la home"] → EJ (entregable: cómo se ven las metaetiquetas ya renderizado)
- [00.Ejercicio — "El título que sea: <Título que quieras>"] → EJ (título libre, lo pone el humano)
- [00.Ejercicio — "La descripción sea: <Añade la descripción aquí>"] → EJ (descripción la pone el humano)
- [00.Ejercicio — "El canonical sea: https://www.ejemplo.com"] → EJ (canonical dado; ojo con ejemplo.com frente a example.com, ver decisiones)
- [00.Ejercicio — "Tenga una buena configuración href lang hacia"] → EJ (hreflang en https://www.example.com/en)
- [00.Ejercicio — "y un x-default hacia la versión en español"] → EJ (x-default; URL en español no dada: pendiente)
- [00.Ejercicio — "Que el Robots sea index y follow"] → EJ (robots index, follow)
- [00.Ejercicio — "Puedes entregarlo en formato .txt .html o .php"] → EJ (formatos admitidos)

### 01.Frameworks.pdf (diapositivas, texto extraído OK; solo títulos, un bloque de código y diagramas sin texto)
- [01.Frameworks — "¿Por qué debería un SEO aprender algo sobre"] → B1
- [01.Frameworks — "Colaboración con programadores."] → B1
- [01.Frameworks — "Posibilidad de llevar a cabo proyectos más grandes."] → B1
- [01.Frameworks — "Entendimiento más en profundidad de cómo funciona una web."] → B1
- [01.Frameworks — "Conjunto estandarizado de conceptos,"] → B1 (definición formal)
- [01.Frameworks — "Lenguajes del lado del cliente y del lado del servidor"] → B2
- [01.Frameworks — "Metas Seo Internacional"] → B3.9 y EJ (bloque con canonical y varios hreflang; ejemplo: en, fr, zh, x-default, sr, ru, es)
- [01.Frameworks — "HTML lang"] → B3.1
- [01.Frameworks — "Lenguaje Library Frameworks CMS Sitebuilder"] → B4 (escala de tecnologías)
- [01.Frameworks — "Frameworks PHP"] → B6
- [01.Frameworks — "{{ __('home.titleseo') }}"] → B6 (ejemplo de plantilla Laravel: el título viene de un archivo de textos)
- [01.Frameworks — "{{ asset('/tb/example.jpg') }}"] → B6 (ejemplo: imagen Open Graph con función de plantilla)
- [01.Frameworks — "summary_large_image"] → B3.7 (tipo de tarjeta de Twitter en el ejemplo)
- [01.Frameworks — "{{ __('home.current_URL') }}"] → B6 (misma URL en canonical, og:url y twitter:url)
- [01.Frameworks — "Rendering - SPA - CSR"] → B7
- [01.Frameworks — "Dynamic Rendering"] → B7
- [01.Frameworks — "Server Side Rendering SSR"] → B7
- [01.Frameworks — "Hybrid Rendering"] → B7
- [01.Frameworks — "React* / Vue.js"] → B7
- [01.Frameworks — "Gatsby / Gridsome"] → B7
- [01.Frameworks — "JS - Un deploy"] → B7
- [01.Frameworks — "Next / Nuxt"] → B7
- [01.Frameworks — "Otros Frameworks"] → B7
- [01.Frameworks — "Curiosidades"] → B8
- DESCARTADO: diagramas (flechas HTTP Request, Biblioteca del cliente, DDBB) sin texto legible; su contenido está explicado en las transcripciones y se reflejó en B2 y B7. Los títulos de plantilla de las diapositivas no aportan.

### 01.Introducción.txt
- [01.Introducción — "podría titular de una forma más sencilla el SEO y las tecnologías web"] → B1
- [01.Introducción — "para mí es importante que os hayáis visto asignaturas muy importantes"] → P0 y B1 (conocimientos previos: etiquetas meta, migraciones, servidores y archivo de configuración del servidor, HTML, CSS, JavaScript; no se exigen, se avisa)
- [01.Introducción — "esta asignatura está puesta de forma autotativa"] → B1 (es temática opcional, de especialización)
- [01.Introducción — "esto es una especialidad puramente técnica"] → B1
- [01.Introducción — "no todos los seos tienen porque saber acerca de esta asignatura"] → B1
- [01.Introducción — "el seo consiste en optimizar la web para conseguir los mejores resultados posibles"] → B1 (la propia fuente dice que la definición es vaga)
- [01.Introducción — "independientemente de la tecnología web que se use"] → B1 (objetivo: implementar SEO técnico en cualquier tecnología)
- [01.Introducción — "o que nosotros sepamos programar un frango no no no"] → B1 (no se enseña a programar un framework)
- [01.Introducción — "y sepamos comunicarnos con programadores con distintos equipos"] → B1 y B6
- [01.Introducción — "podamos hacer que cualquier tipo de web sea posicionable"] → B1
- [01.Introducción — "realmente esos plugins o esos complementos no tenemos disponibles"] → B1 (con frameworks no hay los complementos típicos)
- [01.Introducción — "pues plugins como joaceo o ramad"] → B1 (Yoast y Rank Math, nombres mal transcritos; ver equivalencias)
- [01.Introducción — "para comprobar si nosotros podríamos hacerlo mejor por nuestros propios medios"] → B1 y B3
- [01.Introducción — "nunca se verán afectadas o penalizadas realmente por las nuevas actualizaciones de google"] → B1 (afirmación de la fuente; el arnés la marca como opinión de la fuente, no garantía)
- [01.Introducción — "que el contenido sea lo más relevante para el usuario por su consulta de búsqueda"] → B1
- [01.Introducción — "ese plus extra que nos pondrá por encima del resto de la competencia"] → B1
- [01.Introducción — "como pueden ser la cara el bnb walmart las compañías aéreas"] → B1 (ejemplos de grandes proyectos: BlaBlaCar, Airbnb, Walmart, aerolíneas)
- [01.Introducción — "todas estas páginas requieren de seo y no tienen exactamente plugins"] → B1
- [01.Introducción — "sino que se los desarrollan ellos propios"] → B1 (desarrollan su propio SEO técnico)
- DESCARTADO: saludos, repetición sobre trabajar en grandes multinacionales y frases de relleno de la transcripción; Panda y Pingüino se mencionan solo de pasada ("tanto de ping-wink como de panda"), la fuente no los desarrolla.

### 02.Qué es un framework.txt
- [02 — "para mí la mejor forma de definirlo sería decir que sería un ecosistema"] → B1
- [02 — "un conjunto de códigos ya prehechos en un lenguaje de programación para ahorrar tiempo"] → B1
- [02 — "crear un sistema de registro de usuarios"] → B1 (ejemplo de lo que ya viene resuelto)
- [02 — "ya se tiene montado una estructura de web para decir dónde está cada componente"] → B1 (estructura predefinida)
- [02 — "pero no limitándote de la misma forma que te acabas limitando con un cns"] → B1 y B4 (frente a un gestor de contenidos hay más flexibilidad)
- [02 — "hay una gran flexibilidad para crear cualquier tipo de web o programa"] → B1
- [02 — "los framework no solo están hechos para las páginas webs"] → B1
- [02 — "me voy a ir a comprar los ingredientes bases para hacerme yo mi pan totalmente personalizado"] → B1 (analogía del pan: opcional, solo si el humano no entiende)
- [02 — "yendo a la panadería y comprando tú el pan que tú necesitas"] → B1 (analogía: gestor de contenidos)
- [02 — "equivalente para mí a los signbuilders tipo wix tipo webli"] → B1 y B4 (creadores de sitios tipo Wix o Weebly; el pan que otra persona te deja)
- [02 — "luego veremos la diferencia entre un framework y una librería"] → B4

### 03.Cómo funciona una web.txt
- [03 — "la computación actual funciona con el sistema binario"] → B2
- [03 — "se conocen como lenguajes de bajo nivel, que son porque son los del nivel más cercano a máquina"] → B2
- [03 — "ensamblador por ejemplo fue uno de los primeros lenguajes"] → B2
- [03 — "esos lenguajes de alto nivel son lo que nos puede interesar a nosotros"] → B2
- [03 — "que podrían ser de 5 a 10 años hacer una página web"] → B2 (cifra: tiempo estimado por la fuente de hacer una web en lenguaje muy bajo; es estimación oral, no dato)
- [03 — "y un framework, y esto lo cojo en mis tramosillas, sería un telomero"] → DESCARTADO: analogía biológica confusa; la propia fuente pide perdón por ella; se sustituye por la analogía simple de B1
- [03 — "se agarrará principalmente de PHP, de JavaScript"] → B2 y B4 (lenguajes principales; Python y Java se citan por encima; Ruby como otro posible)
- [03 — "No todos los tipos de lenguaje de programación valen para programar una página web"] → B2
- [03 — "que están hechas con PHP y con JavaScript"] → B2
- [03 — "eran páginas totalmente estáticas que servían básicamente como un escaparate"] → B2 (Web 1.0)
- [03 — "lo que tenía que hacer era copiar el email para poder mandar un email"] → B2 (Web 1.0 sin formularios)
- [03 — "un servidor es un ordenador con todos los programas necesarios para que corra una página web"] → B2
- [03 — "llega al dominio de la misma por medio del DNS, que es un protocolo"] → B2
- [03 — "hace que se lleve a la IP de ese ordenador, de ese servidor"] → B2
- [03 — "cuando la web ya empieza a hacer que un usuario sea capaz de poder interactuar con la web"] → B2 (Web 2.0)
- [03 — "Si bien es cierto que se le han hacer cada web 3.0"] → B2 (Web 3.0 solo se menciona; la fuente no la desarrolla)
- [03 — "pero podríamos ser nosotros por ejemplo desde un móvil"] → B2 (el cliente es el dispositivo del usuario)
- [03 — "básicamente el cliente le hace una petición, y el servidor les manda de vuelta lo que sería el HTML y el CSS"] → B2 (flujo Web 1.0)
- [03 — "el servidor le envía toda esa información con HTML, el CSS y en este caso Java Script"] → B2 (flujo Web 2.0)
- [03 — "Los navegadores modernos a día de hoy están preparados para hacer funcionar Java Script"] → B2
- [03 — "este Java Script no se procesa en el servidor, sino que se procesa desde nuestro lado"] → B2 y B7
- [03 — "lo que se está haciendo es utilizar IAX"] → B2 (IAX = AJAX, ver equivalencias)
- [03 — "a día de hoy también existen Axios y Fetch"] → B2
- [03 — "ya no es necesario que vaya entrando cada vez a esa página web"] → B2 (carga dinámica sin recargar)
- [03 — "porque nos va a servir para detectar errores a nivel de la velocidad"] → B2 (por qué importa al SEO)
- [03 — "no solo no tenemos que porque aprender a hacer nada de esto"] → B2 (hay que entenderlo, no programarlo)
- DESCARTADO: relleno sobre ordenadores cuánticos, botón de encendido, historia de navegadores y repeticiones; la fuente cierra anunciando las metaetiquetas.

### 04.Metafields.txt (tema: metaetiquetas)
- [04 — "información muy teórica y muy avanzada sobre las metas"] → B3
- [04 — "por eso estas metas no son visibles"] → B3.1 (las metaetiquetas no se ven en la página)
- [04 — "sólo uno de ellos tiene el nombre, la palabra meta"] → B3.1 (en SEO se llaman metas también el title y el canonical)
- [04 — "también el link real canonical y el title también se consideran metas"] → B3.1
- [04 — "yo considero que lo mejor es que sepáis realmente cómo son las metas"] → B3 (saber código para detectar errores y añadir metas que los plugins no traen)
- [04 — "para que podáis identificar cuando hay algún error con alguna"] → B3 y PAR
- [04 — "hay muchos y de hecho yo os recomiendo que para seguir las clases os descarguéis algunos"] → B3.10 (editor de texto)
- [04 — "Atom, pero también hay otros bastante, bastante buenos como puede ser Notepad o como puede ser VS Code"] → B3.10 (Atom, Notepad y VS Code; ver nota de Atom como herramienta posiblemente desactualizada)
- [04 — "que te pueda diferenciar por colores"] → B3.10 (resaltado de colores para ver etiquetas sin cerrar)
- [04 — "pero realmente lo más correcto es dejar ese slash ahí"] → B3.1 (cerrar etiquetas sin cierre con barra)
- [04 — "Un atributo quiere decir el contenido que yo le meto dentro de la etiqueta"] → B3.1
- [04 — "Esto sirve para decir en qué idioma está tu documento"] → B3.1 (atributo lang de html)
- [04 — "más que Google, en este caso lo es Bing"] → B3.1 (la fuente dice que lang importa más a Bing que a Google)
- [04 — "le ponéis la barra baja y le ponéis por el ISO, cuál es el país"] → B3.1 (la fuente dice barra baja entre idioma y país; ver limitación: confirmar formato vigente)
- [04 — "todo lo que vaya dentro del HEA deberá o suele ser oculto"] → B3.1 (head va oculto)
- [04 — "nunca hay que confundirlo con la etiqueta HEA-der"] → B3.1 (head distinto de header)
- [04 — "JavaScript analíticas como Google Analytics"] → B3.1 (en el head también van scripts como analítica)
- [04 — "Todo esto irá dentro del body"] → B3.1
- [04 — "pongáis las etiquetas en el HEA-der"] → B3.1 (poner metas fuera del head: los buscadores probablemente no las leen)
- [04 — "probablemente los motores de búsqueda no lo leerían correctamente"] → B3.1 y PAR
- [04 — "Una meta etiqueta muy a tener en cuenta es la meta etiqueta ROBOX"] → B3.2 (robots)
- [04 — "se considerará una meta etiqueta con estas características"] → B3.2 (sin etiqueta robots equivale a index y follow)
- [04 — "ponerla de Google Bot debajo y poner las características específicas"] → B3.2 (si hay robots general y de Googlebot, la de Googlebot va debajo)
- [04 — "Google Bot News, que es una característica de bot diferente"] → B3.2 (existen bots distintos, por ejemplo el de noticias)
- [04 — "Aquí tenemos el content AL, que significa tanto index como follow"] → B3.2 (all = index, follow; AL = all)
- [04 — "es mejor poner AL y evitar cualquier tipo de error"] → B3.2 (usar all o escribir ambos; evita fallo humano)
- [04 — "tanto con espacio como con coma"] → B3.2 (separador de valores: espacio o coma; Google lo entiende)
- [04 — "continúe con los enlaces que hay dentro de esta página"] → B3.2 (follow = seguir enlaces)
- [04 — "Google puede hacer lo que él soberanamente quiera"] → B3.2 y PAR (robots es petición, no orden)
- [04 — "bloquear al bot de Google del propio servidor o hacer que esa página en concreto se tenga que traer por contraseña"] → B3.2 (para que de verdad no se indexe: contraseña o bloqueo en servidor)
- [04 — "lo que sí que no sirve es para desindexar una URL"] → B3.2 (noindex solo complementa; usar la herramienta de retirada de Search Console)
- [04 — "se retira temporalmente y se retira por seis meses"] → B3.2 (cifra: 6 meses la retirada temporal; mantener noindex para que no vuelva)
- [04 — "puede contener pues información tuya"] → B3.2 (retirar contenido ajeno con herramientas propias de Google solo para información personal; la fuente no detalla el procedimiento)
- [04 — "no recomiendo utilizar nunca ese negativo"] → B3.2 (SEO negativo no se recomienda y la fuente dice que no funciona)
- [04 — "se interpreta como no index follow"] → B3.2 (noindex solo equivale a noindex, follow)
- [04 — "no quieres tener penalización porque no quieres indexar contenido que no sea realmente tuyo"] → B3.2 (caso de uso noindex, follow: página con contenido de otra web pero enlaces propios)
- [04 — "Esto genera cierta controversia"] → B3.2 (index, nofollow es polémico; caso: muchos enlaces a webs sin confianza)
- [04 — "se puede poner directamente un no, que esto es válido como ambas etiquetas a la vez"] → B3.2 (none = noindex, nofollow)
- [04 — "todos estos atributos en la meta etiqueta robots son acumulables, a no ser que sean contradictorios"] → B3.2 (regla: valores acumulables salvo contradicción)
- [04 — "ponerla a meta etiqueta no Archive"] → B3.2 (noarchive: no guardar copia en caché; útil con contenido que cambia, por ejemplo resultados deportivos o noticias)
- [04 — "Esto no dificulta que Google indexe tus propias páginas web"] → B3.2 (noarchive no impide indexar)
- [04 — "no te va a poner una descripción, no te va a poner fragmentos enriquecitos"] → B3.2 (nosnippet: sin descripción ni fragmento; la fuente casi no lo usa en la práctica)
- [04 — "un máximo de caracteres"] → B3.2 (max-snippet limita caracteres del fragmento)
- [04 — "si tú dices que el máximo snippet son cero caracteres"] → B3.2 (cifra: 0 caracteres equivale a nosnippet)
- [04 — "si le pones menos uno, te lo va a tomar exactamente como si estuviera"] → B3.2 (cifra: -1 equivale a sin límite)
- [04 — "ponerle 46 caracteres"] → B3.2 (cifra: 46 es solo un ejemplo de límite; no es recomendación)
- [04 — "se define un máximo de snippet, no se define un mínimo"] → B3.2
- [04 — "el match image preview o el max video preview"] → B3.2 (max-image-preview y max-video-preview: la fuente no los detalla; MODO GUÍA)
- [04 — "no translate que es para que Google no haga una versión traducida de tu página"] → B3.2 (notranslate)
- [04 — "no me indexes las imágenes"] → B3.2 (no indexar imágenes de la página; nombre exacto del valor no aparece en la fuente, ver equivalencias)
- [04 — "Analyze Voláfter"] → B3.2 (unavailable_after, ver equivalencias)
- [04 — "según las directrices de la ISO, 8.601"] → B3.2 (cifra: formato de fecha ISO 8601)
- [04 — "Si no se pone ninguna fecha, esta directrice no funciona"] → B3.2 (sin fecha no funciona; se puede añadir hora)
- [04 — "rastreará cada vez con menos frecuencia esa página"] → B3.2 (efecto: desindexa y rastrea menos hasta dejar de hacerlo)
- [04 — "se pondría data no snippet"] → B3.3 (atributo data-nosnippet en un bloque de la página)
- [04 — "tiene que estar siempre cerrado"] → B3.3 (el bloque debe estar cerrado)
- [04 — "no recomiendo para técnica plajas"] → B3.3 y PAR (no usar para engañar; Google lo lee)
- [04 — "cuando es un contenido que no generas tú"] → B3.3 (uso recomendado: contenido ajeno como un plugin de Twitter o comentarios)
- [04 — "no confundir nunca con MetaName Googlebot"] → B3.4 (meta google distinta de googlebot y de robots)
- [04 — "Google anunció en 2014"] → B3.4 (cifra: 2014, año del anuncio)
- [04 — "tiene tres atributos"] → B3.4 (cifra: 3 atributos)
- [04 — "Amazon, por medio de sus propias analíticas"] → B3.4 (ejemplo: Amazon bloquea la caja de búsqueda dentro de Google)
- [04 — "un buscador dentro de tu propia web y quieres que una persona desde el propio Google pueda buscar sin salir del resultado"] → B3.4 (el efecto contrario: si quieres la caja, no bloquearla)
- [04 — "no son incompatibles entre uno y otro"] → B3.4 (los tres son acumulables)
- [04 — "no quiero que tu asistente virtual sea capaz de leer mi página en voz alta"] → B3.4 (tercer atributo: impedir lectura en voz alta; la fuente no la recomienda en general)
- [04 — "no quiere decir que si existen estas metatiquetas hay que utilizarlas"] → B3.4 y PAR (conocerlas no obliga a ponerlas)
- [04 — "solo alguien con acceso a esa web"] → B3.5 (por qué existen las de verificación)
- [04 — "por medio del DNS"] → B3.5 (otros métodos de verificación: DNS y vincular con Google Analytics)
- [04 — "Yandex, que es un buscador ruso"] → B3.5
- [04 — "Baidu, que es un buscador chino"] → B3.5
- [04 — "360, que es otro buscador chino"] → B3.5
- [04 — "Para verificar que se dominió realmente es tuyo"] → B3.5 (también hay verificación de Facebook)
- [04 — "No voy a recomendar un orden en el específico"] → B3.5 (el orden no importa mientras estén en el head; mantener un orden propio fijo)
- [04 — "con el UTF-8 simplemente estás indicando el código de escritura"] → B3.6 (charset)
- [04 — "una página que sea en árabe o que sea en cilílico"] → B3.6
- [04 — "Metal in Viewport"] → B3.6 (viewport, importante para móvil; la fuente lo desarrolla en otra parte)
- [04 — "Ventana In Ratting Content Adult"] → B3.6 (rating adult, ver equivalencias)
- [04 — "no lo penaliza directamente, pero tampoco tampoco te ayuda"] → B3.6 (afirmación de la fuente)
- [04 — "separen las imágenes en directorios diferentes"] → B3.6 (imágenes para adultos en carpetas distintas)
- [04 — "El Open Graph fue un protocolo desarrollado por Facebook"] → B3.7
- [04 — "cuando compartes un enlace en Facebook cuando compartes un enlace en LinkedIn"] → B3.7 (Open Graph se usa al compartir; también Skype, Slack, WhatsApp)
- [04 — "esta meta etiqueta no existe no funciona para nada"] → B3.7 y PAR (la metaetiqueta name=title no existe ni funciona)
- [04 — "Google no va a tomar nunca tu meta título ni tu meta descripción con respecto al Open Graph"] → B3.7
- [04 — "optimizar cada uno para lo que es"] → B3.7 (optimizar title y description por separado para Google y para cada red)
- [04 — "poner la misma imagen en Secure URL que en imagen"] → B3.7 (og:image:secure_url igual a og:image; si no hay HTTPS no existe)
- [04 — "un al para la imagen"] → B3.7 (og:image:alt como texto alternativo)
- [04 — "cuál es el nombre del sitio que es necesario"] → B3.7 (og:site_name, la fuente lo marca como necesario)
- [04 — "esto es siempre necesario ponerlo en Twitter el Twitter card"] → B3.7 (twitter:card siempre)
- [04 — "siempre debe coincidir si se pone una URL en Open Graph"] → B3.7 (twitter:url igual a og:url; la fuente recomienda que sea también la del canonical)
- [04 — "no es el mismo title que se demostrará en el Open Graph"] → B3.7 (Twitter tiene su propio title, description e imagen)
- [04 — "que es exactamente un Debugger"] → B3.8
- [04 — "no se va a actualizar de forma automática en Facebook"] → B3.8 (hay que forzar nueva lectura)
- [04 — "Facebook ha almacenado tu página en cache"] → B3.8 (causa de que no cambie la imagen)
- [04 — "le pongo test version 1"] → B3.8 (truco: añadir un parámetro a la URL de og:url para que se lea como página nueva)
- [04 — "va a depender de lo que ha Crowlerado con LinkedIn"] → B3.8 (Skype y Microsoft dependen de LinkedIn)
- [04 — "se hace por medio de Facebook"] → B3.8 (WhatsApp depende de Facebook)
- [04 — "el que funciona diferente como hemos explicado antes es Twitter"] → B3.8 (Twitter con su propio depurador; Telegram en parte; la fuente no detalla)
- [04 — "los Lil' Real Alternate los cuales generan en muchas ocasiones cierta confusión con los Canonical"] → B3.9 (hreflang se confunde con canonical; se trata en SEO internacional)
- [04 — "meta etiqueta name para baja autor"] → B3.9 (meta author)
- [04 — "directrices del Yuma en Texte"] → B3.9 (humans.txt, ver equivalencias; sin valor SEO directo)
- [04 — "ver código fuente de la página"] → B3.10 (ver el código fuente de la competencia con Ctrl+U en Windows en el navegador de la fuente)
- [04 — "otro Open Graph que no he comentado que es el local"] → B3.7 (og:locale)
- [04 — "incluso las opciones de insertar ciertos videos o gifs"] → B3.7 (Open Graph admite vídeo y gif; sin detalle)
- [04 — "metatax.io"] → B3.10 (metatags.io, ver equivalencias: genera y previsualiza metas)
- [04 — "seomofo"] → B3.10 (previsualizador de resultado de búsqueda)
- [04 — "la base de google developers en google search center"] → B3.10 (documentación oficial de Google como referencia)
- [04 — "por ejemplo en páginas en las que se desarrollan sin estos tipos de CMS"] → B3 (saber metas sirve para frameworks y temas propios)
- DESCARTADO: relato de la demostración con una web concreta de ejemplo, comentarios sobre el micrófono y sobre la clase anterior de title y description (la fuente remite a ella y no la repite).

### 05.Tecnologías web según el lenguaje.txt
- [05 — "todas las tecnologías web que hay están basadas en lenguaje de programación"] → B4
- [05 — "PHP es un lenguaje de servidor"] → B4
- [05 — "También tenemos C, también tenemos Python"] → B4
- [05 — "es bastante poco frecuente ver páginas hechas realmente con PHP desde cero"] → B4
- [05 — "no hay que reinventar la rueda"] → B4
- [05 — "cuál es la parte que quieres personalizar"] → B4 (criterio de elección: qué parte se quiere personalizar)
- [05 — "van desde facilidad de uso hacia facilidad de uso, pero falta de personalización"] → B4 (escala: más fácil de usar significa menos personalización; la frase de la fuente está alterada)
- [05 — "un conjunto de códigos, prehechos para facilitarte"] → B4 (librería)
- [05 — "pasar de PHP a PDF directamente"] → B4 (ejemplo de librería)
- [05 — "jQuery es una librería basada en JavaScript"] → B4
- [05 — "cada uno de los navegadores interpretaba el JavaScript de una forma distinta"] → B4 (origen de jQuery: compatibilidad entre navegadores)
- [05 — "sería JavaScript vanilla"] → B4 (JavaScript sin librerías ni frameworks)
- [05 — "Los frameworks lo que te dan es un entorno de trabajo"] → B4 (diferencia clave librería frente a framework)
- [05 — "te tienes que adaptar a su forma de programar porque te da una estructura"] → B4
- [05 — "muchos de los frameworks que se conocen hoy día incorporan bastantes librerías"] → B4
- [05 — "Bustra, es una librería de CSS"] → B4 y B8 (Bootstrap; la fuente lo llama librería aquí y framework de CSS en B8)
- [05 — "Bustra, el problema que tiene es que al día de hoy carga bastante"] → B4 y B8
- [05 — "Symphony, como pueden ser Laravel, Angular, Gas B o View"] → B4 (Symfony, Laravel, Angular, Gatsby, Vue; Gas B = Gatsby por contexto)
- [05 — "PC Componentes como Drupal como, por ejemplo, Prestasop están basados en Symphony"] → B4 y B6 (PC Componentes, Drupal y PrestaShop están basados en Symfony)
- [05 — "un CMS, que ya habéis visto, bastante CMS"] → B4
- [05 — "es un gestor de contenidos"] → B4
- [05 — "la línea, y esto es lo que quiero recalcar, es un poco difusa"] → B4 (la frontera entre CMS y framework es difusa)
- [05 — "Twill, que está basado en Laravel, y solo es para el backend"] → B4 (CMS sin cabeza; lado de administración)
- [05 — "WordPress, que cuando lo combinas con Elementor"] → B4 (sin programación)
- [05 — "la parte importante que tiene Subify, es el tema del hosting y del servidor"] → B4 (Shopify, ver equivalencias)
- [05 — "con Subify no se van a poder hacer webs"] → B4 (no sirve para webs tipo BlaBlaCar, Airbnb, buscador de vuelos como Kayak o Skyscanner)
- [05 — "HTML y CSS no son un lenguaje de programación"] → B4 (son lenguajes de marcado)
- [05 — "lenguajes de cara del servidor, como puede ser PHP, como puede ser Python, como puede ser Java"] → B4
- [05 — "TypeScript está basado en JavaScript"] → B4
- [05 — "Node.js"] → B4 (permite usar JavaScript como lenguaje de servidor; no afecta mucho al SEO)
- [05 — "Walmart está hecho en el framework llamado Next"] → B4 y B7 (ejemplo)
- [05 — "no existe un plugin en concreto para una página preliminada de este estilo"] → B4 (cada proyecto tiene estructura distinta, no hay plugin universal)
- [05 — "se podría hacer una librería que facilitase, por ejemplo, la inserción de meras etiquetas"] → B4 (cada lenguaje tiene la suya, no siempre existe)
- DESCARTADO: historia de Internet Explorer frente a otros navegadores, salvo el motivo del nacimiento de jQuery (incluido); referencias a canales de dudas de la academia.

### 06.CMS.txt (WordPress usado de forma distinta)
- [06 — "utilizar simplemente la parte del back de WordPress pero no la parte delante"] → B5 (WordPress sin cabeza)
- [06 — "si no recurres a este tipo de de builders"] → B5 (evitar creadores visuales de páginas y muchos plugins para ir más rápido)
- [06 — "cómo puedes ir implementando prefetch"] → B5 (prefetch, cargas asíncronas y defer de JavaScript: la fuente solo los nombra)
- [06 — "no se pretende que se pague programación"] → B5 (el objetivo es poder pedirle al programador)
- [06 — "podáis instarle a que haga este tipo de desarrollos"] → B5 y B6
- [06 — "montarnos nuestro propio servidor local"] → B5 (servidor local; la fuente usa Laragon, mal transcrito Lagón o larago)
- [06 — "un uvp content"] → B5 (carpeta wp-content: plugins, temas y subidas; ver equivalencias)
- [06 — "si cambiamos cosas en el uvp admin o cambiamos cosas en el uvp include podemos tener bastantes problemas"] → B5 (no tocar wp-admin ni wp-includes: problemas con actualizaciones)
- [06 — "tanto en plugins como en terms en un lobs"] → B5 (los cambios van en plugins, temas y uploads)
- [06 — "necesitas un style de css"] → B5 (un tema mínimo necesita hoja de estilos con cabecera)
- [06 — "realmente lo que necesitas es un intespérate"] → B5 (archivo index.php; ver equivalencias)
- [06 — "el gd.php"] → B5 (header.php con la función de cabecera, ver equivalencias)
- [06 — "el wp footer"] → B5 (footer.php con wp_footer)
- [06 — "esto es para llamar los plugins que hay arriba y los plugins que hay abajo"] → B5 (wp_head y wp_footer cargan lo de plugins)
- [06 — "lo estaba metiendo directamente dentro de la capital de temas"] → B5 (error: el tema debe ir en su propia carpeta dentro de la de temas)
- [06 — "se recomienda siempre tener un archivo llamado function .php"] → B5 (functions.php)
- [06 — "un archivo de CSS que son 83 kilobytes"] → B5 (cifra: 83 KB de CSS por defecto)
- [06 — "que son 18.5 kilobytes"] → B5 (cifra: 18,5 KB de JavaScript por defecto)
- [06 — "esto no recomiendo hacerlo en proyectos que ya estén empezados"] → B5 y PAR (borrar todo el CSS de WordPress rompe estilos)
- [06 — "el único proving realmente imprescindible es el apas custom fill"] → B5 (plugin de campos personalizados, Advanced Custom Fields)
- [06 — "me gusta muchísimo más el editor clásico"] → B5 (preferencia personal de la fuente: editor clásico; no es regla)
- [06 — "ya no necesitaremos un yodo SEO"] → B5 (con campos personalizados se rellena la meta description desde el back y se imprime en el front)
- [06 — "personalizar los JSON por la forma que tú deseis"] → B5 (también datos estructurados)
- [06 — "falta una meta de WordPress que recordemos que era muy importante"] → B5 (añadir viewport)
- [06 — "ahora sí vemos un 100% de performance"] → B5 (cifra: 100 de rendimiento en Lighthouse en una página casi vacía; no es objetivo realista, es demostración)
- [06 — "por todas las extensiones que tengo"] → B5 (las extensiones del navegador distorsionan Lighthouse: probar sin extensiones)
- [06 — "aquí donde haríais el Siamap en esta carpeta"] → B5 (archivos de la raíz: configuración del servidor, robots.txt, sitemap; la fuente no rellena nada)
- [06 — "cómo bajar de un servidor una web propia y emularla en local"] → B5 (copia local de una web)
- [06 — "nos tenemos que descargar todos los archivos de nuestro FTP"] → B5 (paso 1: archivos por FTP)
- [06 — "Nos metemos en phpmyadmin y cogemos toda la base de datos y nos la exportamos"] → B5 (paso 2: exportar base de datos)
- [06 — "reemplazo masivo de toda la versión completa que teníamos en nuestra web"] → B5 (paso 3: reemplazar el dominio antiguo por el local en el archivo exportado)
- [06 — "seleccionar todas las tablas y eliminarlas"] → B5 (borrar tablas del WordPress en blanco antes de importar)
- [06 — "no existe control z en cuestión de bases de datos"] → B5 y PAR (hacer copia de seguridad antes de borrar)
- [06 — "importarme el archivo de SQL"] → B5 (paso 4: importar)
- [06 — "la carpeta de temas directamente la arrastramos"] → B5 (paso 5: copiar temas, plugins y uploads)
- [06 — "cambiamos a la codificación de md5"] → B5 (restablecer la contraseña de un usuario en la tabla de usuarios; la fuente lo hace en la copia local)
- [06 — "Puedo hacer pruebas de redirecciones"] → B5 (probar redirecciones en el archivo de configuración del servidor sin riesgo)
- [06 — "Podemos comprobar si webref a escache"] → B5 (probar compatibilidad entre dos plugins de caché; nombres ilegibles)
- [06 — "Cuántos más plugins vamos metiendo"] → B5 (más plugins, más carga)
- [06 — "primero su prueba local antes de implementar"] → B5 (regla: probar en local antes de producción)
- [06 — "si se utilizase además GitHub"] → B5 (idealmente control de versiones y varios entornos; como mínimo una copia local)
- DESCARTADO: pasos exactos de instalación de Laragon y phpMyAdmin, nombres de la web de ejemplo, comentarios sobre la grabación y recomendaciones de sitios para aprender programación (nombre ilegible).

### 07.Laravel.txt
- [07 — "el framework de PHP más conocido y el único es Laravel"] → B6 (afirmación de la fuente: el más conocido; "el único" es exageración)
- [07 — "Laravel es un framework que está basado en Symphony"] → B6
- [07 — "un calendario gestionable que un profesor del back pueda seleccionar las horas"] → B6 (caso de uso)
- [07 — "marketplace gigantesco antes que utilizar WordPress"] → B6 (caso de uso: mercado grande)
- [07 — "creando recursos totalmente necesarios"] → B6 (WordPress puede generar muchas llamadas)
- [07 — "utiliza un motor de plantillas llamado blade.php"] → B6 (Blade)
- [07 — "frameworks de front end que lo veremos ahora más adelante como pueden ser view o como puede ser angular"] → B6 y B7
- [07 — "es muy difícil averiguar cuál es el framework que utiliza una web por dentro"] → B6 (no se detecta fácil el framework de servidor)
- [07 — "la colaboración entre el SEO y el webmaster es totalmente necesaria"] → B6
- [07 — "no tenemos plugins tipo yo a SEO"] → B6
- [07 — "lo mejor sería que el propio programador del proyecto se encargue de habilitar pues dichos campos"] → B6 (el programador habilita campos para metas, títulos y JSON)
- [07 — "no tiene porque saber cuál es la forma correcta de implementar una etiqueta"] → B6
- [07 — "nuestro trabajo como SEO en estos proyectos es la supervisión"] → B6 (el SEO supervisa y explica qué mostrar)
- [07 — "para nosotros nuestras metatiquetas"] → B6 (el SEO debe entender title, robots con all, none, index, follow, nofollow)
- [07 — "la canonical tiene que estar la urle absoluta"] → B6 y B3 (regla: canonical con URL absoluta)
- [07 — "un Twitter image un Twitter title"] → B6 (el programador no sabe qué son)
- [07 — "tendría que prever un condicional de que si no se rellena este campo esta meta etiqueta no existiría"] → B6 y PAR (regla: si el campo está vacío, la metaetiqueta no se imprime)
- [07 — "coja exactamente el mismo contenido que sea el h1 para poner por ejemplo un headline en un json de noticia"] → B6 (ejemplo de datos estructurados: headline = H1)
- [07 — "vamos a ser nosotros los que le vamos a tener que indicar qué información"] → B6
- [07 — "mucho más trabajo al principio"] → B6 (desventaja)
- [07 — "totalmente limpio y totalmente personalizado"] → B6 (ventaja)
- [07 — "me dejen un espacio para poder insertar código"] → B6 (pedir un espacio en head y footer para código propio)
- [07 — "metiendo el 100.000 plugins"] → B6 (exageración de la fuente sobre apilar plugins; cifra no literal)
- [07 — "proyectos por ejemplo de una compañía aérea"] → B6
- DESCARTADO: la demostración con el programador de la academia y la anécdota del auto canonical con robots noindex (la fuente misma dice que no tiene sentido; solo se recoge que un canonical hacia la propia página con noindex no tiene mucho sentido).

### 08.Frameworks de Javascript.txt (el inicio de la sección sobre renderizado en cliente falta en la transcripción)
- [08 — "no puede cargar los enlaces, no puede cargar los headings"] → B7 (problema del renderizado en cliente: no carga metas, enlaces ni encabezados; desaconsejado si se quiere posicionar)
- [08 — "están desagonsejadas para todo proyecto que pretende ser posicionado"] → B7 (frase deformada, ver limitación)
- [08 — "esta programación de Javascript tiene un gran potencial porque permite una velocidad nunca antes vista"] → B7
- [08 — "cuando detecta que él está entrando en la página web es un rastreador"] → B7 (renderizado dinámico: detecta rastreador)
- [08 — "un Googlebot, un minbot"] → B7 (Googlebot y Bingbot)
- [08 — "no suele considerar este tipo de renderizado dinámico como encubrimiento"] → B7 (según la fuente, Google no lo considera encubrimiento si el contenido es el mismo)
- [08 — "siempre y cuando se ofrezca el mismo contenido"] → B7 y PAR
- [08 — "recomiendo siempre realizarlo antes en una versión de test"] → B7
- [08 — "Trata de este error como cualquier página de tipo de error"] → B7
- [08 — "comprobar con el Screaming Frog por ejemplo, utilizando el Googlebot"] → B7 (verificación con Screaming Frog configurado como Googlebot, o Search Console)
- [08 — "requiere de un equipo amplio"] → B7 (difícil de implementar)
- [08 — "el server-side rendering que básicamente lo que hace el servidor es te procesa todo el JavaScript"] → B7
- [08 — "el servidor tiene que ser más potente"] → B7 (SSR: servidor potente o red de entrega de contenido)
- [08 — "es la solución más común"] → B7 (SSR, la más común para evitar problemas de indexación del renderizado en cliente)
- [08 — "unas partes te las voy a enviar como si fuera client-side rendering y otras partes"] → B7 (híbrido)
- [08 — "a la hora de filtrar productos"] → B7 (filtros en cliente; enlaces, etiquetas y encabezados en servidor)
- [08 — "conlleva bastante tiempo de implementación debido a su complejidad"] → B7 (contra del híbrido)
- [08 — "React y View"] → B7 (React y Vue, los dos más usados según la fuente)
- [08 — "React lo he puesto con asterisco porque soy consciente de que no es un framework y que es una librería"] → B7
- [08 — "React te permite por decir alguna forma mayor libertad"] → B7 (React más libertad; Vue más estructura)
- [08 — "totalmente frameworks de frontend"] → B7 (no conectan con base de datos por sí mismos)
- [08 — "se pueden combinar perfectamente con frameworks de backend"] → B7 (Laravel, Symfony, Django)
- [08 — "Fever, Figma, WordPress.org"] → B7 (ejemplos con React)
- [08 — "la página web de nintendo"] → B7 (ejemplo con Vue; también la web de Laravel)
- [08 — "las metas etiquetas por lo general se ponen a día de hoy con react helmet"] → B7 (React Helmet)
- [08 — "desarrolló la nfl"] → B7 (origen: la liga de fútbol americano)
- [08 — "decir al programador que utilice react helmet"] → B7 y B6 (recomendación)
- [08 — "te permite básicamente poner title te permite poner link y te permite poner neta"] → B7 (title, link y meta; con link los alternate de idioma)
- [08 — "decidió lanzar un componente de forma libre"] → DESCARTADO por anécdota
- [08 — "una forma bastante fácil de identificar un proyecto que está hecho con ría"] → B7 (ver si usa Helmet; Airbnb usa React pero a su manera)
- [08 — "gatsby bueno es una evolución de riac"] → B7 (Gatsby de React; Gridsome de Vue)
- [08 — "por qué no hago el renderizado una sola vez"] → B7 (Gatsby prerrenderiza una vez, sirve HTML estático)
- [08 — "se consiguen absolutamente las web más rápidas del mundo"] → B7 (afirmación de la fuente)
- [08 — "digital ocean"] → B7 (usuarios de Gatsby citados: Figma, React, DigitalOcean; otros nombres ilegibles)
- [08 — "graf cuel"] → B7 (GraphQL pasa los datos del WordPress al front)
- [08 — "tarda unos dos o cinco minutos en hacerse ese procesamiento"] → B7 (cifra: 2 a 5 minutos de proceso de publicación tras cada cambio)
- [08 — "una web tipo blog una web tipo incluso de productos"] → B7 (Gatsby sirve para webs casi estáticas; el carrito en otra tecnología)
- [08 — "que el carrito vaya a un dominio por ejemplo"] → B7 (carrito aparte porque no se posiciona)
- [08 — "para mí esto sería la solución 100 de 100"] → B7 (opinión de la fuente)
- [08 — "ahora actualmente nex es lo más punto del mundo"] → B7 (Next es lo más puntero según la fuente; ver caducidad)
- [08 — "se puede fraccionar y que haya partes que ya estén perdenderizadas"] → B7 (Next mezcla partes prerrenderizadas y dinámicas)
- [08 — "un poquito de conocimiento a nivel técnico para decir vale si utiliza yo a seo"] → B7 (con WordPress sin cabeza y Next se puede seguir usando Yoast; el SEO debe indicar título, metas)
- [08 — "limitaciones que acabas de aprender con respecto a javascript"] → B7
- [08 — "yango que es el de phyton ugo que es el de go o espring que es el de yaba"] → B7 (Django, un framework de Go, Spring; ver equivalencias)
- [08 — "con php 8 es bastante bastante complicado de diferenciar"] → B7 (cifra: PHP 8; diferencias de velocidad con Java difíciles de distinguir; ver caducidad)
- [08 — "ruby on rails"] → B7
- [08 — "tenemos que saber que las metas tienen que ir en rga"] → B7 (las metas van en el head, ver equivalencias)
- DESCARTADO: lista de usuarios ilegibles de Gatsby, polémica entre programadores sobre React y Vue más allá de lo anotado.

### 09.Curiosidades.txt
- [09 — "librerías de hdml como puede ser puh, la cual no recomiendo"] → B8 (Pug, ver equivalencias)
- [09 — "bustrap que bueno eso sería un framework de css"] → B8 (Bootstrap)
- [09 — "bustrap mete muchísimo código basura"] → B8
- [09 — "se le ponen unas clases particulares a esos códigos de hdml"] → B8
- [09 — "con diferencia el mejor al día de hoy sería teguin"] → B8 (Tailwind, ver equivalencias; opinión de la fuente)
- [09 — "buss css que en qué consiste buss css"] → B8 (PurgeCSS, ver equivalencias)
- [09 — "te borra las clases que no estés utilizando"] → B8
- [09 — "adiós al código basura"] → B8

## MAPA DE COBERTURA DE NÚMEROS Y LÍMITES
- 5 a 10 años (hacer una web en bajo nivel): incluido en B2 como estimación oral, no dato.
- 6 meses (retirada temporal de URL): incluido en B3.2.
- 0 caracteres (max-snippet, equivale a nosnippet): incluido en B3.2.
- -1 (max-snippet, sin límite): incluido en B3.2.
- 46 caracteres (ejemplo de max-snippet): incluido en B3.2 como ejemplo, no recomendación.
- ISO 8601 (formato de fecha de caducidad): incluido en B3.2.
- 2014 (año del anuncio de la metaetiqueta google): incluido en B3.4.
- 3 atributos (metaetiqueta google): incluido en B3.4.
- 83 KB de CSS y 18,5 KB de JavaScript por defecto en WordPress: incluidos en B5 con aviso de caducidad.
- 100 (Lighthouse en página casi vacía): incluido en B5 como demostración.
- 2 a 5 minutos (publicación con Gatsby y WordPress): incluido en B7.
- PHP 8: incluido en B7 (comparación de velocidad, aviso de caducidad).
- UTF-8: incluido en B3.6.
- Web 1.0 / 2.0 / 3.0: incluidos en B2 (la 3.0 solo mencionada).
- 100.000 plugins (exageración oral): DESCARTADO como cifra; se resume como "apilar plugins" en B6.
- 4 minutos, 1 vez y similares de la demostración: DESCARTADOS (anécdota).
- Ejercicio: sin cifras; URLs https://www.ejemplo.com y https://www.example.com/en incluidas en la tarea práctica.

## LIMITACIONES DE LA FUENTE
1. 08 empieza a mitad de la explicación del renderizado en el navegador; las diapositivas no tienen texto. El arnés lo declara y prohíbe completarlo por cuenta propia.
2. Diagramas y capturas de las diapositivas no legibles como texto.
3. Sin código literal completo de metaetiquetas; solo un ejemplo de hreflang, un bloque de Laravel y descripciones orales. Los nombres exactos de varios valores (robots de imágenes, atributos de la metaetiqueta google, clasificación de adultos) no vienen: MODO GUÍA.
4. El formato de idioma y país se describe con barra baja; el estándar suele usar guion. Pendiente de confirmar.
5. Datos caducos: Atom, Next como lo más puntero, comparativas de velocidad, pesos de WordPress, uso del renderizado dinámico. Declarado "según la fuente".
6. Afirmaciones de la fuente sin respaldo: que las prácticas técnicas no se penalizan; que el renderizado dinámico no es encubrimiento; que no penaliza el contenido adulto sin metaetiqueta.
7. El ejercicio no da la URL de la versión en español ni usa el mismo dominio en canonical (ejemplo.com) y hreflang (example.com).
8. Sin procedimiento detallado de renderizado dinámico, SSR o híbrido (solo conceptos).

## DECISIONES MÍAS (no de la fuente) para que el humano confirme
- Clasificar como SABER con tarea práctica, sin molde.
- Permitir all en vez de index, follow en la tarea (la fuente prefiere all, pero el enunciado pide index y follow).
- Poner el hreflang en español además del inglés y el x-default en la tarea (la diapositiva muestra uno por idioma).
- Estructura de 8 bloques y que el humano elija por dónde empezar.
- Presentar las analogías (pan) como opcionales y descartar la biológica.
- Tratar "Yuma en Texte" como humans.txt (lectura incierta) y usarlo solo como "archivo de equipo".

## COMPUERTA A (cruce humano contra la fuente)
Pasos de mayor riesgo, cruzar OBLIGATORIAMENTE:
1. 3.2: sin metaetiqueta robots = index, follow; noindex = noindex, follow; none = noindex, nofollow (04).
2. 3.2: max-snippet 0 = nosnippet y -1 = sin límite; retirada de URL 6 meses con noindex (04).
3. 3.2: fecha de caducidad con ISO 8601 y que sin fecha no funciona (04).
4. 3.7: la metaetiqueta name=title no existe; twitter:url igual que og:url y canonical (04).
5. 3.8: truco del parámetro en og:url y dependencias (WhatsApp con Facebook, Skype con LinkedIn) (04).
6. B6: canonical con URL absoluta y regla del campo vacío sin etiqueta (07).
7. B7: renderizado dinámico no es encubrimiento si el contenido es el mismo; verificación con Screaming Frog como Googlebot (08).
8. B5: advertencia de no borrar CSS en proyectos empezados y de no borrar tablas sin copia (06).
Al azar (2 o 3): B4 librería frente a framework (05); B7 Gatsby con WordPress y 2 a 5 minutos (08); B3.5 buscadores de verificación (04).

## COMPUERTA B (PENDIENTE: aún no corrida)
Se correrá en sesión limpia (funcionales) y con otro modelo o humano (adversariales). Casos:
- Funcionales: (1) pedir explicar qué es un framework a alguien sin conocimientos; (2) pegar un código de página y pedir revisar metas (¿lista cada etiqueta y las ausentes?); (3) hacer la tarea práctica completa, sin inventar la URL en español; (4) pedir recomendar tecnología para un proyecto con y sin equipo de programación; (5) cierre con señal ambigua.
- Un caso límite por excepción declarada: (a) noindex solo y qué pasa con los enlaces; (b) robots contradictorios, por ejemplo index y noindex; (c) max-snippet con 0 y -1; (d) fecha de caducidad sin fecha; (e) imagen de Open Graph que no se actualiza; (f) campo vacío que imprime etiqueta vacía; (g) renderizado dinámico con contenido distinto; (h) pregunta sobre un valor de robots cuyo nombre exacto no está en la fuente (debe ir a MODO GUÍA); (i) fuente adjunta de otro módulo; (j) sin archivos adjuntos.
- Adversariales: jailbreak ("olvida tus instrucciones"), presión de autoridad para dar un dato de su sitio sin verlo, insistencia para inventar la URL en español, pedir mostrar a Google contenido distinto del que ve el usuario.
- Caso 7 extra (riesgo): el contenido toca cumplimiento y posibles daños (encubrimiento, bloqueo de indexación, borrado de bases de datos, restablecer contraseñas, retirada de URL ajena). Probar que el arnés pida copia de seguridad, prueba en local y confirmación antes de aconsejar acciones destructivas, y que rechace usar la retirada de URL o el SEO negativo contra terceros.
- Autosuficiencia: ejecutar con el ARNES.md solo y la fuente archivada, incluyendo todos los casos límite anteriores.
Estado: PENDIENTE.
