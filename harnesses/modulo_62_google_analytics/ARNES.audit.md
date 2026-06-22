# ARNES.audit.md — Módulo 62 — Google Analytics
# Versión: 2.7 | Fecha: 2026-06-22 | Sesión: 24

---

## FUENTES USADAS

| Archivo | Estado |
|---|---|
| 01.Índice.txt | ✅ Leído |
| 02.Introducción a Google Analytics.txt | ✅ Leído |
| 03.Empezar en Google Analytics.txt | ✅ Leído |
| 03.Enlaces.txt | ✅ Leído |
| 04.Informes de Audiencia.txt | ✅ Leído |
| 05.Informes de Adquisición.txt | ✅ Leído |
| 06.Informes de Comportamiento.txt | ✅ Leído |
| 07.Tipos de Informes de Conversión.txt | ✅ Leído |
| 08.Objetivos.txt | ✅ Leído |
| 09.Comercio Electrónico.txt | ✅ Leído |
| 10.Embudos Multicanal.txt | ✅ Leído |
| 11.Segmentos.txt | ✅ Leído |
| 12.Informes Personalizados.txt | ✅ Leído |
| 13.Google Analytics 360.txt | ✅ Leído |
| 00.Ejercicio.pdf | ⚠️ No legible como texto |
| 01.Google-Analytics.pdf | ⚠️ No legible como texto |

---

## FASE 0 — CLASIFICACIÓN

**Categoría asignada:** SABER

**Justificación:** el módulo enseña a conocer y usar Google Analytics Universal como herramienta de análisis web. Aunque incluye pasos de configuración (cuenta, vistas, código de seguimiento), la mayoría del contenido es explicativo — qué muestra cada sección y cómo interpretarla. No hay un entregable único de cliente. Es análogo a M05 (conceptual sobre una herramienta, no una metodología de producción).

**Ratificación de no-HACER:** el módulo no produce un informe, ficha, auditoría o arquitectura entregable. El resultado del módulo es comprensión operativa y una cuenta configurada para uso continuo.

---

## FASE 1.5 — INVENTARIO EN BRUTO (trazabilidad completa)

| # | Dato / Regla | Archivo fuente | Incluido en ARNES.md |
|---|---|---|---|
| 1 | Estructura: cuenta → propiedad → vista | 02 | ✅ Sección 1 |
| 2 | Máximo 100 cuentas de GA por cuenta de Google | 02 | ✅ Sección 1 |
| 3 | Máximo 25 vistas por propiedad | 02 | ✅ Sección 1 |
| 4 | Sistema de 3 vistas recomendado: no-filtrada, Master, Test | 02, 03 | ✅ Sección 1 |
| 5 | Regla crítica: no se recuperan datos anteriores a la creación de la vista | 03 | ✅ Sección 1 (regla crítica) |
| 6 | Código de seguimiento formato UA-XXXXXXXX-X | 03 | ✅ Sección 2 |
| 7 | GA4 es el sucesor; opciones avanzadas para crear también propiedad UA | 03 | ✅ Sección 2 |
| 8 | Deadline histórico GA Universal: 1 julio 2023 | 03 | ✅ Introducción (nota de contexto histórico) |
| 9 | Cuenta demo pública: Google Merchandise Store | 03 | ✅ Sección 2 |
| 10 | Tiempo máximo de inactividad de una sesión: 30 minutos | 03, 04 | ✅ Sección 4 (tabla de métricas) |
| 11 | Keywords orgánicas = "Not Provided" / "Not Set" por HTTPS de Google | 03 | ✅ Sección 3 |
| 12 | Muestreo en GA: no almacena el 100% de los eventos | 04 | ✅ Sección 4 (nota sobre muestreo) |
| 13 | Botón "Mayor precisión" vs "Respuesta más rápida" | 04 | ✅ Sección 4 |
| 14 | Datos demográficos disponibles ~40-46% de sesiones (por cookies de Google) | 04 | ✅ Sección 4 |
| 15 | Canales por defecto: Directo, Orgánico, CPC, Display, Social, Referral, Email, Afiliados | 05 | ✅ Sección 5 (tabla de canales) |
| 16 | Anotaciones en el gráfico temporal: triángulo debajo del gráfico | 05 | ✅ Sección 5 |
| 17 | Vinculación Search Console en administración de GA | 05 | ✅ Sección 5 |
| 18 | Tipos de informes de conversión: objetivos (no-monetarios) vs transacciones (monetarios) | 07 | ✅ Sección 7 |
| 19 | Máximo 20 objetivos por vista, en 4 grupos de 5 | 07, 08 | ✅ Sección 7 |
| 20 | Los objetivos no se pueden borrar, solo desactivar y reeditar | 08 | ✅ Sección 7 (regla) |
| 21 | 4 tipos de objetivo: página de destino, duración, páginas por sesión, evento | 08 | ✅ Sección 7 |
| 22 | Verificación del objetivo: se puede comprobar si se cumplió en últimos 7 días | 08 | ✅ Sección 7 |
| 23 | Tasa de conversión e-commerce: referencia = 1% | 09 | ✅ Sección 7 |
| 24 | GA no registra el 100% de las transacciones — usar como tendencia | 09 | ✅ Sección 7 (nota de exactitud) |
| 25 | Atribución por defecto en GA: última interacción | 10 | ✅ Sección 7 (embudos multicanal) |
| 26 | Ventana de atribución multicanal: máximo 30 días | 10 | ✅ Sección 7 |
| 27 | Lapso de tiempo: herramienta para ver cuántos días tarda el usuario en convertir | 10 | ✅ Sección 7 |
| 28 | Alertas personalizadas: diarias, semanales o mensuales | 12 | ✅ Sección 9 |
| 29 | GA 360 precio: ~100.000 €/año | 13 | ✅ Sección 10 (tabla) |
| 30 | GA Standard: 10M hits/mes (~1M visitas/mes) | 13 | ✅ Sección 10 (tabla) |
| 31 | GA 360: 1.000M hits/mes (~100M visitas/mes) | 13 | ✅ Sección 10 (tabla) |
| 32 | GA Standard: 20 métricas personalizadas | 13 | ✅ Sección 10 (tabla) |
| 33 | GA 360: 200 métricas personalizadas | 13 | ✅ Sección 10 (tabla) |
| 34 | GA 360 SLA: 99,9% uptime garantizado | 13 | ✅ Sección 10 (tabla) |
| 35 | GA 360: tiempo de procesamiento máximo 4 horas garantizado | 13 | ✅ Sección 10 (tabla) |
| 36 | Suite GA 360: GA360 + Attribution360 + Optimize360 + AudienceCenter360 + TagManager360 + DataStudio360 | 13 | ✅ Sección 10 |

---

## ELEMENTOS DESCARTADOS (presentes en fuente, no incluidos en ARNES.md)

| Elemento descartado | Motivo |
|---|---|
| Nombre exacto del parámetro de URL para búsqueda interna | Demasiado específico de implementación técnica; mencionado como "parámetro de consulta" |
| Listado de todas las métricas de la herramienta de comparación de modelos de atribución | Detalles operativos de la UI — no modifican comprensión conceptual |
| Tutorial paso a paso de creación de informes personalizados en pantalla | Descripción de UI que cambia con actualizaciones; se captura el concepto, no los clics exactos |
| Ejemplo específico de filtro de segmento (aparel + bags + order completed) | Ejemplo ilustrativo del instructor, no regla transferible |
| Precio de Google Firebase | Herramienta de GA 360 para apps móviles, fuera del scope de SEO web |
| Descripción detallada de Google Optimize y Firebase | Tools de GA 360 que no son el core de este módulo |
| Número de conversiones y porcentajes del lapso de tiempo (63%, 2%) | Datos de la cuenta demo de ejemplo del instructor, no reglas generalizables |

---

## MAPA DE COBERTURA

| Bloque temático | Cobertura en ARNES.md |
|---|---|
| Fundamentos: métricas vs dimensiones | ✅ Completo |
| Estructura cuenta/propiedad/vista + reglas de vistas | ✅ Completo |
| Configuración inicial + código de seguimiento | ✅ Completo |
| Cuenta demo | ✅ Mencionada |
| Informe Tiempo Real | ✅ Funcional |
| Informes Audiencia (métricas, demografía, geo, dispositivos) | ✅ Completo |
| Informes Adquisición (canales, anotaciones, SC, Ads) | ✅ Completo |
| Informes Comportamiento (páginas, velocidad, búsquedas, eventos) | ✅ Completo |
| Conversiones: objetivos (tipos, reglas, funnels) | ✅ Completo |
| Conversiones: e-commerce (tasa, exactitud) | ✅ Completo |
| Conversiones: embudos multicanal (atribución, lapso) | ✅ Completo |
| Segmentos (predefinidos + personalizados) | ✅ Completo |
| Personalización (informes guardados, personalizados, paneles, alertas) | ✅ Completo |
| GA 360 (tabla comparativa, suite, SLA) | ✅ Completo |
| PDFs (00.Ejercicio.pdf, 01.Google-Analytics.pdf) | ⚠️ No legibles |

---

## NOTAS DE CONSTRUCCIÓN

- Clasificación SABER ratificada: contenido 80% explicativo, 20% procedimental de setup.
- No se usó MOLDE porque SABER no lo requiere.
- Los PDFs no aportaron contenido. Si el usuario tiene acceso a su contenido, puede subir versiones .txt de su contenido para enriquecer el módulo en una futura actualización.
- Contexto histórico de GA Universal vs GA4 incluido para que el agente no desoriente al usuario con una herramienta deprecada sin explicación.
