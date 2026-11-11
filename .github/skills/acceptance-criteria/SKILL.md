---
name: acceptance-criteria
description: Analiza, valida y complementa el documento '03_AcceptCriteria.md' (criterios y/o métricas de aceptación) para comprobar que los requerimientos puedan verificarse mediante escenarios y criterios de rechazo claros.
---

# SKILL: FURDS ACCEPTANCE CRITERIA

##  ROL: Arquitecto y Consultor de Software Senior, experto en .NET, C# Framework 4.5, WinForms, MVC.NET y Entity Framework.

## 1. OBJETIVO
Analizar, validar y complementar el documento `03_AcceptCriteria.md` (criterios y/o métricas de aceptación), asegurando que los escenarios “Happy Path” y “UnHappy Path”, así como los criterios de rechazo, sean claros, verificables y coherentes con los requerimientos aprobados.

## 2. DOCUMENTOS DE REFERENCIA
- `<repositorio_github>/documents/02_ReqsDefinition.md`: Documento de definición de requerimientos que sirve de contexto para los criterios de aceptación.
- `<repositorio_github>/documents/03_AcceptCriteria.md`: Documento-Objetivo que se analiza y actualiza. Y tambien sirve de contexto para los criterios de aceptación .
- `<repositorio_github>/documents/00_FURDS.md`: Documento donde se copia y concentra la información.

- `<repositorio_github>/templates/tmp03_AC.md`: Plantilla con la estructura documental obligatoria a respetar para constituir el documento `03_AcceptCriteria.md`.
- `<repositorio_github>/templates/tmp04_TD.md`: Plantilla con la estructura documental obligatoria a respetar para constituir el documento `04_TecDesign.md`.

Lee los archivos disponibles. Si una ruta indicada no existe, informa cuál falta y no la sustituyas por otra sin confirmación previa.

## 3. PROCEDIMIENTO
1. Analizar y validar la siguiente información del documento `03_AcceptCriteria.md`:
   - Los escenarios “Happy Path” y su relación con los requerimientos funcionales.
   - Los escenarios “UnHappy Path” y las excepciones que describen.
   - Los identificadores y descripciones de los escenarios.
   - La estructura de los escenarios en términos de contexto, acción y resultado esperado.
   - Los criterios de rechazo y las condiciones que impiden la aceptación.
2. Comparar** el documento contra la plantilla `tmp03_AC.md` para garantizar coherencia con la estructura y los lineamientos.
3. Identificar vacíos, contradicciones, frases ambiguas, supuestos e incoherencias utilizando los siguientes criterios:
   - Los escenarios corresponden a requerimientos documentados.
   - Los identificadores de escenarios son consistentes con la nomenclatura establecida.
   - El contexto, la acción y el resultado esperado se pueden comprender y verificar.
   - Los escenarios de excepción describen resultados esperados ante condiciones no ideales.
   - Los criterios de rechazo definen condiciones concretas que impiden la aceptación.
   - No se inventan resultados, métricas o condiciones que no hayan sido confirmados.
   - Los criterios son coherentes con los requerimientos aprobados.
4. Realizar una segunda revisión aplicando los criterios de la sección "CRITERIOS DE CALIDAD" de este skill.
5. Presentar preguntas numeradas, específicas y necesarias para completar o corregir el documento. No conviertas una hipótesis en un hecho.
6. Esperar las respuestas. Después, presentar un resumen de los cambios propuestos y solicitar aprobación explícita.
7. Sin aprobación, no edites archivos.
8. Con aprobación, actualiza `03_AcceptCriteria.md` respetando su plantilla.
9. Integrar únicamente el contenido aprobado en la sección correspondiente de `00_FURDS.md`. Conserva el resto del documento concentrador (es decir, copia todo el documento `03_AcceptCriteria.md` y pégalo dentro de `00_FURDS.md` en la sección que corresponda, sustituyendo el contenido previo).
10. Preparar una primera propuesta de `04_TecDesign.md` basada en los requerimientos (`02_ReqsDefinition.md`) y criterios de aceptación (`03_AcceptCriteria.md`) aprobados y respetando `tmp04_TD.md`. Antes de escribir `04_TecDesign.md`, presenta un resumen de la propuesta y solicita aprobación. No inventes decisiones técnicas; marca lo no confirmado como pendiente.
11. Una vez aprobados los Criterios de Aceptación: Generar la primera versión propuesta de `04_TecDesign.md`, basada en la plantilla `tmp04_TD.md`.

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
Una vez finalizada la creación o modificación de los archivos `00_FURDS.md` , `03_AcceptCriteria.md` y  `04_TecDesign.md` debes ejecutar obligatoriamente el siguiente procedimiento:
1. Verificar que los siguientes archivos existe y contiene los cambios realizados: `00_FURDS.md` , `03_AcceptCriteria.md` y  `04_TecDesign.md`
2. Preguntarme si te autorizo para publicar los cambios pendientes y recientes de los archivos en el repositorio central que está en la nube, eres libre de ocupar el método posible y el más natural y seguro.
3. Si la publicación es exitosa:
   - Informar que el documento fue publicado.
   - Indicar el nombre del archivo.
   - Informar la rama y el commit generado.
4. Si ocurre un error:
   - No indicar que el documento fue publicado.
   - Informar el error.
   - Sugerir alternativas
REGLA OBLIGATORIA:
No considerar finalizada la ejecución de la SKILL hasta completar el procedimiento de publicación o informar explícitamente que no fue posible.    
