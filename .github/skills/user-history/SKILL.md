---
name: user-history
description: Analiza, valida y complementa el documento '01_UserHistory.md' (historia de usuario) para identificar problemas, necesidades, objetivos, procesos actuales, valor esperado, propuestas de solución y alcance funcional.
---

# SKILL: FURDS USER HISTORY

##  ROL: Arquitecto y Consultor de Software Senior, experto en .NET, C# Framework 4.5, WinForms, MVC.NET y Entity Framework.

## 1. OBJETIVO
Analizar, validar y complementar el documento `01_UserHistory.md` (historia de usuario), asegurando que los problemas, necesidades, objetivos, procesos actuales, valor esperado, propuestas de solución y alcance funcional estén claramente definidos.

## 2. DOCUMENTOS DE REFERENCIA
- `<repositorio_github>/documents/01_UserHistory.md`: Documento-Objetivo que se analiza y actualiza.
- `<repositorio_github>/documents/00_FURDS.md`: Documento donde se copia y concentra la información.

- `<repositorio_github>/templates/tmp01_UH.md`: Plantilla con la estructura documental obligatoria a respetar para contituir el documento `01_UserHistory.md`.
- `<repositorio_github>/templates/tmp02_RD.md`: Plantilla con la estructura documental obligatoria a respetar para constituir el documento `02_ReqsDefinition.md`.


Lee los archivos disponibles. Si una ruta indicada no existe, informa cuál falta y no la sustituyas por otra sin confirmación previa.

## 3. PROCEDIMIENTO
1. Analizar y validar la siguiente información del documento `01_UserHistory.md`:
   - Quién es el usuario o beneficiario, qué quiere hacer y para qué lo necesita.
   - El mapeo del proceso actual, en caso de haberse proporcionado.
   - El objetivo principal.
   - La propuesta general, en caso de haberse proporcionado.
   - El alcance y las exclusiones.
2. Comparar** el documento contra la plantilla `tmp01_UH.md` para garantizar coherencia con la estructura y los lineamientos.
3. Identificar vacíos, contradicciones, frases ambiguas, supuestos e incoherencias utilizando los siguientes criterios:
   - Existe un usuario o beneficiario identificable.
   - La necesidad está explícita.
   - El valor esperado está definido.
   - El problema tiene contexto suficiente.
   - Los objetivos corresponden con la necesidad.
   - El alcance tiene límites claros.
   - Se identifican exclusiones cuando corresponda.
   - La propuesta no contradice el objetivo.
4. Realizar una segunda revisión aplicando los criterios de la sección "CRITERIOS DE CALIDAD" de este skill.
5. Presentar preguntas numeradas, específicas y necesarias para completar o corregir el documento. No conviertas una hipótesis en un hecho.
6. Esperar las respuestas. Después, presentar un resumen de los cambios propuestos y solicitar aprobación explícita.
7. Sin aprobación, no edites archivos.
8. Con aprobación, actualiza `01_UserHistory.md` respetando su plantilla.
9. Integrar únicamente el contenido aprobado en la sección correspondiente de `00_FURDS.md`. Conserva el resto del documento concentrador (es decir, copia todo el documento `01_UserHistory.md` y pégalo dentro de `00_FURDS.md` en la sección que corresponda, sustituyendo el contenido previo).
10. Preparar una primera propuesta de `02_ReqsDefinition.md` basada en la historia aprobada y respetando `tmp02_RD.md`. Antes de escribir `02_ReqsDefinition.md`, presenta un resumen de la propuesta y solicita aprobación. No inventes requerimientos; marca lo no confirmado como pendiente.
11. Una vez aprobada la Historia de Usuario: Generar la primera versión propuesta de `02_ReqsDefinition.md`, basada en la plantilla `tmp02_RD.md`.

- No apruebes automáticamente la siguiente etapa.
- Para las autorizaciones y entregas, toma en cuenta la sección "POLÍTICAS DE AUTORIZACIÓN Y ENTREGA".


### CRITERIOS DE CALIDAD
- Basar el análisis exclusivamente en información documentada o confirmada.
- No inventar ni asumir hechos, participantes o procesos.
- Mantener diferenciados el problema, la solución, los objetivos y las funcionalidades.
- Identificar supuestos, necesidades no resueltas y exclusiones relevantes.
- Evitar ampliar el alcance por interpretación propia y mantener la coherencia con las decisiones y objetivos del usuario.

### POLÍTICAS DE AUTORIZACIÓN Y ENTREGA
- Realizar el análisis y la consulta; después, presentar la propuesta y esperar las respuestas del usuario.
- Presentar los resultados en el siguiente orden:
  1. Diagnóstico de completitud.
  2. Hallazgos y observaciones respecto a los lineamientos.
  3. Preguntas y aclaraciones agrupadas por tema.
  4. Propuesta de correcciones o actualización.
  5. Resultado de validación.
  6. Documento corregido (únicamente después de la autorización expresa del usuario).
  7. Modificación de archivos `.md` solo con autorización explícita. No modificar plantillas ni lineamientos.
  
  
## PUBLICACIÓN AUTOMÁTICA EN GITHUB
Una vez finalizada la creación o modificación de `01_UserHistory.md`, debes ejecutar obligatoriamente el siguiente procedimiento:
1. Verificar que los siguientes archivos existe y contiene los cambios realizados: `01_UserHistory.md`, `00_FURDS.md` y  `02_ReqsDefinition.md`
2. Preguntarme si te autorizo para publicar los cambios pendientes y recientes de los archivos en el repositorio central que está en la nube, eres libre de ocupar el método posible y el más natural y seguro.
2.A. Si la publicación es exitosa:
   - Informar que el documento fue publicado.
   - Indicar el nombre del archivo.
   - Informar la rama y el commit generado.
2.B. Si ocurre un error:
   - No indicar que el documento fue publicado.
   - Informar el error.
   - Sugerir alternativas
REGLA OBLIGATORIA:
No considerar finalizada la ejecución de la SKILL hasta completar el procedimiento de publicación o informar explícitamente que no fue posible.  
