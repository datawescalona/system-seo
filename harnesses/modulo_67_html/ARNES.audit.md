# Módulo 67 — ARNES.audit.md
# Auditoría de cobertura — Constructor v2.7

---

## Fuentes leídas

| Archivo | Estado |
|---|---|
| 01.Introduccion.txt | ✅ Leído |
| 02.Estructura HTML.txt | ✅ Leído |
| 03.Elementos Semanticos.txt | ✅ Leído |
| 04.Etiquetas.txt | ✅ Leído |
| 05.Metaetiquetas.txt | ✅ Leído |
| 00.Ejercicio.pdf | ❌ No legible (PDF binario) |
| 01.HTML.pdf | ❌ No legible (PDF binario) |

---

## Inventario de elementos (37 incluidos, 3 descartados)

| # | Elemento | Fuente | En ARNES | Sección |
|---|---|---|---|---|
| 1 | HTML = lenguaje de marcas para creación de páginas web | 01 | ✅ | §1 |
| 2 | Sintaxis: `<etiqueta atributo="valor">contenido</etiqueta>` | 01 | ✅ | §1 |
| 3 | Para editar HTML: solo se necesita editor de texto + extensión .html | 02 | ✅ | §1 |
| 4 | Elemento raíz `<html lang="es">` — atributo lang indica idioma | 02 | ✅ | §2 |
| 5 | `<head>` = invisible para el usuario; contiene metadatos, estilos, scripts, GTM | 02 | ✅ | §2 |
| 6 | `<body>` = todo el contenido visible en pantalla | 02 | ✅ | §2 |
| 7 | Estructura semántica óptima: header → nav → main → aside → footer | 02 | ✅ | §2 |
| 8 | `<main>` solo debe aparecer UNA VEZ por página | 02 | ✅ | §2 (nota) |
| 9 | Elementos NO semánticos: `<div>` y `<span>` — no dicen nada al robot | 03 | ✅ | §3 |
| 10 | Mala práctica: `<div id="nav">` en vez de `<nav>` — los robots no lo interpretan correctamente | 03 | ✅ | §3 |
| 11 | `<article>` = contenido autónomo e independiente (post de blog, artículo) | 03 | ✅ | §3 (tabla) |
| 12 | `<aside>` = barra lateral, información complementaria | 03 | ✅ | §3 (tabla) |
| 13 | `<details>` + `<summary>` = contenido desplegable, cerrado por defecto | 03 | ✅ | §3 (tabla) |
| 14 | `<figure>` + `<figcaption>` + `<img>` = imagen con título | 03 | ✅ | §3 (tabla) |
| 15 | `<footer>` = pie de página | 03 | ✅ | §3 (tabla) |
| 16 | `<header>` = cabecera | 03 | ✅ | §3 (tabla) |
| 17 | `<mark>` = texto resaltado (amarillo por defecto) | 03 | ✅ | §3 (tabla) |
| 18 | `<nav>` = menú de navegación | 03 | ✅ | §3 (tabla) |
| 19 | `<section>` = sección de contenido sobre una temática | 03 | ✅ | §3 (tabla) |
| 20 | `<time datetime="">` = fechas; buscadores pueden añadir al calendario y mostrar resultados inteligentes | 03 | ✅ | §3 (tabla) |
| 21 | `<section>` puede contener `<article>` y viceversa — ambas opciones son válidas | 03 | ✅ | §3 |
| 22 | `aria-label` en `<section>` para lectores de pantalla | 03 | ✅ | §3 |
| 23 | Solo UN `<h1>` por página | 04 | ✅ | §4 |
| 24 | Jerarquía de encabezados debe ser coherente (no saltar de h2 a h4 sin h3) | 04 | ✅ | §4 |
| 25 | Plugin "SEO Meta in One Click" para auditar encabezados | 04 | ✅ | §4 |
| 26 | `<a href="">` = enlace; `href` es obligatorio | 04 | ✅ | §4 |
| 27 | Atributos del enlace: hreflang, rel (alternate/author/external/nofollow/noreferrer/noopener/next/prev/tag), target | 04 | ✅ | §4 (tabla) |
| 28 | `rel="noreferrer"` y `rel="noopener"` no afectan SEO | 04 | ✅ | §4 (tabla) |
| 29 | Enlaces ofuscados con JavaScript (window.open + onclick): Google no los rastrea | 04 | ✅ | §4 |
| 30 | Códigos HTTP: 200, 301, 302, 400, 401/403, 404 | 04 | ✅ | §4 (tabla) |
| 31 | 301 es correcto, pero los enlaces internos deben apuntar a la URL final (sin redirección) | 04 | ✅ | §4 (tabla + nota) |
| 32 | Plugin "CheckMyLinks" para auditar todos los enlaces de una página | 04 | ✅ | §4 |
| 33 | Screaming Frog para auditar todo el dominio | 04 | ✅ | §4 |
| 34 | Etiquetas básicas: img/alt, p, br, span lang, div, table/tr/th/td, ul/ol/li, form/input/label, strong/em | 04 | ✅ | §4 (tabla) |
| 35 | Meta robots (robots y googlebot): all, noindex, nofollow, none | 05 | ✅ | §5 |
| 36 | Meta viewport: controla visualización móvil | 05 | ✅ | §5 |
| 37 | Elementos importantes en HEAD: canonical, alternate+hreflang, next/prev, favicon, GTM/píxeles | 05 | ✅ | §5 (tabla) |

---

## Elementos descartados

| Razón | Detalle |
|---|---|
| Descripción detallada de iFrame y atributo target | El módulo explica iFrame (marco en línea para incrustar páginas) con sus valores de target (_blank, _self, _parent, _top, framename). Relevancia SEO mínima — omitido del ARNES por no aportar valor práctico al SEO |
| Referencia a CSS como módulo posterior | Mención de que los estilos se ven en otro curso — artefacto del contexto del máster, no contenido del módulo |
| Presentación del curso (saludo y despedida) | Artefactos del inicio y fin de los vídeos — no son conocimiento transferible |

---

## Cobertura

- **37 / 37 elementos relevantes incluidos** → 100% de cobertura.
- Limitación: 2 PDFs no legibles (ejercicio y diapositivas). El ARNES cubre todos los conceptos explicados en los .txt.
- Módulo corto y denso: 5 archivos, alto nivel de cobertura SEO práctica (encabezados, enlaces, códigos HTTP, metaetiquetas).
