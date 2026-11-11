# Realiza una auditoría inicial de la configuración del repositorio.

## Verifica la existenciade los siguientes directorios y archivos:
│PROJECT/REPOSITORIO
│
├── .github/
│   ├── copilot-instructions.md       
│   ├── agents/                 
│   │   │   └── agente-etapa1-historia_usuario.md     
│   │   │   └── agente-etapa2-requirements-definition.md  
│   │   │   └── agente-etapa3-acceptance-criteria.md  
│   │   │   └── agente-etapa4-technical-design.md  
│   │   │   └── agente-etapa5-imple-dev-plan.md  
│   └── skills/                       
│   │   ├── user-history/
│   │   │   └── SKILL.md              
│   │   ├── requirements-definition/
│   │   │   └── SKILL.md              
│   │   ├── acceptance-criteria/
│   │   │   └── SKILL.md              
│   │   ├── technical-design/
│   │   │   └── SKILL.md              
│   │   └── imple-dev-plan/
│   │   │    └── SKILL.md              
│   │   ├── publish-acceptance-criteria/
│   │   │    └── SKILL.md              
│   │   ├── publish-imple-dev-plan/
│   │   │    └── SKILL.md              
│   │   ├── publish-requirements-definition/
│   │   │    └── SKILL.md              
│   │   ├── publish-technical-design/
│   │   │    └── SKILL.md              
│   │   └── publish-user-history/
│   │       └── SKILL.md                         
│   └── prompts/                      
│   	├── tarea-revisar-00_Verificacion_Inicio.md   		 	
│
│   └── scripts/                      
│   	├── tpublish-document.ps1  		 	
│
├── templates/                        
│   ├── tmp00_FURDS.md                
│   ├── tmp01_UH.md                   
│   ├── tmp02_RD.md                   
│   ├── tmp03_AC.md                   
│   ├── tmp04_TD.md                   
│   └── tmp05_PL.md                   
│
├── documents/                        
│   ├── 00_FURDS.md                   
│   ├── 01_UserHistory.md             
│   ├── 02_ReqsDefinition.md          
│   ├── 03_AcceptCriteria.md          
│   ├── 04_TecDesign.md               
│   └── 05_PlanDev.md                 
│
└── README.md       


## Verifica también:
- Comprueba que los Agentes y Skills sean consistentes con el procedimiento documental. 
- No crees, elimines ni modifiques archivos.
- No alteres documentos ni plantillas.

- Entrega un diagnóstico con:
A. Componentes correctos.
B. Componentes faltantes.
C. Inconsistencias y Riesgos de bajo riesgo y gravedad.
D. Inconsistencias y Riesgos Fatales , críticos o que son de gravedad.
E. Recomendaciones para iniciar.

- No declares el proyecto listo si existen elementos críticos faltantes.
