# Instrucciones del proyecto FURDS

## ESTRUCTURA directorios.

PROJECT/REPOSITORIO
├── .github/                          # Configuración y automatización de GitHub/Copilot
│   ├── agents/                       # Definiciones de agentes para cada etapa del proceso
│   └── skills/                       # Habilidades reutilizables para generar y publicar documentos
│
└── .documents/                       # Documentación generada durante el proceso
    └── templates/                    # Plantillas base de los entregables

## LISTA directorios y archivos.

| TIPO          | ID (Identificador)                        | RUTA y NOMBRE COMPLETOS DEL ARCHIVO                                  | DESCRIPCIÓN                                                                  |
|:------------- |:----------------------------------------- |:-------------------------------------------------------------------- |:---------------------------------------------------------------------------- |
| Instrucciones | copilot-instructions                      | `/.github/copilot-instructions.md`                                   | Instrucciones generales para GitHub Copilot.                                 |
| INFO-RELACION | directory-files                           | `/.github/directory-files.md`                                     | Lista de directorios y archivos                                              |
| INFO-RELACION | sequence-proc                             | `/.github/sequence-proc.md`                                          | Secuencia General del Proceso Documental                                     |
| AGENTE        | agente-E00-Verificacion_Inicial           | `/.github/agents/agente-E00-Verificacion_Inicial.md`                 | Agente para revision iniciarl del repositorio y solucion.                    |
| AGENTE        | agente-etapa1-historia_usuario            | `/.github/agents/agente-etapa1-historia_usuario.md`                  | Agente para elaborar historias de usuario.                                   |
| AGENTE        | agente-etapa2-definicion-requirimientos   | `/.github/agents/agente-etapa2-definicion-requirimientos.md`           | Agente para definir requisitos.                                              |
| AGENTE        | agente-etapa3-criterios-aceptacion        | `/.github/agents/agente-etapa3-criterios-aceptacion.md`               | Agente para crear criterios de aceptación.                                   |
| AGENTE        | agente-etapa4-dise-tecnico                | `/.github/agents/agente-etapa4-dise-tecnico.md`                  | Agente para diseñar la solución técnica.                                     |
| AGENTE        | agente-etapa5-imple-dev-plan              | `/.github/agents/agente-etapa5-imple-dev-plan.md`                    | Agente para preparar el plan de desarrollo.                                  |
| SKILL         | skill-review-e1-user-history              | `/.github/skills/skill-review-e1-user-history/SKILL.md`              | Guía para revisar y analizar historias de usuario.                           |
| SKILL         | skill-review-e2-requirements-definition   | `/.github/skills/skill-review-e2-requirements-definition/SKILL.md`   | Guía para revisar y analizar requisitos.                                     |
| SKILL         | skill-review-e3-acceptance-criteria       | `/.github/skills/skill-review-e3-acceptance-criteria/SKILL.md`       | Guía para revisar y analizar definir criterios de aceptación.                |
| SKILL         | skill-review-e4-technical-design          | `/.github/skills/skill-review-e4-technical-design/SKILL.md`          | Guía para revisar y analizar el diseño técnico.                              |
| SKILL         | skill-review-e5-imple-dev-plan            | `/.github/skills/skill-review-e5-imple-dev-plan/SKILL.md`            | Guía para revisar y analizar el plan de implementación.                      |
| SKILL         | skill-to-create-e2-requirements-definition | `/.github/skills/skill-to-create-e2-requirements-definition/SKILL.md` | Guía para definir requisitos y crear una primera version.                    |
| SKILL         | skill-to-create-e3-acceptance-criteria    | `/.github/skills/skill-to-create-e3-acceptance-criteria/SKILL.md`    | Guía para definir criterios aceptación y crear una primera version.          |
| SKILL         | skill-to-create-e4-technical-design       | `/.github/skills/skill-to-create-e4-technical-design/SKILL.md`       | Guía para elaborar el diseño técnico y crear una primera version.            |
| SKILL         | skill-to-create-e5-imple-dev-plan         | `/.github/skills/skill-to-create-e5-imple-dev-plan/SKILL.md`         | Guía para elaborar el plan implementación y crear una primera version.       |
| SKILL         | skill-x-publish-repo-files-v2             | `/.github/skills/skill-x-publish-repo-files-v2/SKILL.md`             | Guía para actualizar los archivos en el repositorio remoto cental            |
| Plantilla     | tmp00_FURDS.md                            | `/.documents/templates/tmp00_FURDS.md`                               | Plantilla del Documento `00_FURDS.md` ( FURDS )                              |
| Plantilla     | tmp01_UH.md                               | `/.documents/templates/tmp01_UH.md`                                  | Plantilla del Documento `01_UserHistory.md` ( Historia de usuario. )         |
| Plantilla     | tmp02_RD.md                               | `/.documents/templates/tmp02_RD.md`                                  | Plantilla del Documento `02_ReqsDefinition.md` ( Definición de requisitos. ) |
| Plantilla     | tmp03_AC.md                               | `/.documents/templates/tmp03_AC.md`                                  | Plantilla del Documento `03_AcceptCriteria.md` ( Criterios de aceptación. )  |
| Plantilla     | tmp04_TD.md                               | `/.documents/templates/tmp04_TD.md`                                  | Plantilla del Documento `04_TecDesign.md` ( Diseño técnico. )                |
| Plantilla     | tmp05_PL.md                               | `/.documents/templates/tmp05_PL.md`                                  | Plantilla del Documento `05_PlanDev.md` ( Plan de desarrollo. )              |
| DOCUMENTO     | 00_FURDS.md                               | `/.documents/00_FURDS.md`                                            | Documento Concentrador.                                                      |
| DOCUMENTO     | 01_UserHistory.md                         | `/.documents/01_UserHistory.md`                                      | Documento para Integrar Historias de usuario.                                |
| DOCUMENTO     | 02_ReqsDefinition.md                      | `/.documents/02_ReqsDefinition.md`                                   | Documento para Integrar Definición detallada de requisitos.                  |
| DOCUMENTO     | 03_AcceptCriteria.md                      | `/.documents/03_AcceptCriteria.md`                                   | Documento para Integrar Criterios de aceptación.                             |
| DOCUMENTO     | 04_TecDesign.md                           | `/.documents/04_TecDesign.md`                                        | Documento para Integrar Diseño técnico.                                      |
| DOCUMENTO     | 05_PlanDev.md                             | `/.documents/05_PlanDev.md`                                          | Documento para Integrar Plan de implementación y desarrollo.                 |
| Info          | README.md                                 | `/README.md`                                                         | Descripción general y uso del repositorio.                                   |