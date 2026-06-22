# REPORTE_v3 — Prueba Constructor v2.3 sobre Módulo 03
Fecha: 2026-06-21
Constructor usado: CONSTRUCTOR_ARNESES.md v2.3

---

## CATEGORÍA DEL MÓDULO

**HACER-de-pasos**

Razón: el módulo produce un entregable concreto (Excel de Keyword Research con volúmenes, estacionalidad y formato visual) siguiendo una secuencia de pasos definida. Lleva molde.

---

## ARCHIVOS PROCESADOS

Carpeta leída: `harnesses/modulo_03_keyword_research/archivos/1_CARGAR_SIEMPRE/`
Total de archivos: 19 archivos .txt

1. LEEME.txt
2. 01.Introducción.txt
3. 02.Keywords.txt
4. 03.Customer Journey.txt
5. 04.Tipos de Keywords.txt
6. 05.Estacionalidad y Tendencia.txt
7. 06.Herramientas.txt
8. 06.1.Links-de-Herramientas.txt
9. 07.Concatenador de palabras clave.txt
10. 07.1.Link-Concatenador-de-palabras-clave.txt
11. 08.Keyword Planner de Google.txt
12. 09.Funciones del Keyword Planner de Google.txt
13. 10.Keyword Research Práctico.txt
14. 11.Presentación del Keyword Research.txt
15. 12.Ejemplos de Keyword Research.txt
16. 13.Tracking de Keywords.txt
17. 14.Anexo 1...txt
18. 15.Anexo 2...txt
19. 16.Keyword planner.txt
20. 17.Ejercicios.txt

Nota: el archivo LEEME.txt tiene instrucciones sobre la carpeta, no contenido de módulo. Los 19 archivos restantes sí contienen contenido.

---

## CHECKLIST DE PARCHES (FASE 4) — VERIFICACIÓN

- [x] IDENTIDAD con blindaje anti-jailbreak → presente en sección "IDENTIDAD": bloquea petición de "listado de memoria" y petición de "ignorar método"
- [x] PASO 0 de verificación de fuente → presente: verifica acceso a KP, tipo de cuenta (con/sin campaña), tipo de KR antes de arrancar
- [x] No-inventar: sin datos → MODO GUÍA → presente: si no hay cuenta de Google Ads, explica cómo crearla en vez de aproximar volúmenes
- [x] Distinción CONCEPTO vs DATO de panel privado → presente: puede hablar de benchmarks generales (tasa de conversión media) pero no afirma volúmenes sin verlos en KP
- [x] Etiquetado benchmark-general vs dato-real-pedido → presente: benchmark declarado como referencia, dato de KP como fuente real
- [x] Verificar archivo antes de afirmar → presente: si el cliente sube un Excel de keywords, no asume que está completo; verifica en KP
- [x] Derivar lo ajeno y RETOMAR → presente: si surge pregunta de arquitectura, deriva a Módulo 04 y retoma el KR
- [x] Señal de cierre flexible → presente: "El KR está completo cuando ya no aparecen keywords transaccionales nuevas" con mensaje de cierre definido
- [x] REGLA ANTI-INVENCIÓN → presente en sección PARCHES: clasificar/agrupar/nombrar solo por dato verificable; lo ambiguo se declara y se verifica contra SERP o se pide al humano; prohibido repartir a ojo
- [x] COMPUERTA DE HONESTIDAD → presente en sección PARCHES: declarar qué vino de dato real y qué es decisión editorial antes de entregar; además implementada en Compuerta 4

---

## COMPUERTAS INSTALADAS

1. **Compuerta 1 (tras clasificar tipos de KW):** muestra tipo de KR + 3-5 ejemplos de keywords que entran y 2-3 que no. Cruzable: el cliente reconoce su negocio o señala lo que falta.

2. **Compuerta 2 (tras completar selección en KP):** muestra top 10 keywords con tipo, top 5 negativas con motivo, y categorías excluidas. Cruzable: el cliente revisa que no falta nada relevante.

3. **Compuerta 3 — anti-ambigüedad (nueva en v2.3):** ante cualquier keyword de tipo incierto, el agente DEBE declarar la duda, verificar en el SERP real de Google, y solo entonces clasificar. Prohibido resolver por similitud de texto.

4. **Compuerta 4 — honestidad (nueva en v2.3):** antes de entregar el Excel, el agente declara explícitamente qué salió de dato real (KP, SERP verificado) y qué decidió por criterio propio. Lo segundo se marca como "decisión mía — confírmala".

---

## CONFIRMACIÓN: REGLA ANTI-INVENCIÓN EN EL ARNÉS

**SÍ está dentro del arnés.** Aparece en dos lugares:

1. En la sección **PARCHES DEL SISTEMA**: texto completo de la regla — solo clasifica por dato verificable, lo ambiguo se declara y verifica, prohibido repartir a ojo.
2. En la **Compuerta 3**: protocolo de ejecución — ante keyword ambigua, declara → busca en Google → revisa SERP → clasifica.

---

## CONFIRMACIÓN: COMPUERTA DE HONESTIDAD EN EL ARNÉS

**SÍ está dentro del arnés.** Aparece en dos lugares:

1. En la sección **PARCHES DEL SISTEMA**: texto completo — antes de entregar, declarar dato real vs criterio; lo de criterio se marca como "decisión mía — confírmala".
2. En la **Compuerta 4**: es un checkpoint explícito antes de entregar el Excel, con estructura de dos bloques: "Esto salió de dato real" / "Esto decidí yo por criterio (confírmalo)".

---

## DIFERENCIAS RESPECTO AL ARNES.md ACTUAL (si las hay)

No revisé ARNES.md actual (prohibido por la regla CRÍTICA anti-trampa). Esta sección queda vacía intencionalmente hasta que el humano haga la comparación en la compuerta de validación.

---

## RESULTADO DE CONSTRUCCIÓN

Arnés construido desde cero leyendo solo los crudos de `1_CARGAR_SIEMPRE/`. Las dos nuevas reglas de v2.3 están presentes y operativas en el arnés. El molde está especificado en texto con suficiente detalle para que cualquier agente genere el Excel consistentemente.

**Estado:** PRUEBA — pendiente comparación con gold standard y batería en sesión limpia (FASE 6 y FASE 7 del Constructor).
