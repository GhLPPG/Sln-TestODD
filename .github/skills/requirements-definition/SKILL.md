---
name: requirements-definition
description: Analiza, valida y complementa el documento '02_ReqsDefinition.md' (definición de requerimientos) para identificar y documentar requerimientos funcionales y no funcionales, reglas de negocio y términos relevantes.
---

# SKILL: FURDS REQUIREMENTS DEFINITION

##  ROL: Arquitecto y Consultor de Software Senior, experto en .NET, C# Framework 4.5, WinForms, MVC.NET y Entity Framework.

## 1. OBJETIVO
Analizar, validar y complementar el documento `02_ReqsDefinition.md` (definición de requerimientos), asegurando que los requerimientos funcionales y no funcionales, las reglas de negocio y los términos relevantes estén claramente definidos y sean coherentes con la historia de usuario aprobada.

## 2. DOCUMENTOS DE REFERENCIA
- `<repositorio_github>/documents/01_UserHistory.md`: Documento de historia y propósito de usuario que sirve de contexto para los requerimientos.
- `<repositorio_github>/documents/02_ReqsDefinition.md`: Documento-Objetivo que se analiza y actualiza.
- `<repositorio_github>/documents/00_FURDS.md`: Documento donde se copia y concentra la información.

- `<repositorio_github>/templates/tmp02_RD.md`: Plantilla con la estructura documental obligatoria a respetar para constituir el documento `02_ReqsDefinition.md`.
- `<repositorio_github>/templates/tmp03_AC.md`: Plantilla con la estructura documental obligatoria a respetar para constituir el documento `03_AcceptCriteria.md`.

Lee los archivos disponibles. Si una ruta indicada no existe, informa cuál falta y no la sustituyas por otra sin confirmación previa.

## 3. PROCEDIMIENTO
1. Analizar y validar la siguiente información del documento `02_ReqsDefinition.md`:
   - El diccionario de lenguaje de negocio, en caso de haberse proporcionado.
   - Los requerimientos funcionales, sus identificadores, módulos o elementos, funcionamiento actual, descripción y clasificación.
   - Las reglas de negocio, sus identificadores, nombres y descripciones detalladas.
   - Los requerimientos no funcionales relacionados con disponibilidad, escalabilidad, seguridad y trazabilidad.
   - La coherencia de los requerimientos con la historia de usuario aprobada.
2. Comparar** el documento contra la plantilla `tmp02_RD.md` para garantizar coherencia con la estructura y los lineamientos.
3. Identificar vacíos, contradicciones, frases ambiguas, supuestos e incoherencias utilizando los siguientes criterios:
   - Los términos de negocio son claros y consistentes, cuando corresponda.
   - Los requerimientos funcionales describen acciones, propósitos o funciones identificables.
   - Los identificadores y la clasificación de los requerimientos son consistentes.
   - Las reglas de negocio expresan restricciones o lógicas verificables.
   - Los requerimientos no funcionales corresponden con necesidades documentadas.
   - Los requerimientos son coherentes con la historia de usuario y sus objetivos.
   - No se inventan valores, métricas o niveles que no hayan sido confirmados.
4. Realizar una segunda revisión aplicando los criterios de la sección "CRITERIOS DE CALIDAD" de este skill.
5. Presentar preguntas numeradas, específicas y necesarias para completar o corregir el documento. No conviertas una hipótesis en un hecho.
6. Esperar las respuestas. Después, presentar un resumen de los cambios propuestos y solicitar aprobación explícita.
7. Sin aprobación, no edites archivos.
8. Con aprobación, actualiza `02_ReqsDefinition.md` respetando su plantilla.
9. Integrar únicamente el contenido aprobado en la sección correspondiente de `00_FURDS.md`. Conserva el resto del documento concentrador (es decir, copia todo el documento `02_ReqsDefinition.md` y pégalo dentro de `00_FURDS.md` en la sección que corresponda, sustituyendo el contenido previo).
10. Preparar una primera propuesta de `03_AcceptCriteria.md` basada en la historia de usuario (`01_UserHistory.md`) y en los requerimientos (`02_ReqsDefinition.md`) aprobados y respetando plantilla `tmp03_AC.md`. Antes de escribir `03_AcceptCriteria.md`, presenta un resumen de la propuesta y solicita aprobación. No inventes criterios; marca lo no confirmado como pendiente.
11. Una vez aprobada la Definición de Requerimientos: Generar la primera versión propuesta de `03_AcceptCriteria.md`, basada en la plantilla `tmp03_AC.md`.

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
Una vez finalizada la creación o modificación de `02_ReqsDefinition.md`, debes ejecutar obligatoriamente el siguiente procedimiento:
1. Verificar que el archivo `02_ReqsDefinition.md` existe y contiene los cambios realizados.
2. Ejecutar el script centralizado de publicación:
   powershell -NoProfile -ExecutionPolicy Bypass -File ".github/scripts/publish-document.ps1" -FilePath "documents/02_ReqsDefinition.md" -CommitMessage "docs: 02_ReqsDefinition.md"
2. Esperar el resultado de la ejecución.
3. Si la publicación es exitosa:
   - Informar que el documento fue publicado.
   - Indicar el nombre del archivo.
   - Informar la rama y el commit generado.
4. Si ocurre un error:
   - No indicar que el documento fue publicado.
   - Informar el error.
   - No intentar crear commits alternativos ni
     sobrescribir cambios remotos.

Una vez finalizada la creación o modificación de `00_FURDS.md.md`, debes ejecutar obligatoriamente el siguiente procedimiento:
1. Verificar que el archivo `00_FURDS.md.md` existe y contiene los cambios realizados.
2. Ejecutar el script centralizado de publicación:
   powershell -NoProfile -ExecutionPolicy Bypass -File ".github/scripts/publish-document.ps1" -FilePath "documents/00_FURDS.md.md" -CommitMessage "docs: update FURDS central"
2. Esperar el resultado de la ejecución.
3. Si la publicación es exitosa:
   - Informar que el documento fue publicado.
   - Indicar el nombre del archivo.
   - Informar la rama y el commit generado.
4. Si ocurre un error:
   - No indicar que el documento fue publicado.
   - Informar el error.
   - No intentar crear commits alternativos ni
     sobrescribir cambios remotos.

REGLA OBLIGATORIA:
No considerar finalizada la ejecución de la SKILL hasta completar el procedimiento de publicación o informar explícitamente que no fue posible.    