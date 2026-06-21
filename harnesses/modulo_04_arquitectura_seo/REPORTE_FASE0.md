# REPORTE FASE 0 — Prueba del Constructor v2.2
Fecha: 2026-06-21
Constructor usado: CONSTRUCTOR_ARNESES.md v2.2 (recién subido, NO validado aún)
Módulo de prueba: Módulo 04 — Arquitectura SEO

---

## 1. ¿Qué módulo se eligió y por qué?

Se eligió el **Módulo 04 — Arquitectura SEO**.

El protocolo pedía usar el Módulo 02 si existía y tenía archivos crudos. No existe ninguna carpeta `modulo_02_*` en el repo (los módulos empiezan en el 03). El Módulo 03 está expresamente prohibido como módulo de prueba (es el patrón de referencia para comparar). El siguiente en número es el **Módulo 04**, que tiene **17 archivos crudos** en su carpeta `archivos/`, de los cuales 7 son `.txt` legibles y ricos en contenido.

No se revisó ni se abrió el `ARNES.md` existente del Módulo 04 en ningún momento de la construcción.

---

## 2. Clasificación del módulo

**Categoría asignada: HACER-de-pasos**

**Por qué:** El Módulo 04 produce un entregable concreto —el árbol de URLs de la web en Excel— siguiendo una secuencia de pasos con orden definido: recibir el KW research → clasificar tipo de arquitectura → identificar keywords de Home → agrupar por intención → organizar en niveles → definir URLs → calcular volúmenes → entregar en Excel. No es un módulo de juicio sin entregable (HACER-de-criterio) ni un módulo explicativo sin producto (SABER).

---

## 3. ¿Lleva molde? ¿Por qué?

**Sí lleva molde.** Es HACER-de-pasos, por lo tanto corresponde molde según la FASE 5 del Constructor.

El molde es un **Excel con orientación horizontal** donde los niveles de la arquitectura (Home, Categoría, Subcategoría…) ocupan grupos de 3 columnas (URL, Keywords, Volumen). Las páginas del mismo nivel se apilan verticalmente. Cada página tiene una fila TOTAL con fondo gris claro y la suma de volúmenes de sus keywords.

El molde **no se hereda** de ningún otro módulo: es específico del producto que genera el método de arquitectura SEO.

---

## 4. Archivos crudos procesados

| Archivo | Formato | Estado |
|---|---|---|
| 01.Introducción.txt | .txt | Leído completo |
| 02.Arquitectura Web.txt | .txt | Leído completo |
| 03.Tipos de Arquitectura.txt | .txt | Leído completo |
| 04.Arquitectura Web práctica.txt | .txt | Leído completo (46 KB — el más denso) |
| 05.Ejemplos Arquitectura.txt | .txt | Leído completo |
| 06.Presentación Arquitectura Web.txt | .txt | Leído completo |
| 07.Ejercicios.txt | .txt | Leído completo |
| 02.Arquitectura+Web.pptx.pdf | .pdf | No extraíble directamente — contenido ya cubierto por los .txt |
| 07.1.Ejercicio+Arquitectura+web.pdf | .pdf | No extraíble directamente — contenido cubierto por 07.Ejercicios.txt |
| 05.1.Ejemplo-Arquitectura-Ecommerce-Apple-B2C.xlsx | .xlsx | No legible como texto — dato de riesgo (ver nota) |
| 05.1.Ejemplo-Arquitectura-Ecommerce-Flores-B2C.xlsx | .xlsx | No legible como texto |
| 05.1.Ejemplo-Arquitectura-Informacional-Camino-de-Santiago.xlsx | .xlsx | No legible como texto |
| 05.1.Ejemplo-Arquitectura-Moda-Sostenible-Caso-practico-clase.xlsm.xlsx.xlsx | .xlsx | No legible como texto |
| 05.1.Ejemplo-Arquitectura-SEO-Agencia-SEO-Caso-practico-clase.xlsx | .xlsx | No legible como texto |
| 05.1.Ejemplo-Arquitectura-SEO-Ecommerce-Barbacoas-B2C.xlsx | .xlsx | No legible como texto |
| 05.1.Ejemplo-Arquitectura-Seguros-escolares-B2B.xlsx | .xlsx | No legible como texto |
| 05.1.Ejemplo-Keyword-Research-Moda-femenina-B2C-1-1.xlsx | .xlsx | No legible como texto |

**Total archivos crudos en carpeta:** 17
**Legibles y destilados:** 7 (todos los .txt)
**No extraíbles directamente:** 9 (2 PDFs + 7 Excel) — ver nota de riesgo abajo

**Nota de riesgo sobre los Excel:** Los 7 archivos Excel son los ejemplos reales de arquitecturas (Apple, flores, moda femenina, etc.). Su contenido fue descrito en detalle en los .txt de la clase práctica, pero las columnas exactas, los anchos, los colores y la estructura interna de los Excel no fueron verificables directamente. La especificación del molde en el arnés se basa en la descripción verbal del instructor. **Se recomienda que el validador humano abra al menos uno de los Excel (el de Barbacoas o el de Agencia SEO, que son los más descritos en la clase) y compare con la especificación del molde en el arnés antes de declarar la prueba superada.**

---

## 5. Checklist de parches FASE 4

| Parche | Estado | Notas |
|---|---|---|
| IDENTIDAD con blindaje anti-jailbreak | ✅ Instalado | Sección IDENTIDAD + parche anti-jailbreak explícito en PARCHES |
| PASO 0 de verificación de fuente | ✅ Instalado | Sección PASO 0 — pide KW research real antes de empezar |
| No-inventar: sin datos → MODO GUÍA | ✅ Instalado | "Si el cliente no tiene keyword research, no improvisas páginas" |
| Distinción CONCEPTO general vs DATO de panel privado | ✅ Instalado | "tasa de conversión media en España (benchmark general)... NUNCA afirmas la tasa real del cliente" |
| Etiquetado benchmark-general vs dato-real-pedido | ✅ Instalado | La referencia 0,8%-1,5% está marcada como benchmark, no dato de cliente |
| Verificar un archivo antes de afirmar algo de él | ✅ Instalado | "antes de afirmar cuántas keywords tiene o cuáles son las más volumétricas, confirmas mirando el archivo real" |
| Derivar lo ajeno y RETOMAR la tarea propia tras derivar | ✅ Instalado | "si surge una duda sobre URLs técnicas, la derivas al módulo de URLs y retomas la arquitectura" |
| Señal de cierre flexible sin loop infinito | ✅ Instalado | Sección SEÑAL DE CIERRE con mensaje de cierre definido |
| Contenido de riesgo/compliance → defensa específica | ➖ No aplica | El Módulo 04 es metodológico, sin riesgo de compliance |
| Listas para copiar en bloque limpio primero, explicación después | ➖ No aplica | El producto es un Excel, no listas de texto copiables |

---

## 6. Compuerta A — Pasos de mayor riesgo a cruzar obligatoriamente

El validador humano **debe cruzar contra la fuente** los siguientes pasos (marcados ⚠️ en el archivo audit):

1. **Excepción precio (barata/barato):** ¿es correcto que solo va a Home si TODA la web tiene ese precio? → Cruzar con `04.Arquitectura Web práctica.txt`
2. **Excepción B2B vs B2C:** ¿es correcto que las keywords "al por mayor" se excluyen para ecommerce B2C? → Cruzar con `04.Arquitectura Web práctica.txt`
3. **Sinónimos en Home:** ¿es correcto que dos keywords con SERPs casi idénticos van a la misma página y se elige la más transaccional como principal? → Cruzar con `04.Arquitectura Web práctica.txt`
4. **Herencia de carpeta en URL:** ¿es correcto el mecanismo de construcción de URLs con carpetas (la subcategoría hereda la ruta de la categoría padre)? → Cruzar con `04.Arquitectura Web práctica.txt`
5. **Sinónimos en categoría:** ¿es correcto que "barbacoas de obra moderna" y "barbacoas de obra diseño moderno" van en la misma página por tener la misma intención? → Cruzar con `04.Arquitectura Web práctica.txt`

Más 2-3 al azar de los demás pasos en `ARNES.audit_PRUEBA.md`.

---

## 7. Pendientes para declarar la prueba superada (aún no completados)

- [ ] Compuerta A: validador humano cruza los pasos de riesgo contra la fuente
- [ ] Validador humano abre al menos un Excel de ejemplo y compara con la spec del molde
- [ ] Batería funcional en sesión limpia (casos de autosuficiencia, procesamiento, cierre)
- [ ] Batería adversarial en otro modelo o con humano (jailbreak, presión social)
- [ ] Comparación contra gold standard (Módulo 03 v2.0 construido a mano — si existe)
- [ ] Compuerta B: reporte al humano de resultados de batería

**Estado actual: PRUEBA INICIADA — pendiente validación humana**
