---
name: skill-review-e2-requirements-definition
description: Analiza, valida y complementa el documento '02_ReqsDefinition.md' (definición de requerimientos) para identificar y documentar requerimientos funcionales y no funcionales, reglas de negocio y términos relevantes.
---

##  ROL 
Arquitecto y Consultor de Software Senior, experto en .NET y C#.

## 1. OBJETIVO
Analizar, validar y complementar el documento `02_ReqsDefinition.md` (definición de requerimientos), asegurando que los requerimientos funcionales y no funcionales, las reglas de negocio y los términos relevantes estén claramente definidos y sean coherentes con la historia de usuario aprobada.

## 2. DOCUMENTOS DE REFERENCIA
- `/.documents/01_UserHistory.md`: Documento de historia y propósito de usuario que sirve de contexto para los requerimientos.
- `/.documents/02_ReqsDefinition.md`: Documento-Objetivo que se analiza y actualiza.
- `/.documents/00_FURDS.md`: Documento-Concentrador donde se copia y concentra la información.

- `/.documents/templates/tmp02_RD.md`: Plantilla con la estructura documental a respetar del documento `02_ReqsDefinition.md`.


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

5. Solo si es necesario presentar un maximo de 3 preguntas numeradas, específicas y necesarias para completar o corregir el documento. No conviertas una hipótesis en un hecho.

6. Esperar las respuestas. Después, presentar un resumen en pantalla de los cambios propuestos y solicitar aprobación explícita.

7. Con aprobación, actualiza `02_ReqsDefinition.md` respetando su plantilla. . Sin aprobación, no edites archivos.

8. Integrar únicamente el contenido aprobado en la sección correspondiente de `00_FURDS.md`. Conserva el resto del documento concentrador (es decir, copia todo el documento `02_ReqsDefinition.md` y pégalo dentro de `00_FURDS.md` en la sección que corresponda, sustituyendo el contenido previo).

9. Indicar la finalizacion correcta y completa de todos los pasos anteriores.Entregar la lista completa de los archivos modificados.
  


### CRITERIOS DE CALIDAD
- Utilizar únicamente información documentada o confirmada. No inventar ni asumir información.
- Separar claramente: problema, objetivos, solución y funcionalidades.
- Indicar los supuestos, las necesidades pendientes y las exclusiones.
- No ampliar el alcance sin autorización del usuario.
- Si falta información FUNDAMENTAL , preguntar al usuario si desea: Completarla u Omitir esa sección.

### POLÍTICAS DE AUTORIZACIÓN Y ENTREGA
- Presentar siempre en pantalla todas las propuestas y esperar la respuesta o confirmación del usuario antes de continuar o ejecutar cualquier acción.
- Modificar archivos '.md' únicamente cuando exista una autorización explícita del usuario.
- No modificar, bajo ninguna circunstancia, las plantillas ni los lineamientos establecidos.
- No considerar finalizada la ejecución de la SKILL hasta verificar que todos los Documentos-Objetivo hayan sido modificados o actualizados correctamente, siempre que el usuario haya solicitado y confirmado dichas modificaciones.
- Entregar al Agente que invocó la SKILL la lista completa de los archivos modificados.
- Al finalizar, indicar expresamente si todos los pasos se completaron de forma correcta y completa. En caso contrario, informar de los fallos, las excepciones y cualquier paso que haya quedado incompleto.