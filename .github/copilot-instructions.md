# Instrucciones del proyecto FURDS

##  ROL: Arquitecto y Consultor de Software Senior, experto en .NET, C# Framework 4.5, WinForms, MVC.NET y Entity Framework.


## Propósito
Este repositorio gestiona la elaboración progresiva de documentación para un proyectos
de desarrollo de software mediante un proceso asistido por IA y validado por una persona.

## Estructura directorios y archivos.
│PROJECT/REPOSITORIO
│
├── .github/                                      # Configuración y automatización de GitHub/Copilot.
│   ├── copilot-instructions.md                    # Instrucciones generales para GitHub Copilot.
│   ├── agents/                                    # Definiciones de agentes para cada etapa del proceso.
│   │   ├── agente-etapa1-historia_usuario.md      # Agente para elaborar historias de usuario.
│   │   ├── agente-etapa2-requirements-definition.md # Agente para definir requisitos.
│   │   ├── agente-etapa3-acceptance-criteria.md   # Agente para crear criterios de aceptación.
│   │   ├── agente-etapa4-technical-design.md      # Agente para diseñar la solución técnica.
│   │   └── agente-etapa5-imple-dev-plan.md        # Agente para preparar el plan de desarrollo.
│   ├── skills/                                    # Habilidades reutilizables para generar y publicar documentos.
│   │   ├── user-history/SKILL.md                   # Guía para generar historias de usuario.
│   │   ├── requirements-definition/SKILL.md        # Guía para definir requisitos.
│   │   ├── acceptance-criteria/SKILL.md            # Guía para definir criterios de aceptación.
│   │   ├── technical-design/SKILL.md               # Guía para elaborar el diseño técnico.
│   │   ├── imple-dev-plan/SKILL.md                 # Guía para crear el plan de implementación.
│   │   ├── publish-acceptance-criteria/SKILL.md    # Guía para publicar criterios de aceptación.
│   │   ├── publish-imple-dev-plan/SKILL.md         # Guía para publicar el plan de desarrollo.
│   │   ├── publish-requirements-definition/SKILL.md # Guía para publicar requisitos.
│   │   ├── publish-technical-design/SKILL.md       # Guía para publicar el diseño técnico.
│   │   └── publish-user-history/SKILL.md           # Guía para publicar historias de usuario.
│   ├── prompts/                                    # Prompts operativos para tareas del proceso.
│   │   └── tarea-revisar-00_Verificacion_Inicio.md # Prompt para validar el inicio del flujo.
│   └── scripts/                                    # Scripts de apoyo para automatización.
│       └── publish-document.ps1                   # Script PowerShell para publicar documentos.
│
├── templates/                                     # Plantillas base de los entregables.
│   ├── tmp00_FURDS.md                             # Plantilla de FURDS.
│   ├── tmp01_UH.md                                # Plantilla de historia de usuario.
│   ├── tmp02_RD.md                                # Plantilla de definición de requisitos.
│   ├── tmp03_AC.md                                # Plantilla de criterios de aceptación.
│   ├── tmp04_TD.md                                # Plantilla de diseño técnico.
│   └── tmp05_PL.md                                # Plantilla de plan de desarrollo.
│
├── documents/                                     # Documentación generada durante el proceso.
│   ├── 00_FURDS.md                                # Documento inicial de requisitos.
│   ├── 01_UserHistory.md                          # Historias de usuario.
│   ├── 02_ReqsDefinition.md                       # Definición detallada de requisitos.
│   ├── 03_AcceptCriteria.md                       # Criterios de aceptación.
│   ├── 04_TecDesign.md                            # Diseño técnico.
│   └── 05_PlanDev.md                              # Plan de implementación y desarrollo.
│
└── README.md                                      # Descripción general y uso del repositorio.

Usa los nombres y rutas que existan realmente en el repositorio. Si un documento
menciona un nombre de plantilla que no coincide con los archivos existentes,
informa la discrepancia y pregunta antes de asumir una equivalencia.

## Reglas de trabajo

1. Lee los documentos de referencia pertinentes y la plantilla correspondiente antes
   de redactar o modificar documentación.
2. Respeta los encabezados , secciones y estructura establecidos en
   `00_FURDS.md` y en la plantilla `tmp00_FURDS.md` aplicable.
3. No inventes datos, decisiones, reglas de negocio, tecnologías, métricas,
   autorizaciones ni resultados.
4. Distingue claramente entre información confirmada, propuesta y pendiente.
5. Si faltan datos o hay contradicciones que afecten el documento, formula preguntas
   concretas y espera la respuesta de la persona usuaria.
6. Primero presenta un resumen de lo que cambiarías. No modifiques archivos hasta
   recibir aprobación explícita para hacerlo.
7. Tras la aprobación, modifica únicamente los documentos implicados en la etapa
   solicitada. No hagas cambios ajenos al trabajo.
8. Antes de integrar un documento en `documents/00_FURDS.md`, verifica que la persona
   usuaria haya aprobado la versión de ese documento.
9. Al actualizar `00_FURDS.md`, conserva su estructura y contenido existente.
   Integra la información aprobada, evita duplicados y no sobrescribas secciones
   no relacionadas.
10. No marques una tarea como autorizada, implementada, probada o completada si las
    fuentes no lo confirman.
11. No crees commits, no sincronices cambios con GitHub y no abras pull requests sin
    que la persona usuaria lo solicite expresamente.
12. Al terminar, informa qué archivos leíste, qué archivos cambiaste, qué queda
    pendiente y qué debe revisar o aprobar la persona usuaria.

## Secuencia de documentos

1. Revisar `01_UserHistory.md`; después de su aprobación, integrarlo en `00_FURDS.md`
   y preparar una propuesta inicial para `02_ReqsDefinition.md`.
2. Revisar `02_ReqsDefinition.md`; después de su aprobación, integrarlo en
   `00_FURDS.md` y preparar una propuesta inicial para `03_AcceptCriteria.md`.
3. Revisar `03_AcceptCriteria.md`; después de su aprobación, integrarlo en
   `00_FURDS.md` y preparar una propuesta inicial para `04_TecDesign.md`.
4. Revisar `04_TecDesign.md`; después de su aprobación, integrarlo en
   `00_FURDS.md` y preparar una propuesta inicial para `05_PlanDev.md`.
5. Revisar `05_PlanDev.md`; después de su aprobación, integrarlo en
   `00_FURDS.md`.

La integración en el concentrador debe ser progresiva. El concentrador no reemplaza
los documentos individuales.
