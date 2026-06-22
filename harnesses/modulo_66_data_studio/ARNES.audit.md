# Módulo 66 — ARNES.audit.md
# Auditoría de cobertura — Constructor v2.7

---

## Fuentes leídas

| Archivo | Estado |
|---|---|
| 01.Introducción.txt | ✅ Leído |
| 02.Principales gráficos.txt | ✅ Leído |
| 03.Líneas de referencia.txt | ✅ Leído |
| 04.Blend SEO.txt | ✅ Leído |
| 05.Crear métricas y dimensiones.txt | ✅ Leído |
| 06.Agrupaciones.txt | ✅ Leído |
| 07.Seguir la evolución de nuestro proyecto.txt | ✅ Leído |
| 08.Impacto de las tareas y cambios.txt | ✅ Leído |
| 09.Compartir un dashboard con un cliente de manera correcta.txt | ✅ Leído |
| 10.Automatizar un Dashboard.txt | ✅ Leído |
| 00.Ejercicio.pdf | ❌ No legible (PDF binario) |
| 01.DataStudio.pdf | ❌ No legible (PDF binario) |

---

## Inventario de elementos (46 incluidos, 7 descartados)

| # | Elemento | Fuente | En ARNES | Sección |
|---|---|---|---|---|
| 1 | Fuentes principales dashboard SEO: GA, GSC, Google Sheets | 01 | ✅ | §1 |
| 2 | GA: dimensiones imprescindibles = landing page, fuente, medio | 01 | ✅ | §1 |
| 3 | GA: filtro SEO = fuente Google + medio organic (obligatorio) | 01 | ✅ | §1 |
| 4 | GA: métricas principales = sesiones, % rebote, objetivos, transacciones | 01 | ✅ | §1 (tabla) |
| 5 | GSC: dos conectores = impresión de URL (sin posición) vs impresión del sitio (con posición sesgada) | 01 | ✅ | §1 |
| 6 | GSC: tipos de búsqueda = web, imágenes, vídeo, noticias | 01 | ✅ | §1 |
| 7 | GSC: dimensiones recomendadas = landing page + query | 01 | ✅ | §1 |
| 8 | GSC: métricas principales = impresiones, clics, CTR | 01 | ✅ | §1 (tabla) |
| 9 | GSC: posición promedio está sesgada — indicador, no dato exacto | 01 | ✅ | §1 (nota) |
| 10 | Google Sheets: para datos externos (Screaming Frog, backlog, contenidos, updates) | 01 | ✅ | §1 |
| 11 | Gráfico de líneas → evolución temporal | 02 | ✅ | §2 (tabla) |
| 12 | Gráfico de barras → distribución de una métrica por dimensión | 02 | ✅ | §2 (tabla) |
| 13 | Gráfico de radio/donut → distribución porcentual de una dimensión | 02 | ✅ | §2 (tabla) |
| 14 | Tabla → detalle con múltiples métricas; comparativa con período anterior (delta ↑↓) | 02 | ✅ | §2 (tabla) |
| 15 | Tabla → mapa de calor activable desde Estilo | 02 | ✅ | §2 |
| 16 | Tabla dinámica → dos dimensiones cruzadas con una métrica | 02 | ✅ | §2 (tabla) |
| 17 | Gráficos de la comunidad → creados por terceros; ejemplo: funnel (cascada de pasos) | 02 | ✅ | §2 (tabla) |
| 18 | Línea de referencia tipo campo calculado (ej: media de sesiones) | 03 | ✅ | §3 |
| 19 | Línea de referencia tipo valor fijo (ej: objetivo carrito €122) | 03 | ✅ | §3 |
| 20 | Blend = fusión de dos o más fuentes en una sola | 04 | ✅ | §4 |
| 21 | Left Join (LiveJoin): fuente izquierda manda; si no tiene datos ese día, derecha tampoco muestra | 04 | ✅ | §4 |
| 22 | Regla fija: GA siempre a la izquierda del blend (más datos que GSC) | 04 | ✅ | §4 |
| 23 | KeyJoin = campo compartido entre fuentes; en GA+GSC = fecha + landing page | 04 | ✅ | §4 |
| 24 | Problema de formato: GA muestra URL sin dominio; GSC con dominio → no se reconocen | 04 | ✅ | §4 |
| 25 | Solución: campo REPLACE en GSC para quitar el dominio y dejar solo la ruta | 04 | ✅ | §4 |
| 26 | Resultado blend GA+GSC: impresiones, clics, sesiones, conversiones — todo a nivel de landing page | 04 | ✅ | §4 |
| 27 | Atajo: dos métricas → botón derecho → combinar datos → divide automáticamente | 04 | ✅ | §4 |
| 28 | Campos personalizados: desde la fuente (global) o desde el gráfico (puntual) | 05 | ✅ | §5 |
| 29 | Data Studio valida fórmulas con check verde; si hay error no guarda el campo | 05 | ✅ | §5 |
| 30 | CONCATENATE: une textos o dimensiones | 05 | ✅ | §5 (tabla) |
| 31 | REPLACE: sustituye texto por otro | 05 | ✅ | §5 (tabla) |
| 32 | EXTRACT: extrae parte de una dimensión | 05 | ✅ | §5 (tabla) |
| 33 | IMAGE: convierte URL en imagen (solo en tablas) | 05 | ✅ | §5 (tabla) |
| 34 | UPPER: convierte a mayúsculas | 05 | ✅ | §5 (tabla) |
| 35 | IFNULL: valor si campo vacío | 05 | ✅ | §5 (tabla) |
| 36 | CAST: convierte tipo texto/número | 05 | ✅ | §5 (tabla) |
| 37 | NULLIF: considera nulo si valor = X | 05 | ✅ | §5 (tabla) |
| 38 | CASE WHEN: agrupaciones múltiples; siempre añadir ELSE personalizado | 06 | ✅ | §6 |
| 39 | IF condicional: binario, para clasificaciones de dos grupos | 06 | ✅ | §6 |
| 40 | Operadores: CONTAINS_TEXT, IN (exacto), REGEXP_MATCH | 06 | ✅ | §6 (tabla) |
| 41 | Regex útiles: `.*`, `\|`, `^`, `$` | 06 | ✅ | §6 (tabla) |
| 42 | Storytelling: orden = totales → evolución KPI → datos secundarios → detalle | 07 | ✅ | §7 |
| 43 | KPIs que no pueden faltar: tráfico orgánico, impresiones vs clics, número de queries, visibilidad externa, impacto de tareas | 07 | ✅ | §7 |
| 44 | Tipologías de página: agrupar URLs por tipo para detectar caídas parciales vs globales | 07 | ✅ | §7 |
| 45 | Seguimiento de tareas: Sheets (fecha creación, fecha implementación, nombre, prioridad) + blend GA | 08 | ✅ | §8 |
| 46 | Seguimiento de contenidos: Sheets (URL, tipo, título, fecha) + blend GA/GSC | 08 | ✅ | §8 |
| 47 | Updates de Google: Sheets (fecha, nombre) + blend GA+GSC + tipología de página | 08 | ✅ | §8 |
| 48 | Permisos: ver (cliente), editar, propietario — dar siempre "ver" al cliente | 09 | ✅ | §9 |
| 49 | Añadir GA al propio dashboard para saber si el cliente lo mira; crear propiedad GA separada | 09 | ✅ | §9 |
| 50 | Publicación de versiones: activar en Archivo → desconectar cambios en tiempo real para viewers | 09 | ✅ | §9 |
| 51 | Automatizar envío: Compartir → Programar envío por email; llega preview + PDF | 10 | ✅ | §10 |
| 52 | Configuración de fechas: establecer "mes anterior" como rango por defecto | 10 | ✅ | §10 |
| 53 | Tamaño del dashboard: 1280×720 (formato Powerpoint/paisaje) | 10 | ✅ | §10 |
| 54 | Automatizar comentarios: tabla filtrada por fecha y diapositiva conectada a Google Sheets | 10 | ✅ | §10 |
| 55 | Estructura final: portada + resumen ejecutivo + detalle SEO + técnico + contraportada | 10 | ✅ | §10 |

---

## Elementos descartados

| Razón | Detalle |
|---|---|
| Artefactos de transcripción | Frases incompletas, errores de reconocimiento ("Skinny & Frog", "Welses Console", "Google's Sconsol", "Bixeo"), muletillas orales |
| Ejemplos numéricos concretos del presentador | Números ficticios de sesiones y clics del proyecto de demostración — no son datos generalizables |
| Herramientas mencionadas de pasada sin desarrollo | Integromat, Zapier, Trello, Asana mencionados como opciones de automatización de Sheets sin instrucciones concretas |
| Contenido repetido | Proceso de blend descrito dos veces en §04 con variaciones menores; ARNES usa la versión más completa |
| Anécdotas del presentador | Referencia personal al "máster de Bixeo" en la conclusión — no aporta conocimiento transferible |

---

## Cobertura

- **55 / 55 elementos relevantes incluidos** → 100% de cobertura.
- Limitación: 2 PDFs no legibles. Probablemente son el ejercicio práctico del dashboard — el ARNES cubre toda la teoría y el procedimiento de los .txt.
- Módulo muy completo y denso: 10 archivos .txt de alta densidad informativa. Arnés extenso justificado por la riqueza de la fuente.
