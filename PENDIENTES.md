# PENDIENTES — SISTEMA HARNESS-SDD
Última actualización: 2026-09-14 (Sesión actual)

PENDIENTES ABIERTOS: 6

---

[ABIERTO] Decidir si se actualiza el conteo "Total: 86 módulos" del Blueprint (línea 432) y "86 total modules" de CONTROL.md a 83, ya que por decisión del usuario los módulos 87, 89 y 90 dejan de construirse como arneses independientes (su contenido va a harnesses/material_de_apoyo/). Ver HALLAZGO 16 en AUDITORIA.md.

[ABIERTO] Construir el arnés del Módulo 69 (HTAccess) con Constructor v2.7 — sus crudos ya estaban subidos desde 2026-06-22 (8 archivos), pero no se había reconstruido. Ver HALLAZGO 15 en AUDITORIA.md.

[ABIERTO] El usuario está subiendo crudos de módulos — en progreso. Cuando confirme que terminó, se arranca la reconstrucción con el constructor v2.7.

[ABIERTO] Reconstruir arneses 04-61 con Constructor v2.7, uno por uno, probando cada uno con cliente real antes de continuar con el siguiente — pendiente hasta que el usuario termine de subir crudos — origen: ciclo de maduración del constructor (HALLAZGO 14) + gold standard M3 validado.

[ABIERTO] Reorganización de carpetas: harnesses/ + plantillas/ + conocimiento/ + crear MATRIZ.md — hacer DESPUÉS de terminar de subir crudos y reconstruir arneses, no antes — origen: decisión estratégica Sesión 21.

[ABIERTO] Mega Arnés Orquestador (MEGA_ARNES.md) — congelado hasta tener todos los arneses reconstruidos y sanos con v2.7 — origen: IMPLEMENTACION_Y_OPERACION.md B6.

[RESUELTO 2026-06-22] Constructor maduró de v2.2 a v2.7 (HALLAZGO 14). Módulo 3 reconstruido oficial con v2.7, ARNES.audit.md con anclas, archivos de prueba eliminados. Gold standard HACER-de-pasos validado.

[RESUELTO 2026-06-20] Propagar parche de comportamiento v1.9 a los arneses ya construidos (03 hecho como piloto) — completado: todos los arneses en v1.9.
