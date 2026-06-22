# ARNES.audit.md — Módulo 64 — Google Analytics 4
# Versión: 2.7 | Fecha: 2026-06-22 | Sesión: 24

---

## FUENTES USADAS

| Archivo | Estado |
|---|---|
| 01.Introducción.txt | ✅ Leído |
| 02.Google Analytics 4.txt | ✅ Leído |
| 03.Estructura de las cuentas.txt | ✅ Leído |
| 04.Empezando en GA4.txt | ✅ Leído |
| 05.Informes.txt | ✅ Leído |
| 06.Explorar.txt | ✅ Leído |
| 07.Publicidad.txt | ✅ Leído |
| 08.Incorporar Tag Manager.txt | ✅ Leído |
| 09.Eventos.txt | ✅ Leído |
| 10.Análisis de la Configuración.txt | ✅ Leído |
| 00.Ejercicio.pdf | ⚠️ No legible como texto |
| 01.GA4-_compressed.pdf | ⚠️ No legible como texto |

---

## FASE 0 — CLASIFICACIÓN

**Categoría asignada:** SABER

**Justificación:** el módulo enseña GA4 como herramienta de análisis web — qué es, cómo se configura y cómo se usa. El contenido es fundamentalmente explicativo (qué hace cada sección, por qué cambiaron las cosas de UA a GA4). Aunque incluye pasos de setup, el resultado no es un entregable de cliente sino una cuenta configurada y conocimiento operativo.

---

## FASE 1.5 — INVENTARIO EN BRUTO (trazabilidad completa)

| # | Dato / Regla | Archivo fuente | Incluido en ARNES.md |
|---|---|---|---|
| 1 | GA4 = v4 de Google Analytics; reemplaza GA Universal (v3) | 01, 02 | ✅ Sección 1 (tabla) |
| 2 | Deadline GA Universal: 1 julio 2023 — deprecado | 04 | ✅ Sección intro |
| 3 | Cambio principal UA→GA4: arquitectura de sesiones → arquitectura de eventos | 01, 03 | ✅ Sección 1 |
| 4 | Código de seguimiento UA: UA-XXXXXXXX-X; GA4: G-XXXXXXXX | 04 | ✅ Sección 1 (tabla) + Sección 3 |
| 5 | GA4 NO tiene "vistas" — eliminadas (disponibles solo en GA4 360 como "subcuentas") | 03 | ✅ Sección 2 |
| 6 | Tasa de rebote → reemplazada por "sesiones con interacción" (engaged sessions) | 04 | ✅ Sección 1 |
| 7 | Sesión con interacción: +10 segundos en página, O 2+ páginas vistas, O evento de conversión | 04 | ✅ Sección 1 |
| 8 | GA4 no almacena IP ni datos de localización exacta | 04 | ✅ Sección 1 (tabla) |
| 9 | GA4 preparado para entorno sin cookies de terceros | 04 | ✅ Sección 1 (tabla) |
| 10 | Máximo 100 cuentas de GA4 por cuenta de Gmail | 04 | ✅ Sección 2 |
| 11 | Dominios múltiples del mismo customer journey = misma propiedad | 03 | ✅ Sección 2 |
| 12 | Flujos de datos: web, app Android (Firebase), app iOS (Firebase) | 03, 04 | ✅ Sección 2 |
| 13 | Proceso de creación: cuenta → propiedad (zona horaria + moneda) → flujo de datos → ID G-XXXXXXXX | 04 | ✅ Sección 3 |
| 14 | Zona horaria en España: "Spain" hora peninsular; ojo a Canarias | 04 | ✅ Sección 3 |
| 15 | Medición mejorada: 6 tipos activables sin código (scroll, clics salida, búsquedas internas, vídeos YouTube, descargas, vistas de página) | 04 | ✅ Sección 3 |
| 16 | Búsquedas internas en medición mejorada: parámetro de consulta escondido en "configuración avanzada" | 04 | ✅ Sección 3 |
| 17 | Ruido en analítica: tener activa búsquedas internas sin buscador en la web genera datos incorrectos | 04 | ✅ Sección 3 |
| 18 | Cuenta de demostración pública: Google Merchandise Store (web) + Flood-It! (app) | 04 | ✅ Sección 3 |
| 19 | Informe de tiempo real: últimos 30 minutos | 05 | ✅ Sección 4 |
| 20 | Ciclo de vida: adquisición → interacción → monetización → retención | 05 | ✅ Sección 4 |
| 21 | Monetización en GA4 integra e-commerce y AdSense en un mismo bloque | 05 | ✅ Sección 4 |
| 22 | Grupos de contenido: requieren configuración personalizada en la web para funcionar | 05 | Mencionado implícitamente |
| 23 | Explorar: permite n-dimensiones anidadas (novedad vs. UA que solo tenía 2) | 06 | ✅ Sección 5 |
| 24 | Filas anidadas en Explorar: agrupa dimensiones en niveles jerárquicos visuales | 06 | ✅ Sección 5 |
| 25 | 7 plantillas de exploración: formato libre, embudo, rutas, superposición de segmentos, usuario, cohortes, lifetime value | 04, 06 | ✅ Sección 5 (tabla) |
| 26 | Atribución por defecto en GA4: último clic multicanal | 07 | ✅ Sección 6 (tabla) |
| 27 | 7 modelos de atribución disponibles en GA4 | 07 | ✅ Sección 6 (tabla) |
| 28 | Rutas de conversión: muestran todos los canales por los que pasó el usuario antes de convertir | 07 | ✅ Sección 6 |
| 29 | Tag Manager: etiqueta "Configuración de Google Analytics 4" + ID G-XXXXXXXX + activador "Todas las páginas" | 08 | ✅ Sección 7 |
| 30 | 4 tipos de eventos en GA4: automáticos, medición mejorada, recomendados, personalizados | 09, 10 | ✅ Sección 8 |
| 31 | DebugView: activa con Tag Manager en modo "Vista previa" (debug_mode = true) | 10 | ✅ Sección 8 |
| 32 | Evento "purchase": evento especial para transacciones monetarias — preconfigurado en Shopify, WooCommerce, PrestaShop, Magento | 09, 10 | ✅ Sección 8 |
| 33 | Límites de definiciones personalizadas: 25 dimensiones usuario, 50 dimensiones evento, 50 métricas | 10 | ✅ Sección 9 |
| 34 | Definiciones personalizadas tardan hasta 24h en aparecer en informes | 10 | ✅ Sección 9 |

---

## ELEMENTOS DESCARTADOS

| Elemento descartado | Motivo |
|---|---|
| Proceso detallado de configuración de eventos en Firebase para apps | Nivel de implementación técnica; relevante solo para desarrolladores de apps — fuera del scope SEO web |
| Detalle de variables de Tag Manager (click_classes, click_text) para eventos personalizados | Nivel de implementación GTM — contenido del Módulo 65 (Tag Manager) |
| URL Builder de Google (Campaign Builder) para parámetros UTM | Herramienta complementaria; mencionada de pasada en fuente pero no es el núcleo del módulo |
| Análisis específico de productos en Merchandise Store (porcentaje de carrito >100%) | Ejemplo de ejercicio del instructor, no regla generalizable |
| Apple iPad user agent cambio sep 2019 | Ya cubierto en M63 — no duplicar |

---

## MAPA DE COBERTURA

| Bloque temático | Cobertura en ARNES.md |
|---|---|
| Cambios UA → GA4 (tabla comparativa) | ✅ Completo |
| Sesiones con interacción (criterios) | ✅ Completo |
| Estructura de cuentas: sin vistas, flujos de datos | ✅ Completo |
| Dominios múltiples = misma propiedad | ✅ Completo |
| Proceso de creación de cuenta GA4 | ✅ Completo |
| Medición mejorada (6 tipos) | ✅ Completo |
| Ruido en analítica | ✅ Incluido |
| Cuenta de demostración | ✅ Mencionada |
| Informes: ciclo de vida (4 fases) | ✅ Completo |
| Monetización (e-commerce + AdSense integrados) | ✅ Completo |
| Comparativas, filtros y búsqueda (3 niveles) | ✅ Completo |
| Explorar: plantillas (tabla) | ✅ Completo |
| Explorar: n-dimensiones + filas anidadas | ✅ Completo |
| Publicidad: rendimiento de canales | ✅ Completo |
| Modelos de atribución (tabla) | ✅ Completo |
| Rutas de conversión | ✅ Completo |
| Incorporar Tag Manager (proceso) | ✅ Completo |
| 4 tipos de eventos | ✅ Completo |
| DebugView | ✅ Completo |
| Definiciones personalizadas + límites | ✅ Completo |
| Audiencias (incluyendo sugerencias de ML) | ✅ Completo |
| Conversiones (marcar eventos como conversión) | ✅ Completo |
| PDFs (00.Ejercicio.pdf, 01.GA4-_compressed.pdf) | ⚠️ No legibles |

---

## NOTAS DE CONSTRUCCIÓN

- Módulo más largo del bloque analytics (10 archivos). Contenido muy denso — arnés organizado en 9 secciones.
- La tabla UA→GA4 se creó como punto de entrada para usuarios que vienen de M62, que ya conocen UA.
- Los eventos de Tag Manager (click_classes, click_text, variables) se mencionan en contexto pero el detalle técnico queda para M65 (Google Tag Manager) por coherencia del sistema.
- El cambio "tasa de rebote → sesiones con interacción" tiene doble explicación: conceptual en sección 1 y operativa en sección 4, para reforzar que es el concepto más contraintuitivo del módulo.
