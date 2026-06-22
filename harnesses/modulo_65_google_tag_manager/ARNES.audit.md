# Módulo 65 — ARNES.audit.md
# Auditoría de cobertura — Constructor v2.7

---

## Fuentes leídas

| Archivo | Estado |
|---|---|
| 01.Introduccion.txt | ✅ Leído |
| 02.Dashboard.txt | ✅ Leído |
| 03.Tags, triggers y variables.txt | ✅ Leído |
| 04.Versiones.txt | ✅ Leído |
| 05.Conclusiones.txt | ✅ Leído |
| 00.Ejercicio.pdf | ❌ No legible (PDF binario) |
| 01.Google-Tag-Manager.pdf | ❌ No legible (PDF binario) |

---

## Inventario de elementos (21 incluidos, 4 descartados)

| # | Elemento | Fuente | En ARNES | Sección |
|---|---|---|---|---|
| 1 | GTM = herramienta gratuita de Google | 01, 02 | ✅ | §1 |
| 2 | Un único snippet reemplaza todos los códigos de seguimiento individuales | 01, 02 | ✅ | §1 |
| 3 | Snippet tiene dos partes: `<head>` y `<body>` | 02 | ✅ | §2 |
| 4 | ID del contenedor: formato `GTM-XXXXXX` | 02 | ✅ | §2 |
| 5 | Tipos de contenedor: web, iOS, Android, AMP, server-side | 02 | ✅ | §2 (tabla) |
| 6 | Estructura: cuenta → contenedor → workspace → etiquetas + activadores + variables | 01, 02 | ✅ | §3 |
| 7 | Etiqueta (Tag) = código/píxel + condición de activación | 03 | ✅ | §4 |
| 8 | Activador (Trigger) = condición que determina CUÁNDO se dispara la etiqueta | 03 | ✅ | §4 (tabla) |
| 9 | Variable = valor reutilizable referenciable en etiquetas y activadores | 03, 04 | ✅ | §4 |
| 10 | Dashboard: vista general, etiquetas, activadores, variables, carpetas, plantillas, vista previa, enviar | 02, 04 | ✅ | §3 |
| 11 | Etiquetas predeterminadas: GA4, GA Universal, Google Ads, eventos, Hotjar, etc. | 02, 03 | ✅ | §4 |
| 12 | Galería de plantillas comunitarias para etiquetas no en lista por defecto | 03 | ✅ | §4 |
| 13 | HTML personalizado para cualquier código que no esté en la galería | 03, 04 | ✅ | §4 |
| 14 | Vista previa / Tag Assistant = debugger que muestra qué etiquetas se disparan en cada interacción | 03 | ✅ | §5 |
| 15 | Vista previa solo la ve quien la activa; los cambios NO están en producción hasta publicar | 03 | ✅ | §5 (nota) |
| 16 | Publicar ("Enviar") → nueva versión con descripción del cambio | 04 | ✅ | §5, §6 |
| 17 | Historial de versiones: permite rollback a versión anterior | 04 | ✅ | §6 |
| 18 | Exportar/importar configuración del contenedor como archivo JSON | 04 | ✅ | §6 |
| 19 | Carpetas para organizar etiquetas en grupos (opcional) | 03, 04 | ✅ | §3, §6 |
| 20 | Activadores disponibles: todas las páginas, clic en enlace, envío de formulario, interacción YouTube (inicio/pausa/completado/progreso), temporizador (intervalo en ms), visibilidad de elemento | 04 | ✅ | §4 (tabla) |
| 21 | Gestión de usuarios y permisos por contenedor (ver / editar / publicar) | 04 | ✅ | §7 |

---

## Elementos descartados

| Razón | Detalle |
|---|---|
| Artefactos de transcripción oral | Frases incompletas, errores de reconocimiento ("Tak Maray", "cantemos como si nadie nos escuchara"), muletillas del presentador |
| Ejemplo específico del curso | WordPress de prueba del presentador — no aporta contenido transferible |
| Repetición sin contenido nuevo | Proceso de vista previa descrito varias veces con distintas palabras; el ARNES incluye la versión más clara |
| Anécdotas del presentador | Comentarios sobre no querer cantar en el vídeo, etc. — no son conocimiento SEO/GTM |

---

## Cobertura

- **21 / 21 elementos incluidos** → 100% de cobertura de contenido relevante.
- Limitación: 2 PDFs no legibles. Si contienen ejercicios prácticos adicionales, no están cubiertos.
- Módulo corto (5 archivos, muy densos en contenido práctico de demostración en pantalla) — la densidad de información conceptual es moderada.
