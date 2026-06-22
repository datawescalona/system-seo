# ARNES.audit.md — Módulo 63 — Google Analytics Avanzado
# Versión: 2.7 | Fecha: 2026-06-22 | Sesión: 24

---

## FUENTES USADAS

| Archivo | Estado |
|---|---|
| 01.Índice.txt | ✅ Leído |
| 02.Técnicas de Análisis Avanzadas.txt | ✅ Leído |
| 03.Remarketing.txt | ✅ Leído |
| 01.Google-Analytics-avanzado.pdf | ⚠️ No legible como texto |

---

## FASE 0 — CLASIFICACIÓN

**Categoría asignada:** SABER

**Justificación:** el módulo es completamente explicativo. El bloque 1 describe técnicas de análisis dentro de GA (qué informes usar y cómo interpretarlos). El bloque 2 explica el remarketing como concepto y mecanismo. No hay un entregable de cliente ni una secuencia de pasos que produzca un artefacto concreto.

---

## FASE 1.5 — INVENTARIO EN BRUTO (trazabilidad completa)

| # | Dato / Regla | Archivo fuente | Incluido en ARNES.md |
|---|---|---|---|
| 1 | Calidad del canal ≠ volumen del canal — canales con mucho tráfico pueden tener baja calidad si la audiencia no es relevante | 02 | ✅ Bloque 1.1 |
| 2 | Septiembre 2019: Apple cambió el user agent del iPad — tráfico iPad aparece como ordenador (Safari) desde esa fecha | 02 | ✅ Bloque 1.2 (dato crítico) |
| 3 | Dispositivos Android: modelo específico disponible (ej. Galaxy S7); dispositivos Apple: solo iPhone/iPad/iPod sin modelo | 02 | ✅ Bloque 1.2 |
| 4 | Análisis de cohortes: grupos por característica común (ej. misma fecha de adquisición) | 02 | ✅ Bloque 1.2 |
| 5 | Retener a un usuario cuesta menos que captar uno nuevo — siempre | 02 | ✅ Bloque 1.2 |
| 6 | Explorador de usuarios: permite ver comportamiento individual por User ID (principalmente GA 360) | 02 | ✅ Bloque 1.2 |
| 7 | Informe personalizado: hasta 5 métricas y 5 dimensiones por pestaña | 02 | ✅ Bloque 1.3 (tabla + texto) |
| 8 | Diferencia clave: informes personalizados = interacción en tiempo real; paneles = visión de conjunto sin profundidad | 02 | ✅ Bloque 1.3 |
| 9 | Raw data: exportable desde informes personalizados | 02 | ✅ Bloque 1.3 |
| 10 | Comparativas de sector: GA permite comparar datos propios con empresas del mismo sector | 02 | ✅ Bloque 1.3 |
| 11 | Remarketing: sistema de anuncios adaptados a usuarios que visitaron la web sin convertir | 03 | ✅ Bloque 2.1 |
| 12 | 6 tipos de remarketing: estándar, dinámico, búsqueda (RLSA), aplicaciones móviles, vídeo, lista de distribución | 03 | ✅ Bloque 2.2 (tabla) |
| 13 | Límite de audiencias de remarketing: 2.000 por cuenta de Analytics | 03 | ✅ Bloque 2.3 |
| 14 | Audiencias de remarketing: hasta 10 cuentas publicitarias simultáneas | 03 | ✅ Bloque 2.3 |
| 15 | Una cuenta administrador de Google Ads cuenta como una de las 10 | 03 | ✅ Bloque 2.3 |
| 16 | Dimensión "segmentos con intención de compra" NO compatible con audiencias de remarketing | 03 | ✅ Bloque 2.3 |
| 17 | Métrica "días transcurridos desde la última compra" NO compatible con audiencias de remarketing | 03 | ✅ Bloque 2.3 |
| 18 | Etiqueta GA con remarketing habilitado: lee cookies de publicidad pero NO las crea | 03 | ✅ Bloque 2.4 |
| 19 | Etiqueta Google Ads: SÍ crea cookies de publicidad | 03 | ✅ Bloque 2.4 |
| 20 | Requisito para RLSA (remarketing búsqueda): modificar configuración de propiedad (no solo el código) | 03 | ✅ Bloque 2.5 |
| 21 | Requisito: mínimo 1 cuenta activa de Google Ads o Display & Video 360 vinculada a la propiedad | 03 | ✅ Bloque 2.5 |

---

## ELEMENTOS DESCARTADOS

| Elemento descartado | Motivo |
|---|---|
| GA detecta el idioma según el idioma del dispositivo del usuario (no de la web) | Incluido implícitamente en el contexto del punto de idioma; dato operativo de GA básico ya cubierto en M62 |
| Flujo de usuarios: representación gráfica de ruta de navegación | Mencionado en fuente pero es contenido ya cubierto en M62 — no se duplica |
| Pasos específicos de UI para crear cada tipo de audiencia de remarketing | Descripción de menús que cambia con actualizaciones; se captura el concepto y la ruta principal |
| Modificar código de seguimiento vs modificar configuración de propiedad (detalle técnico de implementación) | Nivel de detalle de implementación más propio de M65 (Google Tag Manager) |

---

## MAPA DE COBERTURA

| Bloque temático | Cobertura en ARNES.md |
|---|---|
| Análisis por canal (calidad vs volumen) | ✅ Completo |
| Análisis por audiencia (dispositivos, ciclo vida, cohortes) | ✅ Completo |
| iPad user agent cambio sep 2019 | ✅ Incluido como dato crítico |
| Usuarios nuevos vs recurrentes (coste de retención) | ✅ Completo |
| Explorador de usuarios | ✅ Mencionado con contexto GA360 |
| Informes personalizados (límites, tipos, raw data) | ✅ Completo |
| Paneles vs informes: diferencia | ✅ Completo con tabla |
| Comparativas de sector | ✅ Incluido |
| Remarketing: concepto y funcionamiento | ✅ Completo |
| 6 tipos de estrategias de remarketing | ✅ Completo con tabla |
| Audiencias de remarketing: creación y ejemplos | ✅ Completo |
| Límites técnicos (2.000 audiencias, 10 cuentas) | ✅ Incluidos |
| Restricciones de dimensiones/métricas incompatibles | ✅ Incluidas |
| Etiqueta GA vs etiqueta Google Ads (cookies) | ✅ Completo con tabla |
| Habilitar remarketing en GA: requisitos y pasos | ✅ Completo |
| PDF (01.Google-Analytics-avanzado.pdf) | ⚠️ No legible |

---

## NOTAS DE CONSTRUCCIÓN

- Módulo corto (3 archivos útiles). Contenido denso pero bien delimitado en 2 bloques.
- Clasificado como SABER por ser 100% explicativo sin entregable único.
- El bloque de remarketing conecta explícitamente con Google Ads — el arnés señala que la implementación técnica del código es territorio de M65 (GTM).
- Cierre del arnés orienta al usuario hacia M64 (GA4) o M65 (GTM) como continuación natural.
