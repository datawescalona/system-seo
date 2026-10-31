# PENDIENTES — SISTEMA HARNESS-SDD
Última actualización: 2026-10-31 (Sesión 25)

PENDIENTES ABIERTOS: 6

---

[ABIERTO] Módulo 69 (HTAccess): arnés construido con Constructor v2.7 el 2026-10-31 pero NO probado — falta la Compuerta A (el usuario cruza los pasos de riesgo de ARNES.audit.md sección 6 contra la fuente) y la Compuerta B (batería en sesión limpia y otro modelo, ARNES.audit.md sección 7). Ver HALLAZGO 17 en AUDITORIA.md.

[ABIERTO] Módulo 69: faltan los dos archivos de ejemplo de configuración (uno de Apache y uno de Nginx) que el material dice dejar para copiar; no están en harnesses/modulo_69_htaccess/archivos/. Sin ellos el arnés no escribe código y usa MODO GUÍA. Si el usuario los tiene, subirlos a esa carpeta. Ver HALLAZGO 17.

[ABIERTO] El usuario está subiendo crudos de módulos — en progreso. Cuando confirme que terminó, se arranca la reconstrucción con el constructor v2.7.

[ABIERTO] Reconstruir arneses 04-61 con Constructor v2.7, uno por uno, probando cada uno con cliente real antes de continuar con el siguiente — pendiente hasta que el usuario termine de subir crudos — origen: ciclo de maduración del constructor (HALLAZGO 14) + gold standard M3 validado.

[ABIERTO] Reorganización de carpetas: harnesses/ + plantillas/ + conocimiento/ + crear MATRIZ.md — hacer DESPUÉS de terminar de subir crudos y reconstruir arneses, no antes — origen: decisión estratégica Sesión 21.

[ABIERTO] Mega Arnés Orquestador (MEGA_ARNES.md) — congelado hasta tener todos los arneses reconstruidos y sanos con v2.7 — origen: IMPLEMENTACION_Y_OPERACION.md B6.

[RESUELTO 2026-10-31] Construir el arnés del Módulo 69 (HTAccess) con Constructor v2.7 — construido (queda la prueba, ver pendiente de arriba).

[RESUELTO 2026-09-14] Conteo total del Blueprint (línea 432) y CONTROL.md actualizado de 86 a 83 módulos — se eliminaron de la tabla oficial (Sección 8) los módulos 87, 89 y 90 por decisión del usuario. Ver HALLAZGO 16 en AUDITORIA.md.

[RESUELTO 2026-06-22] Constructor maduró de v2.2 a v2.7 (HALLAZGO 14). Módulo 3 reconstruido oficial con v2.7, ARNES.audit.md con anclas, archivos de prueba eliminados. Gold standard HACER-de-pasos validado.

[RESUELTO 2026-06-20] Propagar parche de comportamiento v1.9 a los arneses ya construidos (03 hecho como piloto) — completado: todos los arneses en v1.9.
