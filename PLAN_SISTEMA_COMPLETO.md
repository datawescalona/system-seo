# PLAN SISTEMA COMPLETO — HARNESS-SDD + GESTOR + PM-CONTROL
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Creado en: Sesión de diseño arquitectural
# Estado: Plan aprobado — pendiente de construcción
# Próxima acción: Terminar el Orquestador del HARNESS-SDD

---

## 🧠 INSTRUCCIÓN PARA CUALQUIER IA
Lee este archivo antes de hacer cualquier cosa.
Este es el plan maestro del sistema completo de gestión SEO.
Hay tres sistemas que se construyen en orden.
No empieces desde cero — continúa desde donde indica PRÓXIMA TAREA.

---

## 📌 ESTADO ACTUAL

⚠️ Este archivo NO tiene una "próxima tarea" propia. La única fuente de
verdad del avance y de la próxima tarea es CONTROL.md en la raíz del
repo. Este archivo es el plano arquitectónico fijo de los 3 sistemas;
no cambia sesión a sesión. Para saber dónde está el proyecto y qué
sigue, lee siempre:
https://raw.githubusercontent.com/datawescalona/system-seo/main/CONTROL.md

---

## 🏗️ ARQUITECTURA GLOBAL — TRES SISTEMAS

```
┌─────────────────────────────────────────────────┐
│              TÚ — Project Manager               │
│         Un solo punto de entrada                │
└─────────────────┬───────────────────────────────┘
                  │ lenguaje natural
                  ▼
┌─────────────────────────────────────────────────┐
│           SISTEMA 3 — PM-CONTROL                │  ← construir último
│   Tu panel único. Entiende qué hacer y enruta. │
└────────────┬────────────────────┬───────────────┘
             │                    │
             ▼                    ▼
┌────────────────────┐  ┌─────────────────────────┐
│   SISTEMA 2        │  │   SISTEMA 1              │
│   GESTOR DE        │  │   HARNESS-SDD            │  ← construir primero
│   PROYECTOS        │  │   Motor SEO              │
│                    │  │                          │
│ - PROYECTOS.md     │  │ - Mega Arnés             │
│ - EXPEDIENTE/      │◄─┼►- 91 micro-arneses       │
│ - SESIONES.md      │  │ - CONTROL.md             │
│ - EXPORTABLE.md    │  │ - Archivos /mod/         │
└────────────────────┘  └─────────────────────────┘
             │                    │
             └────────┬───────────┘
                      │
              BRIEF_SEO.md
          (punto de handshake)
                      │
                      ▼
┌─────────────────────────────────────────────────┐
│                   SALIDAS                        │
│  Expediente técnico · Resumen ejecutivo          │
│  Mockup visual · Exportable universal            │
└─────────────────────────────────────────────────┘
```

---

## 📋 LOS TRES SISTEMAS EN DETALLE

---

### SISTEMA 1 — HARNESS-SDD (motor de conocimiento SEO)
**Estado: EN CONSTRUCCIÓN**
**Repositorio: GitHub existente**

#### Qué hace
- Convierte cualquier IA en experto SEO por módulo
- 91 micro-arneses especializados
- Un Mega Arnés orquestador que los coordina
- No sabe de clientes ni proyectos — solo sabe de SEO

#### Componentes
```
/system-seo/
├── CONTROL.md                    ← memoria del sistema de arneses
├── HARNESS_SDD_BLUEPRINT.md      ← blueprint maestro
├── MEGA_ARNES.md                 ← orquestador
└── harnesses/
    ├── modulo_03_keyword_research/
    │   ├── ARNES.md
    │   └── archivos/
    ├── modulo_04_arquitectura_seo/
    │   ├── ARNES.md
    │   └── archivos/
    └── [resto de módulos]
        ├── ARNES.md
        └── archivos/
```

#### Progreso arneses
⚠️ El conteo y el módulo "siguiente" cambian sesión a sesión.
La única fuente de verdad es CONTROL.md — no se repite aquí.

#### Cómo se activa
1. Usuario abre cualquier IA
2. Pega el ARNES.md del módulo que necesita
3. Adjunta los archivos de ese módulo
4. La IA se convierte en el experto de ese módulo

---

### SISTEMA 2 — GESTOR DE PROYECTOS
**Estado: DISEÑADO — pendiente de construir**
**Repositorio: GitHub (carpeta nueva /proyectos/)**

#### Qué hace
- Gestiona clientes y proyectos reales
- Guarda el hilo de cada proyecto sin perderlo
- Controla versiones por sesión
- Genera los entregables para el cliente
- Exporta el proyecto completo para otra IA

#### Estructura de archivos a construir
```
/proyectos/
├── PROYECTOS.md                  ← índice global de todos los clientes
│
└── cliente_nombre/
    ├── PROYECTO.md               ← brief + estado + hilo + decisiones
    ├── SESIONES.md               ← log por sesión con control de versiones
    ├── BRIEF_SEO.md              ← punto de handshake con HARNESS-SDD
    ├── EXPORTABLE.md             ← descargable universal para otra IA
    │
    └── entregables/
        ├── 01_keyword_research.md
        ├── 02_arquitectura_seo.md
        ├── 03_seo_on_page.md
        ├── 04_contenidos.md
        ├── RESUMEN_EJECUTIVO.md  ← para el cliente, sin jerga técnica
        └── MOCKUP_WEB.md         ← estructura visual de la web
```

#### Plantilla PROYECTO.md (a construir)
```markdown
# PROYECTO — [NOMBRE CLIENTE]
# Versión: 1.0 | Sesión: 1
# Estado: [ACTIVO / EN PAUSA / COMPLETADO]

## BRIEF DEL CLIENTE
- Tipo de negocio:
- Tiene web: [Sí / No]
- Plataforma objetivo: [WordPress / WooCommerce / PrestaShop / HTML]
- Conocimientos SEO: [Ninguno / Básico / Intermedio]
- Objetivo principal:
- Plazo estimado:

## ESTADO ACTUAL
- Última sesión:
- Última tarea completada:
- Próxima tarea:
- Arnés activo:

## DECISIONES TOMADAS
- [fecha] — [decisión] — [razón]

## HILO DE CONTEXTO
[Resumen acumulado de lo que se sabe del proyecto]
```

#### Plantilla SESIONES.md (a construir)
```markdown
# SESIONES — [NOMBRE CLIENTE]

## Sesión N — [fecha] — v[X.X]
### Completado
- ...
### Arnés utilizado
- Módulo XX — [nombre]
### Entregables generados
- ...
### Pendiente para próxima sesión
- ...
```

#### Plantilla EXPORTABLE.md (a construir)
```markdown
# PROYECTO EXPORTABLE — [NOMBRE CLIENTE]
# Para cualquier IA — sin contexto previo necesario

## QUÉ ES ESTE PROYECTO
[Descripción completa del cliente y objetivo]

## PLATAFORMA OBJETIVO
[WordPress / WooCommerce / PrestaShop / HTML / otro]

## ARQUITECTURA SEO APROBADA
[Árbol completo de la web con keywords por nivel]

## CONTENIDOS POR PÁGINA
[Qué va en cada página, en qué orden, con qué intención de búsqueda]

## INSTRUCCIÓN PARA LA IA CONSTRUCTORA
Construye exactamente lo que está en este documento.
No inventes páginas ni secciones que no estén aquí.
No omitas nada de lo que sí está.
Pregunta si algo no está claro antes de asumir.
```

---

### SISTEMA 3 — PM-CONTROL (panel único del project manager)
**Estado: DISEÑADO — construir cuando los sistemas 1 y 2 estén listos**

#### Qué hace
- Es el único punto donde tú hablas
- Entiende lenguaje natural
- Enruta automáticamente al sistema correcto
- Devuelve el resultado limpio y ordenado
- Nunca te hace repetir contexto

#### Comandos que entiende (ejemplos)
```
"nuevo proyecto, cliente de ecommerce de ropa"
  → abre expediente nuevo en el Gestor
  → te pide el brief mínimo
  → activa el orquestador del HARNESS para la fase 1

"retomamos con el cliente Y"
  → lee el PROYECTO.md de ese cliente
  → te resume dónde quedaron
  → te propone el siguiente paso

"auditoría rápida para el cliente Z"
  → tarea puntual sin abrir expediente completo
  → activa el arnés de auditoría directamente
  → devuelve el entregable

"dame el resumen ejecutivo del cliente X para enviarle"
  → lee el expediente completo
  → genera resumen en lenguaje no técnico
  → genera mockup visual de la web

"exporta el proyecto del cliente X para pasarlo a otra IA"
  → genera el EXPORTABLE.md completo
  → listo para cualquier CMS
```

#### Archivo PM-CONTROL.md (a construir)
```markdown
# PM-CONTROL — PANEL ÚNICO DEL PROJECT MANAGER
# Sistema: HARNESS-SDD + GESTOR DE PROYECTOS
# Compatible con: Claude, ChatGPT, Gemini, cualquier LLM

## IDENTIDAD
Eres el panel de control del project manager.
Tu trabajo es entender lo que el usuario necesita
y coordinarlo con el sistema correcto sin que él
tenga que pensar en cuál sistema usar.

## LO QUE TIENES DETRÁS
- Sistema 1: HARNESS-SDD (motor SEO, 91 arneses)
- Sistema 2: Gestor de Proyectos (expedientes, sesiones, entregables)
- Punto de conexión: BRIEF_SEO.md

## CÓMO ACTÚAS
1. Lees lo que pide el usuario
2. Identificas si es: nuevo proyecto / retomar / tarea puntual
3. Vas al sistema correcto
4. Devuelves el resultado limpio
5. Actualizas el expediente automáticamente
6. Nunca preguntas dos veces lo mismo

## SEÑAL DE CIERRE
Solo terminas cuando el usuario dice: "listo" o "cerramos"
```

---

## 🔁 PUNTO DE HANDSHAKE — BRIEF_SEO.md

Este archivo es el único punto donde los dos sistemas se comunican.
El Gestor lo genera. El HARNESS lo lee. El HARNESS devuelve resultado.
El Gestor lo recibe y lo convierte en entregable.

```markdown
# BRIEF_SEO.md — HANDSHAKE ENTRE SISTEMAS

## DATOS DEL PROYECTO
- Cliente: [nombre]
- Tipo de negocio: [ecommerce / informacional / servicios / agencia]
- Plataforma: [WordPress / WooCommerce / PrestaShop / HTML]
- Fase actual: [1 / 2 / 3…]

## TAREA PARA EL ARNÉS
- Arnés a activar: Módulo [XX] — [nombre]
- Input disponible: [qué datos tiene el arnés para trabajar]
- Output esperado: [qué tiene que devolver exactamente]

## CONTEXTO ACUMULADO
[Resumen de lo que ya se sabe del proyecto para que el arnés
no trabaje en el vacío]

## RESTRICCIONES
- No inventar datos que no estén en este brief
- No asumir plataforma si no está especificada
- Preguntar antes de suponer
```

---

## 📊 ORDEN DE CONSTRUCCIÓN

```
FASE A — Terminar el motor (Sistema 1)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[ ] Ver CONTROL.md para el módulo pendiente concreto (no se repite aquí)
[ ] Construir el Mega Arnés Orquestador  ← PRIORIDAD

FASE B — Construir el gestor (Sistema 2)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[ ] Crear carpeta /proyectos/ en GitHub
[ ] Crear plantilla PROYECTOS.md (índice global)
[ ] Crear plantilla PROYECTO.md (por cliente)
[ ] Crear plantilla SESIONES.md (log de sesiones)
[ ] Crear plantilla BRIEF_SEO.md (handshake)
[ ] Crear plantilla EXPORTABLE.md (descargable universal)
[ ] Crear plantilla RESUMEN_EJECUTIVO.md (para el cliente)
[ ] Crear plantilla MOCKUP_WEB.md (visual de la web)
[ ] Probar con un cliente ficticio de principio a fin

FASE C — Construir el panel único (Sistema 3)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[ ] Crear PM-CONTROL.md
[ ] Definir todos los comandos que entiende
[ ] Probar flujo completo: brief → arnés → entregable → exportable
[ ] Ajustar según prueba
```

---

## 🗂️ ESTRUCTURA FINAL DE GITHUB

```
/system-seo/
├── README.md
├── CONTROL.md                        ← memoria HARNESS-SDD
├── HARNESS_SDD_BLUEPRINT.md
├── PM-CONTROL.md                     ← panel único (construir en Fase C)
├── PLAN_SISTEMA_COMPLETO.md          ← este archivo
│
├── harnesses/                        ← Sistema 1
│   ├── modulo_03_keyword_research/
│   ├── modulo_04_arquitectura_seo/
│   └── [resto de módulos — ver CONTROL.md para el estado real]
│
└── proyectos/                        ← Sistema 2 (construir en Fase B)
    ├── PROYECTOS.md
    └── [cliente por carpeta]
        ├── PROYECTO.md
        ├── SESIONES.md
        ├── BRIEF_SEO.md
        ├── EXPORTABLE.md
        └── entregables/
```

---

## ⚡ INSTRUCCIÓN RÁPIDA PARA RETOMAR

Cuando empieces una nueva sesión con cualquier IA, pega esto:

> "Lee el archivo PLAN_SISTEMA_COMPLETO.md adjunto.
> Es el diseño completo de mi sistema de gestión SEO con tres capas.
> La próxima tarea es: [COPIA AQUÍ EL CAMPO 'PRÓXIMA TAREA'].
> Continúa desde ahí sin que tenga que explicar nada más."

---

## 📝 LOG DE SESIONES DE DISEÑO

### Sesión de diseño arquitectural — [FECHA]
**Completado:**
- Diseño completo de los tres sistemas y cómo se articulan
- Definición del PM-CONTROL como capa única de entrada
- Definición del BRIEF_SEO.md como punto de handshake
- Definición de todas las plantillas necesarias
- Definición del orden de construcción en tres fases

**Decisiones tomadas:**
- Son tres sistemas separados que se hablan, no uno solo
- El PM-CONTROL es la capa que unifica todo para el project manager
- El handshake entre sistemas es siempre a través del BRIEF_SEO.md
- Primero se termina el motor (HARNESS-SDD), luego el Gestor, luego el panel
- El Exportable universal permite que cualquier IA construya la web
  sin importar la plataforma (WordPress, WooCommerce, PrestaShop, HTML)

**Pendiente:**
- Terminar el Mega Arnés Orquestador del HARNESS-SDD
- Luego continuar con la Fase B (Gestor de Proyectos)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
FIN DEL ARCHIVO — Actualiza este archivo al inicio de cada fase
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
