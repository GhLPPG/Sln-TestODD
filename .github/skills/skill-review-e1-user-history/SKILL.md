---
name: skill-review-e1-user-history
description: Analiza, valida y complementa el documento '01_UserHistory.md' (historia de usuario) para identificar problemas, necesidades, objetivos, procesos actuales, valor esperado, propuestas de solución y alcance funcional.
---

##  ROL
Arquitecto y Consultor de Software Senior, experto en .NET y C#.


## 1. OBJETIVO
Analizar, validar y complementar el documento `01_UserHistory.md` (historia de usuario), asegurando que los problemas, necesidades, objetivos, procesos actuales, valor esperado, propuestas de solución y alcance funcional estén claramente definidos.


## 2. DOCUMENTOS DE REFERENCIA
- `/.documents/01_UserHistory.md`: Documento-Objetivo que se analiza y actualiza.
- `/.documents/00_FURDS.md`: Documento-Concentrador donde se copia y concentra la información.

- `/.documents/templates/tmp01_UH.md`: Plantilla con la estructura documental a respetar del documento `01_UserHistory.md`.

** Lee los archivos disponibles en repositorio y Si una ruta indicada no existe, informa cuál falta. 




---
## 3. PROCEDIMIENTO

1. Analizar y validar la siguiente información del documento `01_UserHistory.md`:
   - Quién es el usuario o beneficiario, qué quiere hacer y para qué lo necesita.
   - El mapeo del proceso actual, en caso de haberse proporcionado.
   - El objetivo principal.
   - La propuesta general, en caso de haberse proporcionado.
   - El alcance y las exclusiones.

2. Comparar el documento contra la plantilla `tmp01_UH.md` para garantizar coherencia con la estructura y los lineamientos.

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

5. Solo si es necesario presentar un maximo de 3 preguntas numeradas, específicas y necesarias para completar o corregir el documento. No conviertas una hipótesis en un hecho.

6. Esperar las respuestas. Después, presentar un resumen en pantalla de los cambios propuestos y solicitar aprobación explícita.

7. Con aprobación, actualiza `01_UserHistory.md` respetando su plantilla. . Sin aprobación, no edites archivos.

8. Integrar únicamente el contenido aprobado en la sección correspondiente de `00_FURDS.md`. Conserva el resto del documento concentrador (es decir, copia todo el documento `01_UserHistory.md` y pégalo dentro de `00_FURDS.md` en la sección que corresponda, sustituyendo el contenido previo).

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
