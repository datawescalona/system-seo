# ARNES.audit.md — Módulo 04 — Arquitectura SEO
# Versión: 2.7 | Fecha: 2026-06-22
# Propósito: trazabilidad completa de cada elemento destilado — para verificación humana

---

## CLASIFICACIÓN DEL MÓDULO

**Categoría:** HACER-de-pasos
**Razón:** produce un entregable concreto (Excel de arquitectura SEO), sigue una secuencia definida y tiene molde de salida.
[fuente: 04.Arquitectura Web práctica.txt — "os voy a enseñar a construir esto" + proceso paso a paso de construcción del Excel]

---

## SECUENCIA DEL MÉTODO (extraída de fuente)

| Paso | Descripción | Archivo de origen |
|---|---|---|
| 1 | Prerequisito: tener el KR completado | 02 — "se debe hacer en base al Keyword Research, es por eso que esta asignatura viene justo después" |
| 2 | Determinar tipo de arquitectura (transaccional / informacional / mixta) | 03 — descripción de los dos tipos |
| 3 | Filtrar keywords del KR según tipo de arquitectura | 03 — "solo pueden haber keywords transaccionales y mixtas"; 04 — "ropa por mayor no la añado" |
| 4 | Identificar keywords más genéricas → Home | 04 — "cuál es el nivel más genérico... ropa y moda sostenible" |
| 5 | Agrupar keywords por intención → verificar en SERP | 04 — "cuando google con dos keywords diferentes da exactamente o casi exactamente los mismos resultados" |
| 6 | Asignar cada grupo a su nivel (Home, Categoría, Subcategoría...) | 04 — proceso completo de clasificación |
| 7 | Construir el Excel (URL + keyword principal + secundarias + SUMA + volumen) | 04 — "aquí iría la home... aquí keyword... aquí el volumen... aquí autosuma" |
| 8 | Presentar: Excel + organigrama vertical (opcional) | 06 — recomendación de organigrama |

---

## INVENTARIO EN BRUTO → TRAZABILIDAD

### Reglas y definiciones

| Elemento | Archivo — cita corta | Destino en ARNES.md |
|---|---|---|
| Definición de arquitectura | 02 — "árbol de páginas fijo de la web que está destinado a captar tráfico orgánico" | Bloque 1 (MAPA DEL PROCESO) |
| Hecha en base al KR | 02 — "se debe hacer en base al Keyword Research" | Bloque 1, Paso 1.2 |
| Son las páginas más importantes de la web | 02, 03 — "son las páginas más importantes de la web" | Bloque 2 (contexto transaccional) |
| Nunca una página por keyword | 04 — "nunca va a ver una página por una palabra clave" | Bloque 3 (regla principal) |
| Agrupar keywords con misma intención | 04 — "agrupar son palabras que tengan intenciones de búsqueda muy parecidas" | Bloque 3 (regla central) |
| Verificación SERP | 04 — "la página de resultados de google de esas keywords por separado [...] me dé resultados iguales o casi idénticos" | Bloque 3, COMPUERTA DE AGRUPACIÓN |
| Keyword principal = mayor volumen, en negrita | 04 — "la keyword principal marcada en negrita que es aquella que tiene más volumen" | Bloque 4 (formato del Excel) |
| URL = keyword principal con guiones | 04 — "siempre separado por guiones" | Bloque 4 (formato del Excel) |

### Tipos de arquitectura

| Elemento | Archivo — cita corta | Destino en ARNES.md |
|---|---|---|
| Tipo transaccional: solo keywords transaccionales y mixtas | 03 — "se hace solo en base a keywords transaccionales y mixtas" | Bloque 2 y Bloque 3 (filtro) |
| Tipo informacional: solo keywords informacionales | 03 — "la otra tipo de arquitectura evidentemente es la arquitectura informacional" | Bloque 2 |
| Informacional en transaccional: solo si imprescindible para la conversión | 03 — "si sabemos que nuestro cliente objetivo siempre lo va a consultar durante el proceso de conversión" | Bloque 2, Paso 2.2 |
| Informacional no imprescindible → blog, no arquitectura | 03 (implícito del criterio dado) | Bloque 2 (regla) |

### Niveles de profundidad

| Elemento | Archivo — cita corta | Destino en ARNES.md |
|---|---|---|
| Niveles superiores enlazados desde el menú | 02 — "los niveles superiores suelen estar enlazados desde el menú" | Bloque 3 (explicación de niveles) |
| Niveles inferiores pueden enlazarse por enlazado interno | 02 — "puede haber niveles inferiores que [...] se enlacen a través del enlazado interno" | Bloque 3 (nota) |
| Cuanto más genérico → más arriba (más volumen, menos conversión) | 03, 04 — "a la izquierda de la arquitectura [...] está el volumen [...] más a la derecha [...] los ratios de conversión más elevados" | Bloque 3 (explicación de niveles) |
| 3 niveles típicos | 05 — "la mayoría de arquitecturas que hagáis van a tener tres niveles" | Bloque 3 (explicación de niveles) |
| Máximo 5 niveles (caso Apple) | 05 — "1 2 3 4 5 niveles de profundidad es una barbaridad" | Bloque 3 (nota) |

### Criterios de agrupación (excepciones y casos frontera)

| Elemento | Archivo — cita corta | Destino en ARNES.md |
|---|---|---|
| "Barata": si toda la gama es barata → home; si hay rango → categoría propia | 04 — "si estuviesemos en un e-commerce donde hay barbacoas caras y baratas no podríamos poner la keyword de barbacoas baratas en la home" | Bloque 3, criterios adicionales |
| Sinónimos → solo misma página si SERP confirma | 04 — "moda sostenible [...] ropa sostenible [...] muchos de los resultados coinciden [...] voy a trabajar juntos" | Bloque 3, criterios adicionales |
| Keyword B2B en proyecto B2C: no entra | 04 — "ropa sostenible por mayor [...] no es de este modelo de negocio [...] no la añado aunque es transaccional" | Bloque 3, criterios adicionales |
| Categoría madre / madres e hijos (terminología) | 05 — "a esa gran categoría de mujer le llamamos categorías madres [...] madres e hijos se les llama a los niveles" | DESCARTADO: jerga interna, no cambia el método |

### URLs y formatos

| Elemento | Archivo — cita corta | Destino en ARNES.md |
|---|---|---|
| URL plana: dominio.com/keyword-completa | 04 — "si la arquitectura es plana [...] la url sería dominio.com/ropa-interior-sostenible-mujer" | Bloque 4 (tipos de URL) |
| URL con carpetas: dominio.com/categoría/subcarpeta | 04 — "dominio.com/ropa-sostenible-mujer/camisetas" | Bloque 4 (tipos de URL) |
| Cuál usar: depende del CMS; ambas correctas | 04 — "aunque es la más común [...] trabajar con carpetas [...] ambas formas serían totalmente correctas" | Bloque 4, Paso 4.1 |

### Presentación

| Elemento | Archivo — cita corta | Destino en ARNES.md |
|---|---|---|
| Excel se trabaja en horizontal | 06 — "la arquitectura se trabaja en horizontal" | Bloque 5 (contexto) |
| Acompañar con organigrama vertical | 06 — "recomiendo que siempre [...] acompañéis un organigrama donde simplemente pongamos el nombre de las páginas y los niveles en vertical" | Bloque 5 |
| Organigrama: nombre de página + sumatorio | 06 — "pongamos el nombre de las páginas y los niveles [...] el total" | Bloque 5 |
| Herramienta: organigrama online | 06 — "si buscáis en Google Organigrama Online encontraréis mil herramientas" | Bloque 5 |

---

## NÚMEROS Y LÍMITES — MAPA DE COBERTURA COMPLETO

| Cifra | Origen | Destino |
|---|---|---|
| Ratio conversión España: 0,80 % – 1,5–2 % | 03 — "suelen estar por ahí entre 0,80 y el 1,5 en España" | Bloque 2 (contexto: por qué las páginas transaccionales son las más importantes) |
| Ratio "muy bueno" España: 1,5 % para ecommerce | 03 — "un ratio de conversión de 1,5 por ejemplo para ecommerce es un ratio de conversión muy bueno" | Misma ubicación |
| Ratios USA más altos / Latam más bajos | 03 | DESCARTADO — dato contextual comparativo, no del método |
| 3 niveles típicos | 05 | Bloque 3 — incluido |
| 5 niveles máximos (Apple) | 05 | Bloque 3 — incluido como nota |
| 70 búsquedas/mes → conversión 4.000-5.000 € | 05 | DESCARTADO — dato ilustrativo del valor de páginas profundas, no del método |
| 2.050 keywords concatenadas → 46 con volumen (moda sostenible) | 04 | DESCARTADO — dato de ejemplo del KR, no del método de arquitectura |
| 2 semanas para arquitectura moda femenina | 05 | DESCARTADO — dato contextual de duración |

---

## VERIFICACIÓN DE 3 REQUISITOS DE v2.7

| Requisito | Presente en ARNES.md | Dónde |
|---|---|---|
| Presentación digerible: plan resumido al inicio | Sí | MAPA DEL PROCESO (5 bloques nombrados antes de empezar) |
| Una pregunta por turno | Sí | Cada paso pide UNA cosa y lleva "[Esperar respuesta]" explícito |
| Bloques cerrados antes de abrir el siguiente | Sí | Cada bloque termina con "Cierre del Bloque X: Pasamos al Bloque Y" |

---

## CHECKLIST FASE 4 (parches)

- [x] IDENTIDAD con blindaje anti-jailbreak
- [x] PASO 0 de verificación de fuente (lista de archivos explícita)
- [x] No-inventar: MODO GUÍA definido (sin datos → [pendiente] + pasos para conseguirlos)
- [x] Distinción CONCEPTO general vs DATO de panel privado (URLs, volúmenes del CMS del cliente → siempre pedidos al usuario)
- [x] Verificar SERP antes de agrupar (compuerta obligatoria)
- [x] Derivar lo ajeno: si no tiene KR → deriva al Módulo 3 y retoma cuando vuelva
- [x] Inventario FASE 1.5 ejecutado: todos los elementos tienen destino (incluido/descartado con razón)
- [x] Señal de cierre flexible sin loop infinito
- [x] Regla anti-invención: COMPUERTA DE AGRUPACIÓN obliga a SERP antes de agrupar
- [x] COMPUERTA DE HONESTIDAD: declaración de qué salió de SERP verificada vs criterio propio
- [x] Presentación digerible: plan + una pregunta por turno + bloques con cierre explícito

---

## DECISIONES DE DISEÑO

1. **Prerequisito KR como bloque explícito (Paso 1.2):** la fuente dice claramente "viene justo después del Keyword Research" y "la profundidad depende del KR". Sin KR no hay arquitectura — el arnés deriva al usuario al Módulo 3 si no lo tiene.

2. **Categoría madre / madres e hijos descartada del arnés:** terminología del sector (jerga) que no cambia el método. El arnés usa "nivel superior que contiene otros niveles" en lenguaje natural.

3. **Ratios de conversión incluidos en contexto:** las cifras 0,80%-1,5% no son pasos del método, pero sí justifican por qué las páginas transaccionales son las más importantes. Incluidas como contexto, no como compuerta.

4. **Excel de ejemplos no legibles:** hay 7 Excel de ejemplos en la carpeta que no son legibles directamente. El arnés nota su existencia en PASO 0 pero no finge acceder a su contenido.
