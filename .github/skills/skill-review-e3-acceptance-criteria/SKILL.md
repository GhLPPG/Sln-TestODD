---
name: skill-review-e3-acceptance-criteria
description: Analiza, valida y complementa el documento '03_AcceptCriteria.md' (criterios y/o métricas de aceptación) para comprobar que los requerimientos puedan verificarse mediante escenarios y criterios de rechazo claros.
---


##  ROL 
Arquitecto y Consultor de Software Senior, experto en .NET y C#.


## 1. OBJETIVO
Analizar, validar y complementar el documento `03_AcceptCriteria.md` (criterios y/o métricas de aceptación), asegurando que los escenarios “Happy Path” y “UnHappy Path”, así como los criterios de rechazo, sean claros, verificables y coherentes con los requerimientos aprobados.

## 2. DOCUMENTOS DE REFERENCIA
- `/.documents/02_ReqsDefinition.md`: Documento de definición de requerimientos que sirve de contexto para los criterios de aceptación.
- `/.documents/03_AcceptCriteria.md`: Documento-Objetivo que se analiza y actualiza.
- `/.documents/00_FURDS.md`: Documento-Concentrador donde se copia y concentra la información.

- `/.documents/templates/tmp03_AC.md`: Plantilla con la estructura documental a respetar del documento `03_AcceptCriteria.md`.

** Lee los archivos disponibles en repositorio y Si una ruta indicada no existe, informa cuál falta. 


---
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

5. Solo si es necesario presentar un maximo de 3 preguntas numeradas, específicas y necesarias para completar o corregir el documento. No conviertas una hipótesis en un hecho.

6. Esperar las respuestas. Después, presentar un resumen en pantalla de los cambios propuestos y solicitar aprobación explícita.

7. Con aprobación, actualiza `03_AcceptCriteria.md` respetando su plantilla. . Sin aprobación, no edites archivos.

8. Integrar únicamente el contenido aprobado en la sección correspondiente de `00_FURDS.md`. Conserva el resto del documento concentrador (es decir, copia todo el documento `03_AcceptCriteria.md` y pégalo dentro de `00_FURDS.md` en la sección que corresponda, sustituyendo el contenido previo).

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





### CRITERIOS DE CALIDAD
- Basar el análisis exclusivamente en información documentada o confirmada.
- No inventar ni asumir hechos, participantes o procesos.
- Mantener diferenciados el problema, la solución, los objetivos y las funcionalidades.
- Identificar supuestos, necesidades no resueltas y exclusiones relevantes.
- Evitar ampliar el alcance por interpretación propia y mantener la coherencia con las decisiones y objetivos del usuario.
- Importante: Si hace falta informacion en cualquiera de las seccion preguntar a usuario si desea llenarlo mediante un cuastionario que tu le realizaras o si prefiere omitir el llenado de esa apartado.

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