---
name: imple-dev-plan
description: Analiza, valida y complementa el documento '05_PlanDev.md' (plan de desarrollo e implementación) para organizar las actividades de desarrollo y documentar sus dependencias y autorizaciones.
---

# SKILL: FURDS IMPLEMENTATION DEVELOPMENT PLAN

##  ROL: Arquitecto y Consultor de Software Senior, experto en .NET, C# Framework 4.5, WinForms, MVC.NET y Entity Framework.

## 1. OBJETIVO
Analizar, validar y complementar el documento `05_PlanDev.md` (plan de desarrollo e implementación), asegurando que las actividades estén organizadas, sean accionables y estén alineadas con el diseño técnico aprobado, y que las dependencias y autorizaciones necesarias estén identificadas.

## 2. DOCUMENTOS DE REFERENCIA


- `<repositorio_github>/documents/04_TecDesign.md`: Documento de diseño técnico que sirve de contexto para el plan de desarrollo e implementación.   Y tambien sirve de contexto para el plan de desarrollo e implementación.
- `<repositorio_github>/documents/05_PlanDev.md`: Documento-Objetivo que se analiza y actualiza.
- `<repositorio_github>/documents/00_FURDS.md`: Documento donde se copia y concentra la información.

- `<repositorio_github>/templates/tmp05_PL.md`: Plantilla con la estructura documental obligatoria a respetar para constituir el documento `05_PlanDev.md`.

Lee los archivos disponibles. Si una ruta indicada no existe, informa cuál falta y no la sustituyas por otra sin confirmación previa.

## 3. PROCEDIMIENTO
1. Analizar y validar la siguiente información del documento `05_PlanDev.md`:
   - La lista jerarquizada de tareas y actividades.
   - La claridad y el carácter accionable de cada actividad.
   - La organización de las actividades y sus subactividades.
   - La relación de las actividades con el diseño técnico aprobado.
   - Las dependencias y autorizaciones necesarias, cuando se hayan documentado.
2. Comparar** el documento contra la plantilla `tmp05_PL.md` para garantizar coherencia con la estructura y los lineamientos.
3. Identificar vacíos, contradicciones, frases ambiguas, supuestos e incoherencias utilizando los siguientes criterios:
   - Las actividades corresponden al diseño técnico aprobado.
   - Las tareas están redactadas de forma clara y accionable.
   - El orden y la jerarquía de las actividades son comprensibles.
   - Las dependencias y autorizaciones están identificadas cuando corresponda.
   - No se inventan responsables, fechas, estimaciones, estados o autorizaciones.
   - No se presenta como implementada o completada una actividad que no esté confirmada.
   - Las actividades no amplían el alcance aprobado.
4. Realizar una segunda revisión aplicando los criterios de la sección "CRITERIOS DE CALIDAD" de este skill
5. Presentar preguntas numeradas, específicas y necesarias para completar o corregir el documento. No conviertas una hipótesis en un hecho.
6. Esperar las respuestas. Después, presentar un resumen de los cambios propuestos y solicitar aprobación explícita.
7. Sin aprobación, no edites archivos.
8. Con aprobación, actualiza `05_PlanDev.md` respetando su plantilla.
9. Integrar únicamente el contenido aprobado en la sección correspondiente de `00_FURDS.md`. Conserva el resto del documento concentrador (es decir, copia todo el documento `05_PlanDev.md` y pégalo dentro de `00_FURDS.md` en la sección que corresponda, sustituyendo el contenido previo).
10. Una vez aprobado el Plan de Desarrollo e Implementación: Generar revisar y validar la versión integrada a lo largo del proceso del documento `00_FURDS.md`, basada en la plantilla `tmp00_FURDS.md`.

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
Una vez finalizada la creación o modificación de los archivos `00_FURDS.md` y `05_PlanDev.md` , debes ejecutar obligatoriamente el siguiente procedimiento:
1. Verificar que los siguientes archivos existe y contiene los cambios realizados: `00_FURDS.md` y `05_PlanDev.md`
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
