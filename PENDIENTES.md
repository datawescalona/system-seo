# PENDIENTES — SISTEMA HARNESS-SDD
Última actualización: 2026-10-31 (Sesión 26)

PENDIENTES ABIERTOS: 12

---

[ABIERTO] Módulo 69 (HTAccess): arnés construido con Constructor v2.7 el 2026-10-31 pero NO probado — falta la Compuerta A (el usuario cruza los pasos de riesgo de ARNES.audit.md sección 6 contra la fuente) y la Compuerta B (batería en sesión limpia y otro modelo, ARNES.audit.md sección 7). Ver HALLAZGO 17 en AUDITORIA.md.

[ABIERTO] Módulo 69: faltan los dos archivos de ejemplo de configuración (uno de Apache y uno de Nginx) que el material dice dejar para copiar; no están en harnesses/modulo_69_htaccess/archivos/. Sin ellos el arnés no escribe código y usa MODO GUÍA. Si el usuario los tiene, subirlos a esa carpeta. Ver HALLAZGO 17.

[RESUELTO 2026-10-31] El usuario terminó de subir crudos: M06 a M82 y M91 ya tienen sus archivos. Ya no hay módulos esperando crudos (revisión del M91 en HALLAZGO 18).

[ABIERTO] Módulos 70, 71, 72, 73, 78, 81 y 82: arneses construidos con Constructor v2.7 el 2026-10-31 pero NO probados. Falta la Compuerta A (el humano cruza los pasos de riesgo de cada ARNES.audit.md contra la fuente) y la Compuerta B (batería en sesión limpia y otro modelo para los casos adversariales). Ver HALLAZGO 19.

[ABIERTO] Módulos 70, 71, 72 y 73: parte del código, las fórmulas y las capturas de las fuentes están en imágenes y el verificador automático no las comprueba. Cruzar a mano las secciones de código/ejemplos de cada arnés contra los PDF. M71 además no trae casi ningún script literal (MODO GUÍA). Ver HALLAZGO 19.

[ABIERTO] M73 (SQL): la fuente se contradice en el caso con FULL OUTER JOIN (el WHERE con AND en ambas tablas descarta las filas que el JOIN quería conservar). El arnés avisa y pregunta, pero el humano debe decidir si lo corrige. Ver HALLAZGO 19.

[ABIERTO] M82 y otros módulos con cifras: la fuente de M82 no tiene fecha y solo da cifras de España; M70, M71, M72, M73 y M78 citan herramientas o cifras que pueden estar desactualizadas. Los arneses las marcan "según la fuente"; revisar vigencia antes de uso real. Ver HALLAZGO 19.

[RESUELTO 2026-11-01] Módulo 91 (SEO con ChatGPT): arnés construido con Constructor v2.7 (declara las herramientas de IA como de la fuente). Al construir, declarar que los nombres de herramientas de IA (Bing Chat, Bard, DALL-E 2) son los de la fuente y pedir al humano confirmar la versión actual. Ver HALLAZGO 18.

[ABIERTO] Módulos 74, 75, 76, 77, 79 y 91: arneses construidos con Constructor v2.7 el 2026-11-01 pero NO probados. Falta la Compuerta A (cruzar los pasos de riesgo de cada ARNES.audit.md contra la fuente) y la Compuerta B (batería en sesión limpia y otro modelo). Ver HALLAZGO 20.

[ABIERTO] Módulos 74, 75, 76, 77, 79 y 91: huecos de la fuente declarados en cada arnés (M75 sin código literal y con inconsistencias internas; M74 con un audio que empieza a mitad de explicación; M76 con capturas ilegibles; M77 sin horas ni tarifas típicas; M91 con regex y prompts descargables ausentes). Los .xlsx y .docx de M76, M77 y M91 no los comprueba el verificador: cruzar a mano. Ver HALLAZGO 20.

[ABIERTO] Módulos 76 y 77: la lista de archivos de conocimiento conserva los nombres reales de archivo con la marca de origen (BIGSEO). El arnés ordena no mostrarlos al usuario. Decidir si se renombran los archivos de archivos/ para eliminar el rastro. Ver HALLAZGO 20.

[ABIERTO] Reconstruir arneses 04-61 con Constructor v2.7, uno por uno, probando cada uno con cliente real antes de continuar con el siguiente — pendiente hasta que el usuario termine de subir crudos — origen: ciclo de maduración del constructor (HALLAZGO 14) + gold standard M3 validado.

[ABIERTO] Reorganización de carpetas: harnesses/ + plantillas/ + conocimiento/ + crear MATRIZ.md — hacer DESPUÉS de terminar de subir crudos y reconstruir arneses, no antes — origen: decisión estratégica Sesión 21.

[ABIERTO] Mega Arnés Orquestador (MEGA_ARNES.md) — congelado hasta tener todos los arneses reconstruidos y sanos con v2.7 — origen: IMPLEMENTACION_Y_OPERACION.md B6.

[RESUELTO 2026-10-31] Construir el arnés del Módulo 69 (HTAccess) con Constructor v2.7 — construido (queda la prueba, ver pendiente de arriba).

[RESUELTO 2026-09-14] Conteo total del Blueprint (línea 432) y CONTROL.md actualizado de 86 a 83 módulos — se eliminaron de la tabla oficial (Sección 8) los módulos 87, 89 y 90 por decisión del usuario. Ver HALLAZGO 16 en AUDITORIA.md.

[RESUELTO 2026-06-22] Constructor maduró de v2.2 a v2.7 (HALLAZGO 14). Módulo 3 reconstruido oficial con v2.7, ARNES.audit.md con anclas, archivos de prueba eliminados. Gold standard HACER-de-pasos validado.

[RESUELTO 2026-06-20] Propagar parche de comportamiento v1.9 a los arneses ya construidos (03 hecho como piloto) — completado: todos los arneses en v1.9.
