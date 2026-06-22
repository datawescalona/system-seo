# ARNES.audit.md — Módulo 61 — SEO para Shopify
# Versión: 2.7 | Fecha: 2026-06-22

---

## CLASIFICACIÓN DEL MÓDULO

**Categoría:** HACER-de-pasos
**Razón:** el módulo enseña a optimizar una tienda Shopify para SEO siguiendo una secuencia de configuración por bloques, con un entregable final (checklist de estado por tienda).
[fuente: 01.Índice.txt — índice de clases del curso; 04.Ficha de producto.txt, 05.Categorías Optimizadas.txt — instrucciones paso a paso por tipo de página]

**COMPUERTA DE RIQUEZA:** la fuente es rica. Tiene secuencia real de ejecución, criterios de decisión (automático vs. manual en colecciones), excepciones (límites por plan, funciones solo en OS 2.0, metacampos no disponibles para colecciones todavía), y casos de mitos a desmitificar. El arnés puede destilarse con profundidad.

---

## SECUENCIA DEL MÉTODO (FASE 1)

Orden real de ejecución extraído de la fuente:

1. Conocer el plan y la versión del tema (OS 2.0 o anterior) — condiciona todo lo demás
2. Fichas de producto: título, descripción, URL, texto alternativo, metacampos básicos
3. Colecciones: nombre, descripción SEO, URL, tipo de condición (irreversible)
4. Blog y páginas: artículos con extracto/URL, páginas estáticas, schema automático
5. Aspectos técnicos: robots.txt, sitemap, canonical en tags, redirecciones 301
6. Metacampos avanzados: ampliar SEO de productos y variantes
7. Idiomas y localización: apps vs. múltiples tiendas, hreflang, x-default
8. Canales de venta: Google Merchant, Meta, TikTok, Pinterest, Amazon, eBay, Walmart

---

## INVENTARIO EN BRUTO → TRAZABILIDAD COMPLETA (FASE 1.5)

### Datos y cifras concretas

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| Plan Light €10/mes | 03 — "Light, que es el plan más básico de Shopify" | Bloque 1 — tabla de planes |
| Plan Basic €27/mes | 03 — planes con precios | Bloque 1 — tabla de planes |
| Plan Shopify €74/mes | 03 — planes con precios | Bloque 1 — tabla de planes |
| Plan Advance €279/mes | 03 — planes con precios | Bloque 1 — tabla de planes |
| Plan Plus por contrato | 03 — "Plus [...] precio negociado" | Bloque 1 — tabla de planes |
| Hasta 5 idiomas en Basic/Shopify/Advance | 12 — límites de idiomas por plan | Bloque 7 — límites |
| Hasta 20 idiomas en Plus | 12 — límites de idiomas por plan | Bloque 7 — límites |
| Dominios internacionales: desde plan Shopify, NO en Basic | 12 — "dominios internacionales no están disponibles en Basic" | Bloque 7 — decisión de plan |
| Máx. 100 variantes nativas por producto | 04 — "máximo de 100 combinaciones de variantes" | Bloque 2 — límite de variantes |
| Langify desde €17,50/mes | 12 — "Langify [...] desde 17,50 euros al mes" | Bloque 7 — coste de app |
| Sitemap con 4 subconjuntos (products, pages, collections, blogs) | 09 — "el sitemap [...] se divide en cuatro subconjuntos" | Bloque 5 — sitemap |

### Comisiones de transacción (descartadas del método SEO)

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| Basic 2,4%+€0,25 / Shopify 2,1% / Advance 1,8% | 03 — comisiones por plan | DESCARTADO — dato comercial, no SEO |

### Estadísticas contextuales (descartadas)

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| Tráfico móvil 67,2%-80% | 07 — estadística de uso móvil | DESCARTADO — dato de contexto, no configurable |
| Uptime 99,99% | 03 — argumento de venta de Shopify | DESCARTADO — argumento de venta, no SEO |

### Diseño y temas (descartados del método SEO)

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| Temas de pago $180-$300 / Dawn gratuito | 11 — "temas de pago entre 180 y 300 dólares [...] Dawn es gratuito" | DESCARTADO — diseño, no SEO |

### Reglas y procedimientos

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| URL forzada /products/ para productos | 04 — "la URL siempre empieza por /products/" | Bloque 2 — URL de producto |
| URL forzada /collections/ para colecciones | 05 — "la URL siempre empieza por /collections/" | Bloque 3 — URL de colección |
| URL forzada /pages/ para páginas | 08 — "la URL de páginas empieza por /pages/" | Bloque 4 — URL de páginas |
| URL forzada /blogs/[nombre]/ para artículos | 06 — "la URL del blog empieza por /blogs/" | Bloque 4 — URL de blog |
| Colección tipo auto/manual: NO se puede cambiar después de crearla | 05 — "una vez creada la colección no puedes cambiar entre automática y manual" | Bloque 3 — COMPUERTA DE TIPO |
| Canonical automático en páginas de tags de colecciones | 09 — "Shopify añade canonical automático en las páginas de tags" | Bloque 5 — canonical |
| 301 automático al cambiar URL de producto o colección | 04 — "Shopify genera automáticamente la redirección 301" | Bloque 2 y 5 — redirecciones |
| Schema.json auto para todos los artículos de blog | 06 — "schema.json se genera automáticamente para los artículos" | Bloque 4 — schema |
| robots.txt editable en OS 2.0 (no en temas anteriores) | 09 — "en Online Store 2.0 puedes editar el robots.txt desde el editor de código del tema" | Bloque 5 — robots.txt |
| App installation: nunca .zip, siempre desde App Store oficial | 11 — "nunca instales una app con un .zip [...] usa la App Store de Shopify" | Bloque 6 — regla de apps |

### Metacampos

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| Tipos de metacampo: texto, número, fecha, archivo (imagen/vídeo/3D/AR/JSON), booleano, URL, referencia, color, peso, volumen, dimensión | 10 — "tipos de metafields disponibles" | Bloque 6 — tipos disponibles |
| Metacampos nativos: productos ✅, variantes ✅; colecciones/clientes/pedidos "próximamente" | 10 — "los metafields de colecciones, clientes y pedidos están en desarrollo" | Bloque 6 — limitación actual |

### Apps mencionadas

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| Matrixify — gestión masiva de productos vía CSV/Excel | 10 — "Matrixify [...] para gestionar productos en masa" | Bloque 6 — app de metacampos masivos |
| Metafields Guru / Metafields Manager | 10 — "Metafields Guru o Metafields Manager" | Bloque 6 — apps de metacampos |
| HRLang Manager — hreflang entre tiendas | 12 — "HRLang Manager sincroniza por SKU entre tiendas" | Bloque 7 — hreflang |
| Langify / Langsoek — traducción dentro de una tienda | 12 — "apps de traducción como Langify o Langsoek" | Bloque 7 — enfoque app |
| PageFly — constructor de páginas avanzado | 11 — "PageFly para páginas más elaboradas" | CONTEXTUAL — no es paso del método SEO; se menciona en contexto de temas |

### Canales de venta nativos

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| Google Merchant Center, Facebook, TikTok, Pinterest, Amazon, eBay, Walmart — integración nativa | 13 — "canales de venta integrados nativamente en Shopify" | Bloque 8 — lista de canales |
| Píxeles: instalación desde panel de canal o desde Preferencias en OS 2.0 | 13 — "los píxeles se gestionan desde el canal de venta o desde Preferencias en OS 2.0" | Bloque 8 — píxeles |

### Hreflang y múltiples tiendas

| Elemento | Archivo — cita corta | Destino |
|---|---|---|
| x-default se asigna a la tienda principal (master store) | 12 — "el x-default apunta a la tienda principal" | Bloque 7 — hreflang / múltiples tiendas |

---

## NÚMEROS Y LÍMITES — MAPA DE COBERTURA

| Cifra | Origen | Destino |
|---|---|---|
| Light €10 / Basic €27 / Shopify €74 / Advance €279 / Plus por contrato | 03 | Bloque 1 — tabla de planes |
| Hasta 5 idiomas (Basic/Shopify/Advance) | 12 | Bloque 7 |
| Hasta 20 idiomas (Plus) | 12 | Bloque 7 |
| 100 variantes máximo nativo | 04 | Bloque 2 |
| 4 subconjuntos en el sitemap | 09 | Bloque 5 |
| Langify desde €17,50/mes | 12 | Bloque 7 |
| Comisiones Basic 2,4%+€0,25 / Shopify 2,1% / Advance 1,8% | 03 | DESCARTADO (comercial, no SEO) |
| Tráfico móvil 67,2%-80% | 07 | DESCARTADO (contexto, no configurable) |
| Uptime 99,99% | 03 | DESCARTADO (argumento de venta) |
| Temas $180-$300 / Dawn gratuito | 11 | DESCARTADO (diseño, no SEO) |

---

## CHECKLIST FASE 4 (parches)

- [x] IDENTIDAD con blindaje anti-jailbreak
- [x] PASO 0 de verificación de fuente (13 archivos listados)
- [x] No-inventar: MODO GUÍA redirige a módulos específicos para preguntas fuera de alcance
- [x] COMPUERTA DE TIPO (colección auto/manual — irreversible) instalada en Bloque 3
- [x] COMPUERTA DE HONESTIDAD al final: declara qué se verificó vs. qué es criterio general
- [x] Inventario FASE 1.5 ejecutado: todos los elementos tienen destino (incluido o descartado con razón)
- [x] Datos descartados justificados: comisiones, uptime, tráfico móvil, precios de temas
- [x] Mitos desmitificados incluidos en Bloque 5 (checkout, robots.txt, sitemap)
- [x] Metacampos: limitación actual declarada (colecciones/clientes/pedidos "próximamente")
- [x] Regla de apps (no .zip) incluida en Bloque 6
- [x] Señal de cierre sin loop infinito
- [x] Molde de salida completo con columnas y formato definidos
- [x] Presentación digerible: plan resumido al inicio, bloques cerrados antes de abrir el siguiente, una pregunta por turno

---

## NOTA DE DISEÑO

El módulo cubre un entorno muy concreto (Shopify) con muchas reglas técnicas de plataforma. El arnés prioriza las restricciones irreversibles (tipo de colección auto/manual, funciones exclusivas de OS 2.0) porque son las que más pueden perjudicar al usuario si no se conocen antes de actuar. Los datos comerciales (comisiones, precios de temas, uptime) se descartaron explícitamente porque no aportan al método SEO aunque aparezcan en los archivos fuente.
