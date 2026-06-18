# SISTEMA HARNESS-SDD
## Sistema de Micro-Agentes SEO
### Blueprint Maestro + Sistema de Control de Avances

| Módulos totales | Arneses a crear |
|---|---|
| **91 módulos** | **91 arneses** |

Versión 1.1 · Compatible con Claude · ChatGPT · Gemini · cualquier LLM

---

# 1. ¿Qué es el Sistema HARNESS-SDD?

Este documento es la referencia maestra de un sistema de micro-agentes de IA construido sobre el contenido de un curso de SEO. Cada arnés (harness) es un agente especializado en un único módulo del curso.

> **Definición central:** Un Arnés es un archivo de texto estructurado que convierte cualquier IA en un experto especializado en un tema. El arnés le dice a la IA quién es, qué sabe, cómo actuar y cuándo su trabajo está terminado. Funciona con Claude, ChatGPT, Gemini o cualquier modelo de lenguaje.

## 1.1 Los tres componentes del sistema

El sistema tiene tres capas que trabajan juntas:

- **Micro-Arnés** — Un agente por módulo. Lee los archivos de su carpeta, aplica el conocimiento de ese tema específico y ejecuta su tarea en loop hasta completarla correctamente.

- **Arnés Orquestador** — El agente maestro que conoce todos los módulos. Recibe una tarea compleja, la divide entre los micro-arneses correctos y coordina el flujo de trabajo.

- **Sistema de Control** (este documento + CONTROL.md en GitHub) — Registra qué arneses están creados, cuáles están probados y dónde se quedó el trabajo en cada sesión.

---

# 2. El Flujo Completo del Sistema

## 2.1 Cómo funciona paso a paso

| **Paso** | **Componente** | **Descripción** |
|---|---|---|
| **01** | **GitHub** | Repositorio central donde viven todos los arneses y archivos del curso. Es el almacén universal. Cualquier IA o persona accede con un link. |
| **02** | **Carpeta del módulo** | Cada módulo tiene su propia carpeta con: el ARNES.md (el cerebro) + los archivos del curso (PDF, Excel, TXT, PPT). |
| **03** | **El usuario activa** | El usuario abre cualquier IA (Claude, ChatGPT, etc.), pega el ARNES.md del módulo que necesita, adjunta los archivos de esa carpeta. |
| **04** | **La IA se transforma** | La IA lee el arnés, carga el conocimiento de los archivos y se convierte en el experto de ese módulo específico. |
| **05** | **Ejecución en loop** | El agente aplica su habilidad, verifica que el trabajo esté completo y no termina hasta que esté correcto. |
| **06** | **Mega Arnés** | Para proyectos complejos, el Arnés Orquestador coordina múltiples micro-agentes en secuencia lógica. |

---

# 3. Herramientas que Necesitas

> **Solo necesitas 3 herramientas — todas gratuitas.**
> No necesitas código. No necesitas servidores. No necesitas pagar nada extra.

| **Herramienta** | **Para qué sirve** | **Detalles** |
|---|---|---|
| **GitHub** | Almacén universal | Guarda todos los arneses y archivos del curso. Repositorio público = cualquiera puede conectarse. Privado = solo tú. Gratis en github.com |
| **Editor de texto** | Escribir arneses | Notepad, VSCode (gratis) o directamente con Claude. Los arneses son archivos .md de texto plano. |
| **Cualquier IA** | Ejecutar los agentes | Claude, ChatGPT, Gemini, Mistral. El usuario pega el arnés + archivos y la IA se convierte en el agente experto. |

---

# 4. Estructura del Repositorio GitHub

Organiza tu repositorio exactamente así. Cada módulo tiene su propia carpeta con el arnés y sus archivos de conocimiento.

```
/system-seo/                          ← repositorio raíz
│
├── README.md                         ← presentación del sistema
├── MEGA_ARNES.md                     ← el orquestador maestro
├── CONTROL.md                        ← registro de avances
├── HARNESS_SDD_BLUEPRINT.md          ← este documento
│
└── harnesses/
    ├── modulo_03_keyword_research/
    │   ├── ARNES.md                  ← el arnés (cerebro del agente)
    │   └── archivos/
    │       ├── keyword_research.pdf
    │       ├── ejemplo_ecommerce.xlsx
    │       └── herramientas.txt
    │
    ├── modulo_04_arquitectura_seo/
    │   ├── ARNES.md
    │   └── archivos/
    │       └── arquitectura_web.pdf
    │
    └── [un módulo por carpeta...]
```

## 4.1 Cómo nombrar las carpetas de módulo

⚠️ Sigue este formato SIEMPRE para que el sistema sea consistente.

| **Regla** | **Ejemplo correcto** | **Ejemplo incorrecto** |
|---|---|---|
| Todo en minúsculas | modulo_05_seo_on_page | Modulo_05_SEO_On_Page |
| Número de dos dígitos | modulo_05 | modulo_5 |
| Espacios reemplazados por guión bajo | seo_on_page | seo on page |
| Sin caracteres especiales | seo_on_page | seo-on-page / séo_on_page |

**Ejemplos de nombres correctos:**
```
modulo_00_bienvenida
modulo_03_keyword_research
modulo_04_arquitectura_seo
modulo_05_seo_on_page
modulo_12_robots
modulo_39_seo_local
modulo_80_auditoria_seo
```

---

# 5. Cómo Construir un Arnés — Paso a Paso

> ⚠️ Este es el flujo obligatorio. No lo cambies ni lo atajos.
> El arnés debe reflejar el contenido REAL de los archivos — la IA no inventa.

```
PASO 1 — Sube los archivos del módulo a GitHub
         Ruta: harnesses/modulo_XX_nombre_modulo/archivos/
         Sube todos los PDFs, Excel, PPT, TXT del módulo

PASO 2 — Obtén los links raw de cada archivo
         En GitHub: abre el archivo → botón "Raw" → copia la URL
         Ejemplo: https://raw.githubusercontent.com/usuario/repo/main/
                  harnesses/modulo_05_seo_on_page/archivos/seo_on_page.pdf

PASO 3 — Abre la IA y comparte los links raw
         Pega los links y pide: "Lee estos archivos y construye el ARNES.md
         del Módulo 05 - SEO On Page siguiendo la plantilla del sistema HARNESS-SDD"

PASO 4 — La IA lee los archivos y genera el ARNES.md
         El arnés reflejará el contenido real de tus archivos

PASO 5 — Copia el ARNES.md y súbelo a GitHub
         ⚠️ USA SIEMPRE el botón de copiar del bloque de código
         NUNCA copies desde la vista renderizada — perderás el formato Markdown

PASO 6 — Actualiza CONTROL.md
         Marca el arnés como completado [x] y registra la sesión en el log
```

---

# 6. Anatomía de un Arnés

Cada archivo `ARNES.md` sigue esta plantilla exacta. Es universal — funciona en cualquier IA sin modificación.

```markdown
# ARNÉS — MÓDULO [NÚMERO]: [NOMBRE DEL MÓDULO]
# Sistema: HARNESS-SDD
# Versión: 1.0 | Fecha: [FECHA]
# Compatible con: Claude, ChatGPT, Gemini, cualquier LLM

## 🔒 IDENTIDAD
Eres un agente especialista en [TEMA]. Tu conocimiento proviene
exclusivamente de los archivos del Módulo [N].
No inventas. No supones. Todo lo que dices viene de los archivos.

## 📂 ARCHIVOS DE CONOCIMIENTO
Lee y procesa estos archivos antes de responder:
- [archivo_1.pdf] — [descripción breve]
- [archivo_2.xlsx] — [descripción breve]
- [archivo_3.txt] — [descripción breve]

## 🎯 TU HABILIDAD PRINCIPAL
[Describe en 2-3 líneas qué sabe hacer este agente exactamente]

## ⚙️ PROCESO DE EJECUCIÓN (LOOP)
Paso 1 — Analiza la solicitud del usuario
Paso 2 — Identifica qué información del módulo aplica
Paso 3 — Ejecuta la tarea con el conocimiento disponible
Paso 4 — Verifica que el resultado esté completo y correcto
Paso 5 — Si falta algo, pide al usuario lo que necesitas
Paso 6 — No terminas hasta que el trabajo esté bien hecho

## 🚫 RESTRICCIONES
- Solo hablas de tu módulo. Si te preguntan otra cosa, derivas.
- No terminas antes de completar el trabajo correctamente.
- Si los archivos no tienen la respuesta, lo dices claramente.

## 🔁 SEÑAL DE CIERRE
Solo terminas cuando el usuario confirma: "Trabajo completado"
```

## 6.1 Reglas de oro para construir un arnés

- **Un arnés = un módulo.** Nunca mezcles temas en el mismo arnés.
- **El arnés manda, no la IA.** La IA ejecuta lo que el arnés le dice.
- **El loop es obligatorio.** El agente no termina hasta que el trabajo esté bien hecho o el usuario lo libere explícitamente.
- **Los archivos son la fuente de verdad.** El agente no inventa — todo viene de los archivos del módulo.
- **La señal de cierre es clara.** Define exactamente qué frase termina la sesión del agente.
- **El orden es sagrado.** Primero subes los archivos, luego construyes el arnés — nunca al revés.
- **El arnés es neutral de cara al usuario final.** Aunque los archivos fuente vengan de un curso, academia o instructor concreto, el ARNES.md nunca menciona ese origen (ni nombre de curso, ni de academia, ni de profesor) al usuario que interactúa con el agente. El agente se presenta solo por su módulo/tema.

---

# 7. El Mega Arnés — Orquestador Maestro

El Mega Arnés es el cerebro que coordina todos los micro-agentes. Lo usas cuando necesitas una tarea que cruza varios módulos, como una Auditoría SEO completa o un proyecto nuevo de principio a fin.

```markdown
# MEGA ARNÉS — ORQUESTADOR SEO
# Sistema: HARNESS-SDD
# Compatible con: Claude, ChatGPT, Gemini, cualquier LLM

## 🧠 IDENTIDAD
Eres el coordinador maestro del sistema HARNESS-SDD. Conoces todos
los módulos del curso y sabes qué agente especialista activar para
cada parte del trabajo.

## 📋 CATÁLOGO DE AGENTES DISPONIBLES
[03] Keyword Research      → análisis de palabras clave
[04] Arquitectura SEO      → estructura del sitio
[05-11] SEO On Page        → optimización de página
[20-25] SEO Off Page       → enlaces y señales externas
[80] Auditoría SEO         → revisión completa del sitio
[...lista completa de módulos con su especialidad...]

## ⚙️ PROCESO DE ORQUESTACIÓN
Paso 1 — Recibe la tarea del usuario
Paso 2 — Descompone la tarea en subtareas por módulo
Paso 3 — Indica al usuario qué arnés activar primero
Paso 4 — Espera el resultado del micro-agente
Paso 5 — Integra los resultados y define el siguiente paso
Paso 6 — Continúa hasta que el proyecto esté completo

## 🔁 NUNCA TERMINAS ANTES DE TIEMPO
Solo cierras cuando todos los agentes han completado su parte
y el usuario confirma: "Proyecto completado"
```

---

# 8. Sistema de Control de Avances (CONTROL.md)

> **Problema que resuelve:** Los tokens se acaban. Las sesiones terminan. Sin un registro de control, cada vez que vuelves a una IA tienes que explicar todo de nuevo desde cero. El archivo CONTROL.md en GitHub soluciona esto: es la memoria permanente del sistema.

## 8.1 Cómo funciona

Al inicio de cada sesión con cualquier IA, haces esto:

1. Abres la IA que vayas a usar.
2. Compartes los links de CONTROL.md, README.md y BLUEPRINT.md.
3. La IA lee los tres archivos, entiende el estado completo y continúa sin que tengas que explicar nada.
4. Al terminar la sesión, actualizas el CONTROL.md con lo que se hizo y lo subes a GitHub.

## 8.2 Estructura del archivo CONTROL.md

```markdown
# CONTROL DE AVANCES — SISTEMA HARNESS-SDD
# Última actualización: [FECHA Y HORA]

## 📌 ESTADO ACTUAL DEL PROYECTO
- Sesión número: [N]
- Última tarea completada: [descripción]
- Próxima tarea pendiente: [descripción]
- Bloqueadores actuales: [si los hay]

## 🔁 FLUJO OBLIGATORIO PARA CONSTRUIR UN ARNÉS
[sección con los 6 pasos del flujo — ver Sección 5 del Blueprint]

## ✅ ARNESES COMPLETADOS
- [x] Módulo 03 - Keyword Research → commit: abc123f
- [x] Módulo 04 - Arquitectura SEO → commit: def456g
- [ ] Módulo 05 - SEO On Page → EN PROGRESO

## ⏳ ARNESES PENDIENTES
- [ ] Módulo 06 - URLs
[... lista del resto ...]

## 📝 LOG DE SESIONES
[registro de cada sesión con lo completado y lo pendiente]
```

---

# 9. Registro Completo de Módulos

Usa esta tabla para hacer seguimiento del estado de cada arnés.

| **Módulo** | **Nombre del Módulo** | **Arnés creado** | **Probado** |
|---|---|---|---|
| **00** | Bienvenida | ⬜ | ⬜ |
| **02** | Introducción al SEO y Buscadores | ⬜ | ⬜ |
| **03** | Keyword Research | ✅ | ⬜ |
| **04** | Arquitectura SEO | ✅ | ⬜ |
| **05** | SEO On Page | ⬜ | ⬜ |
| **06** | URLs | ⬜ | ⬜ |
| **07** | Headings | ⬜ | ⬜ |
| **08** | Contenidos | ⬜ | ⬜ |
| **09** | Metadatos | ⬜ | ⬜ |
| **10** | Enlazado Interno | ⬜ | ⬜ |
| **11** | Imágenes | ⬜ | ⬜ |
| **12** | Robots | ⬜ | ⬜ |
| **13** | Sitemap | ⬜ | ⬜ |
| **14** | Datos Estructurados | ⬜ | ⬜ |
| **15** | Indexación | ⬜ | ⬜ |
| **16** | Canibalizaciones | ⬜ | ⬜ |
| **17** | Mobile | ⬜ | ⬜ |
| **18** | WPO | ⬜ | ⬜ |
| **19** | Blog | ⬜ | ⬜ |
| **20** | SEO Off Page | ⬜ | ⬜ |
| **21** | Perfil de Enlaces | ⬜ | ⬜ |
| **22** | Linkbuilding y Linkbaiting | ⬜ | ⬜ |
| **23** | Linkbuilding que genera negocio | ⬜ | ⬜ |
| **24** | Adquisición de Enlaces | ⬜ | ⬜ |
| **25** | Señales Off Page | ⬜ | ⬜ |
| **26** | Content Marketing | ⬜ | ⬜ |
| **27** | Plan de Contenidos | ⬜ | ⬜ |
| **28** | Inbound Marketing | ⬜ | ⬜ |
| **29** | Lead Generation | ⬜ | ⬜ |
| **30** | Google Search Console | ⬜ | ⬜ |
| **31** | Google Search Console Avanzado | ⬜ | ⬜ |
| **32** | Sistrix | ⬜ | ⬜ |
| **33** | Semrush | ⬜ | ⬜ |
| **34** | Ahrefs | ⬜ | ⬜ |
| **35** | Screaming Frog | ⬜ | ⬜ |
| **36** | Screaming Frog Avanzado | ⬜ | ⬜ |
| **37** | Extensión de Chrome para SEO | ⬜ | ⬜ |
| **38** | SEO Ecommerce | ⬜ | ⬜ |
| **39** | SEO Local | ⬜ | ⬜ |
| **40** | SEO Internacional | ⬜ | ⬜ |
| **41** | SEO en Amazon (Principiantes) | ⬜ | ⬜ |
| **42** | SEO en Amazon Avanzado | ⬜ | ⬜ |
| **43** | SEO en YouTube | ⬜ | ⬜ |
| **44** | SEO en Medios I | ⬜ | ⬜ |
| **45** | SEO en Medios II | ⬜ | ⬜ |
| **46** | Product Owner | ⬜ | ⬜ |
| **47** | ASO | ⬜ | ⬜ |
| **48** | SEO para SaaS | ⬜ | ⬜ |
| **49** | SEO de Multimedia | ⬜ | ⬜ |
| **50** | SEO Funnel | ⬜ | ⬜ |
| **51** | Penalizaciones | ⬜ | ⬜ |
| **52** | Migraciones SEO | ⬜ | ⬜ |
| **53** | Wireframes y Mockups | ⬜ | ⬜ |
| **54** | CRO | ⬜ | ⬜ |
| **55** | SXO | ⬜ | ⬜ |
| **56** | Copywriting SEO | ⬜ | ⬜ |
| **57** | MySQL y Servidores | ⬜ | ⬜ |
| **58** | WordPress | ⬜ | ⬜ |
| **59** | PrestaShop | ⬜ | ⬜ |
| **60** | Magento | ⬜ | ⬜ |
| **61** | Shopify | ⬜ | ⬜ |
| **62** | Google Analytics | ⬜ | ⬜ |
| **63** | Google Analytics Avanzado | ⬜ | ⬜ |
| **64** | Google Analytics 4 | ⬜ | ⬜ |
| **65** | Google Tag Manager | ⬜ | ⬜ |
| **66** | Data Studio | ⬜ | ⬜ |
| **67** | HTML | ⬜ | ⬜ |
| **68** | JS y CSS | ⬜ | ⬜ |
| **69** | HTAccess | ⬜ | ⬜ |
| **70** | Desarrollo Avanzado | ⬜ | ⬜ |
| **71** | Logs | ⬜ | ⬜ |
| **72** | RegEx | ⬜ | ⬜ |
| **73** | SQL | ⬜ | ⬜ |
| **74** | Frameworks | ⬜ | ⬜ |
| **75** | Introducción al Python | ⬜ | ⬜ |
| **76** | Gestión de Proyectos | ⬜ | ⬜ |
| **77** | Presupuestos | ⬜ | ⬜ |
| **78** | Informes para Clientes | ⬜ | ⬜ |
| **79** | Generación de negocio y monetización | ⬜ | ⬜ |
| **80** | Auditoría SEO | ⬜ | ⬜ |
| **81** | Proyecto Final de Master | ⬜ | ⬜ |
| **82** | Mercado laboral SEO | ⬜ | ⬜ |
| **87** | Casos Reales de la Agencia | ⬜ | ⬜ |
| **89** | Masterclasses | ⬜ | ⬜ |
| **90** | Business Cases | ⬜ | ⬜ |
| **91** | SEO con ChatGPT | ⬜ | ⬜ |

---

# 10. Acceso al Sistema — Quién Puede Conectarse

| **Tipo de acceso** | **Configuración en GitHub** | **Resultado** |
|---|---|---|
| **Solo tú** | Repositorio Privado | Solo tú ves y usas los arneses. Nadie más puede acceder. |
| **Grupo selecto** | Repositorio Privado + Colaboradores | Invitas a personas específicas. Cada una accede con su cuenta GitHub. |
| **Todo el mundo** | Repositorio Público | Cualquier persona puede ver, descargar y usar los arneses. Sin registro. |
| **Otras IAs** | URL del archivo raw en GitHub | La IA accede directamente al archivo con el link raw de GitHub. |

---

# 11. Plan de Acción — Por Dónde Empezar

| **Paso** | **Cuándo** | **Qué hacer** |
|---|---|---|
| **1** | Esta semana | Crear cuenta en GitHub y crear el repositorio con la estructura de carpetas explicada en la Sección 4. |
| **2** | Esta semana | Subir este documento (Blueprint) y crear el CONTROL.md inicial con todos los módulos en estado Pendiente. |
| **3** | Siguiente sesión | Subir los archivos del primer módulo a GitHub. Luego pedir a la IA que construya el arnés leyendo esos archivos. |
| **4** | Sesiones siguientes | Ir módulo por módulo. Cada sesión: subir archivos → construir arnés → probar → marcar como completado en CONTROL.md. |
| **5** | Al tener 10+ arneses | Construir el Mega Arnés orquestador que los coordina a todos. |
| **6** | Versión final | Sistema completo de 91 arneses + Mega Arnés. Repositorio público o compartido con tu comunidad. |

---

*Sistema HARNESS-SDD v1.1 — Micro-Agentes SEO*
*Actualizado para incluir el flujo correcto de construcción de arneses y la nomenclatura de carpetas.*
