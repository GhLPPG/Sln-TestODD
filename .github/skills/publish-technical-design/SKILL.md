---
name: publish-technical-design
description: Publicar los documentos de la sección "## 2. DOCUMENTOS DE REFERENCIA" en el repositorio GitHub mediante COMMIT, PUSH y MERGE a la rama main.
---
# SKILL: PUBLISH FURDS & REQUIREMENTS DEFINITION

## 1. OBJETIVO
Publicar los documentos de la sección "## 2. DOCUMENTOS DE REFERENCIA" en el repositorio GitHub
llevando a cabo las etapas: COMMIT, PUSH y MERGE hacia la rama `main`.

## 2. DOCUMENTOS DE REFERENCIA
## 2. ARCHIVOS ELEGIBLES Y ENTRADA OBLIGATORIA
Rutas relativas a la raíz del repositorio. Estos son los únicos archivos que esta skill puede publicar:

- `{DOC_A}` = `documents/04_TecDesign.md`
- `{DOC_B}` = `documents/00_FURDS.md`
- `{DOC_C}` = `documents/05_PlanDev.md`

La skill debe recibir del agente orquestador la lista `ARCHIVOS_AUTORIZADOS`, formada exclusivamente por archivos modificados y aprobados durante la ejecución actual de `technical-design`.

No publiques, prepares ni incluyas en el commit archivos que no estén en `ARCHIVOS_AUTORIZADOS`, aunque pertenezcan a la lista anterior.

Lee los archivos disponibles. Si una ruta indicada no existe, informa cuál falta y no la sustituyas por otra sin confirmación previa.


## 3. PROCEDIMIENTO
1. Verificar que existe cada archivo incluido en `ARCHIVOS_AUTORIZADOS`. Si falta alguno, detenerse e informar cuál falta. No sustituirlo por otra ruta sin confirmación previa.
2. Preguntar al usuario si autoriza publicar los cambios pendientes de estos archivos en el repositorio central (commit, push y merge a main). Esperar confirmación explícita antes de continuar.

3. Ejecutar, desde la raíz del repositorio:
 a. Revisar todos los cambios con `git status --porcelain`.
   - Si no hay cambios en los archivos de `ARCHIVOS_AUTORIZADOS`, informar "Sin cambios pendientes" y finalizar.
   - Si existe cualquier archivo modificado que no esté en `ARCHIVOS_AUTORIZADOS`, detenerse e informar que existen cambios ajenos que no se publicarán automáticamente.
   - Si un archivo de `ARCHIVOS_AUTORIZADOS` no coincide con `{DOC_A}`, `{DOC_B}` o `{DOC_C}`, detenerse e informar que no es publicable mediante esta skill.

   b. Crear una rama desde el estado de trabajo actual: `git switch -c auto-update/requirements-definition-<YYYYMMDD-HHMMSS>`.  
   c. Preparar exclusivamente los documentos autorizados que tengan cambios:
   `git add -- <ARCHIVOS_AUTORIZADOS>`.
   d. Crear el commit: `git commit -m "[Auto_Update] Publica documentos de referencia"`. 
   e. Actualizar la base de la rama: `git fetch origin && git rebase origin/main`.   
   f. Si el rebase genera conflictos, detenerse e informar los archivos en conflicto; no continuar automáticamente.   
   g. Publicar la rama: `git push -u origin <rama>`.  
   h. Abrir PR: `gh pr create --base main --head <rama> --title "[Auto_Update] Publica documentos de referencia" --body "Publicación automática de documentos de referencia."`.   
   i. Fusionar el PR: `gh pr merge <rama> --squash --delete-branch --subject "[Auto_Update] Publica documentos de referencia"`.   
   j. Sincronizar y obtener el commit final: `git switch main && git pull --ff-only origin main && git rev-parse --short HEAD`.

4. Si la publicación es exitosa:
   - Informar que los documentos fueron publicados.
   - - Indicar los nombres de archivo publicados, tomados de `ARCHIVOS_AUTORIZADOS`.
   - Informar la rama (`<rama>`) y el commit generado (SHA corto de main).
5. Si ocurre un error en cualquier paso:
   - No indicar que los documentos fueron publicados.
   - Informar el paso fallido y el mensaje de error completo.
   - Sugerir alternativas: revisar autenticación con `gh auth status`, resolver conflictos manualmente, revisar protecciones de `main` (si exigen revisión, el merge directo fallará), o publicar manualmente mediante un PR.
   - Si el commit ya existe en la rama pero el merge falló, no repetir el commit; reintentar desde el paso g.  


## 4. REGLA OBLIGATORIA
No considerar finalizada la ejecución hasta completar la publicación autorizada o informar explícitamente que no fue posible completarla. La autorización del usuario debe obtenerse antes de crear el commit; no se requiere una confirmación posterior para finalizar.