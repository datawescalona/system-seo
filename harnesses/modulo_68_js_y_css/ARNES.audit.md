# Auditoría — Módulo 68 JS y CSS
# Constructor v2.7 — FASE 1.5 + FASE 3 + FASE 4

---

## INVENTARIO CRUDO (FASE 1.5)

**Archivos procesados:** 19 .txt
**Archivos no legibles:** 3 PDFs (00.Ejercicio.pdf, 01.JS.pdf, 12.CSS.pdf)
**Total elementos identificados:** 41

---

## ELEMENTOS INCLUIDOS EN EL ARNÉS

### BLOQUE A — JavaScript

| # | Elemento | Sección |
|---|---|---|
| 1 | JS = lenguaje cliente (ejecuta en navegador, no en servidor) | A1 |
| 2 | Código JS siempre visible para el usuario → nunca guardar validaciones de seguridad en JS | A1 |
| 3 | Google necesita renderizar JS → HTML puro más fiable para rastreo | A1 |
| 4 | Entorno cliente vs servidor: tabla comparativa (velocidad, visibilidad, usos) | A1 |
| 5 | PHP = lenguaje servidor más usado; JSP y ASP.NET también existen | A1 |
| 6 | 3 formas de incluir JS: inline en script, archivo externo .js (recomendado), atributo de evento | A2 |
| 7 | Archivo JS externo: reutilizable entre páginas, cacheable | A2 |
| 8 | Case sensitive: mayúsculas ≠ minúsculas | A3 |
| 9 | Punto y coma recomendado — código minificado elimina saltos de línea | A3 |
| 10 | `let` (bloque, declarar una vez) vs `var` (global, redeclarable); `let` recomendado | A3 |
| 11 | Tipos: number, string, boolean (true/false sin comillas), array | A3 |
| 12 | Número entre comillas = string; concatenación vs suma | A3 |
| 13 | parseInt(), parseFloat(), toString() para conversión de tipos | A3 |
| 14 | Operadores: tabla de tipos (aritméticos, asignación, comparación, lógicos) | A4 |
| 15 | `==` compara valor; `===` compara valor Y tipo | A4 |
| 16 | Estructuras de control: if/else, switch/case (break necesario), while, for, do-while (ejecuta al menos una vez), try/catch/finally | A5 |
| 17 | Eventos: onChange, onClick, onMouseOver, onMouseOut, onKeyDown, onLoad | A6 |

### BLOQUE B — CSS

| # | Elemento | Sección |
|---|---|---|
| 18 | CSS = Cascading Style Sheet; cascada = lo más abajo tiene mayor prioridad | B1 |
| 19 | 4 métodos de incluir CSS: tabla comparativa con cacheo y recomendación SEO | B2 |
| 20 | CSS externo recomendado → se cachea (interno e inline no se cachean) | B2 |
| 21 | @import NO recomendado: llamada desde CSS más lenta que desde HTML, errores de rendimiento | B2 |
| 22 | CSS inline NO recomendado: aumenta peso del HTML sin beneficio de caché | B2 |
| 23 | CSS debe ir en HEAD lo más arriba posible; CSS en footer → efecto flash visual | B2 |
| 24 | Selectores: tabla (elemento, #id único, .clase reutilizable, * todos, , agrupación) | B3 |
| 25 | ID = único por página; clase = reutilizable en múltiples elementos | B3 |
| 26 | Agrupar selectores con coma → menos código, menor peso del archivo | B3 |
| 27 | Pseudoselectores: :hover, :focus, :first-child, :last-child, :nth-child, :before, :after | B3 |
| 28 | Tabla de medidas: px (absoluta), em, rem, %, vh, vw (relativas) | B4 |
| 29 | overflow-x: hidden para evitar scroll horizontal en móvil (afecta al SEO móvil) | B4 |
| 30 | display:none — ALERTA: Google sigue leyendo el contenido → cloaking si se usa para ocultar a usuarios | B5 |
| 31 | visibility:hidden y opacity:0 — mismo efecto que display:none para Google | B5 |
| 32 | Uso legítimo de display:none: menú móvil/escritorio con @media query | B5 |
| 33 | @media — responsive design: estilos según ancho de pantalla; requiere meta viewport en HTML | B5 |
| 34 | position: fixed — elemento fijo en pantalla al hacer scroll | B5 |
| 35 | z-index — controla stacking; requiere position distinto de static | B5 |
| 36 | !important — fuerza prioridad; máx 2-3 usos por proyecto | B5 |
| 37 | Variables CSS (:root) — valores reutilizables en todo el CSS | B5 |
| 38 | Unificar hojas de estilos → menos HTTP requests → mejor rendimiento | B6 |
| 39 | Minificación CSS: elimina espacios/comentarios → reducción significativa de peso (ejemplo: 1,38 KB → 267 bytes) | B6 |
| 40 | Bootstrap → carga todos los estilos aunque no se usen → peor rendimiento | B6 |
| 41 | Tailwind → solo carga clases usadas (PurgeCSS) → recomendado para SEO | B6 |

---

## ELEMENTOS DESCARTADOS (FASE 3)

| Elemento | Razón de descarte |
|---|---|
| `alert()` y `console.log()` — no recomendados en producción | Detalles de programación sin impacto SEO; fuera del alcance del SEO operativo |
| `innerHTML`, `window.prompt()` — formas de mostrar mensajes | Detalles de programación sin impacto SEO |
| Ejercicio práctico de JS con XAMPP y PHP local | Ejercicio de programación, no conocimiento SEO transferible |
| display: flex, display: grid para layouts | CSS avanzado de desarrollo; sin impacto SEO directo |

---

## CLASIFICACIÓN FINAL

**Categoría:** SABER
**Justificación:** Módulo de doble tutorial (JS + CSS). No produce un único entregable de cliente. El SEO necesita este conocimiento para diagnosticar problemas técnicos (contenido JS no rastreado, CSS que oculta contenido, rendimiento de carga) y para comunicarse con desarrolladores.

**Elementos críticos para SEO:**
- `display:none`/`visibility:hidden`/`opacity:0` = cloaking risk
- CSS externo = cacheable; interno/inline = no cacheable
- @import = peor opción de rendimiento para CSS
- Bootstrap vs Tailwind: impacto en peso del CSS
- Minificación CSS: herramienta directa de optimización

---

## NOTAS DE CONSTRUCCIÓN

- Bloque JS escrito de forma didáctica pero con énfasis en implicaciones SEO (rastreo de JS, visibilidad del código)
- Bloque CSS con énfasis marcado en sección B5 (display:none + @media) por ser el contenido de mayor impacto SEO directo
- JS ofuscado (window.open + onclick) no incluido en este módulo — ya cubierto en M67 (HTML) sección de etiquetas SEO
- Los PDFs (ejercicio, apuntes JS y CSS) no fueron legibles; sus temas parecen ser ejercicios prácticos, no conceptos adicionales
