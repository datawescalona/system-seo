# SISTEMA HARNESS-SDD
## Sistema de Micro-Agentes SEO
### Blueprint Maestro + Sistema de Control de Avances

| Módulos totales | Arneses a crear |
|---|---|
| **91 módulos** | **91 arneses** |

Versión 1.0 · Compatible con Claude · ChatGPT · Gemini · cualquier LLM

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
├── CONTROL.md                        ← registro de avances (VER SECCIÓN 6)
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

---

# 5. Anatomía de un Arnés

Cada archivo `ARNES.md` sigue esta plantilla exacta. Es universal — funciona en cualquier IA sin modificación.

```markdown
# ARNÉS — MÓDULO [NÚMERO]: [NOMBRE DEL MÓDULO]
# Sistema: HARNESS-SDD
# Versión: 1.0 | Fecha: [FECHA]
# Compatible con: Claude, ChatGPT, Gemini, cualquier LLM

## 🔒 IDENTIDAD
Eres un agente especialista en [TEMA]. Tu conocimiento proviene
exclusivamente de los archivos del Módulo [N] del curso.
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

## 5.1 Reglas de oro para construir un arnés

- **Un arnés = un módulo.** Nunca mezcles temas en el mismo arnés.
- **El arnés manda, no la IA.** La IA ejecuta lo que el arnés le dice.
- **El loop es obligatorio.** El agente no termina hasta que el trabajo esté bien hecho o el usuario lo libere explícitamente.
- **Los archivos son la fuente de verdad.** El agente no inventa — todo viene de los archivos del módulo.
- **La señal de cierre es clara.** Define exactamente qué frase termina la sesión del agente.

---

# 6. El Mega Arnés — Orquestador Maestro

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

# 7. Sistema de Control de Avances (CONTROL.md)

> **Problema que resuelve:** Los tokens se acaban. Las sesiones terminan. Sin un registro de control, cada vez que vuelves a una IA tienes que explicar todo de nuevo desde cero. El archivo CONTROL.md en GitHub soluciona esto: es la memoria permanente del sistema.

## 7.1 Cómo funciona

Al inicio de cada sesión con cualquier IA, haces esto:

1. Abres la IA que vayas a usar.
2. Adjuntas o pegas el contenido de `CONTROL.md`.
3. Le dices: *"Lee este archivo. Es el estado actual de mi proyecto. Continúa desde donde quedamos."*
4. La IA lee el control, entiende el contexto completo y continúa sin que tengas que explicar nada.
5. Al terminar la sesión, actualizas el `CONTROL.md` con lo que se hizo y lo subes a GitHub.

## 7.2 Estructura del archivo CONTROL.md

```markdown
# CONTROL DE AVANCES — SISTEMA HARNESS-SDD
# Última actualización: [FECHA Y HORA]

## 📌 ESTADO ACTUAL DEL PROYECTO
- Sesión número: [N]
- Última tarea completada: [descripción]
- Próxima tarea pendiente: [descripción]
- Bloqueadores actuales: [si los hay]

## ✅ ARNESES COMPLETADOS
- [x] Módulo 03 - Keyword Research → commit: abc123f
- [x] Módulo 04 - Arquitectura SEO → commit: def456g
- [ ] Módulo 05 - SEO On Page → EN PROGRESO

## ⏳ ARNESES PENDIENTES
- [ ] Módulo 06 - URLs
- [ ] Módulo 07 - Headings
- [ ] Módulo 08 - Contenidos
[... lista del resto ...]

## 📝 LOG DE SESIONES

### Sesión 3 — [fecha]
- Se completó el arnés del Módulo 04
- Se probó el arnés del Módulo 03 con archivo Excel
- Problema encontrado: el arnés 03 necesita más contexto de herramientas
- Solución aplicada: se agregó sección de herramientas al arnés

### Sesión 2 — [fecha]
- Se completó el arnés del Módulo 03
- Se creó la estructura de carpetas en GitHub
- Pendiente: subir archivos Excel del módulo 03

### Sesión 1 — [fecha]
- Diseño del sistema completo
- Creación del Blueprint y este archivo de control
```

---

# 8. Registro Completo de Módulos

Usa esta tabla para hacer seguimiento del estado de cada arnés.

| **Módulo** | **Nombre del Módulo** | **Arnés creado** | **Probado** |
|---|---|---|---|
| **00** | Bienvenida | ⬜ | ⬜ |
| **02** | Introducción al SEO y Buscadores | ⬜ | ⬜ |
| **03** | Keyword Research | ⬜ | ⬜ |
| **04** | Arquitectura SEO | ⬜ | ⬜ |
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

# 9. Acceso al Sistema — Quién Puede Conectarse

| **Tipo de acceso** | **Configuración en GitHub** | **Resultado** |
|---|---|---|
| **Solo tú** | Repositorio Privado | Solo tú ves y usas los arneses. Nadie más puede acceder. |
| **Grupo selecto** | Repositorio Privado + Colaboradores | Invitas a personas específicas. Cada una accede con su cuenta GitHub. |
| **Todo el mundo** | Repositorio Público | Cualquier persona puede ver, descargar y usar los arneses. Sin registro. |
| **Otras IAs** | URL del archivo raw en GitHub | La IA accede directamente al archivo ARNES.md con el link raw de GitHub. |

---

# 10. Plan de Acción — Por Dónde Empezar

| **Paso** | **Cuándo** | **Qué hacer** |
|---|---|---|
| **1** | Esta semana | Crear cuenta en GitHub y crear el repositorio con la estructura de carpetas explicada en la Sección 4. |
| **2** | Esta semana | Subir este documento (Blueprint) y crear el CONTROL.md inicial con todos los módulos en estado Pendiente. |
| **3** | Siguiente sesión | Construir el primer arnés real: Módulo 03 - Keyword Research. Es el más rico en archivos y el mejor para probar el sistema. |
| **4** | Sesiones siguientes | Ir módulo por módulo. Cada sesión: crear el arnés, probarlo con los archivos, marcarlo como completado en CONTROL.md. |
| **5** | Al tener 10+ arneses | Construir el Mega Arnés orquestador que los coordina a todos. |
| **6** | Versión final | Sistema completo de 91 arneses + Mega Arnés. Repositorio público o compartido con tu comunidad. |

---

*Sistema HARNESS-SDD — Micro-Agentes SEO*
*Este documento es el punto de partida. Cada sesión lo complementa. Guárdalo en GitHub junto a CONTROL.md.*
