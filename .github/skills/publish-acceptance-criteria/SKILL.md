---
name: publish-acceptance-criteria
description: Publicar los documentos de la sección "## 2. DOCUMENTOS DE REFERENCIA" en el repositorio GitHub mediante COMMIT, PUSH y MERGE a la rama main.
---
# SKILL: PUBLISH FURDS & REQUIREMENTS DEFINITION

## 1. OBJETIVO
Publicar los documentos de la sección "## 2. DOCUMENTOS DE REFERENCIA" en el repositorio GitHub
llevando a cabo las etapas: COMMIT, PUSH y MERGE hacia la rama `main`.

## 2. DOCUMENTOS DE REFERENCIA
Rutas relativas a la raíz del repositorio. Estas son las únicas constantes de archivos; usar siempre estos identificadores.
- `{DOC_A}` = `documents/03_AcceptCriteria.md`
- `{DOC_B}` = `documents/00_FURDS.md`
- `{DOC_C}` = `documents/04_TecDesign.md`

Lee los archivos disponibles. Si una ruta indicada no existe, informa cuál falta y no la sustituyas por otra sin confirmación previa.


## 3. PROCEDIMIENTO
1. Verificar que existen `{DOC_A}` , `{DOC_B}` y `{DOC_C}` . Si falta alguno, detenerse e informar el error.
2. Preguntar al usuario si autoriza publicar los cambios pendientes de estos archivos en el repositorio central (commit, push y merge a main). Esperar confirmación explícita antes de continuar.

3. Ejecutar, desde la raíz del repositorio:
   a. Revisar todos los cambios: `git status --porcelain`.      
   - Si no hay cambios en  `{DOC_A}` , `{DOC_B}` y `{DOC_C}`, informar \"Sin cambios pendientes\" y finalizar.      
   - Si existen cambios fuera de  `{DOC_A}` , `{DOC_B}` y `{DOC_C}`, detenerse e informar que existen cambios ajenos que no se publicarán automáticamente.   
   b. Crear una rama desde el estado de trabajo actual: `git switch -c auto-update/requirements-definition-<YYYYMMDD-HHMMSS>`.  
   c. Preparar exclusivamente los documentos autorizados que tengan cambios: `git add {DOC_A} {DOC_B} {DOC_C}`.
   d. Crear el commit: `git commit -m "[Auto_Update] Publica documentos de referencia"`. 
   e. Actualizar la base de la rama: `git fetch origin && git rebase origin/main`.   
   f. Si el rebase genera conflictos, detenerse e informar los archivos en conflicto; no continuar automáticamente.   
   g. Publicar la rama: `git push -u origin <rama>`.  
   h. Abrir PR: `gh pr create --base main --head <rama> --title "[Auto_Update] Publica documentos de referencia" --body "Publicación automática de documentos de referencia."`.   
   i. Fusionar el PR: `gh pr merge <rama> --squash --delete-branch --subject "[Auto_Update] Publica documentos de referencia"`.   
   j. Sincronizar y obtener el commit final: `git switch main && git pull --ff-only origin main && git rev-parse --short HEAD`.

4. Si la publicación es exitosa:
   - Informar que los documentos fueron publicados.
   - Indicar los nombres de archivo publicados, tomados de la sección 2.
   - Informar la rama (`<rama>`) y el commit generado (SHA corto de main).
5. Si ocurre un error en cualquier paso:
   - No indicar que los documentos fueron publicados.
   - Informar el paso fallido y el mensaje de error completo.
   - Sugerir alternativas: revisar autenticación con `gh auth status`, resolver conflictos manualmente, revisar protecciones de `main` (si exigen revisión, el merge directo fallará), o publicar manualmente mediante un PR.
   - Si el commit ya existe en la rama pero el merge falló, no repetir el commit; reintentar desde el paso g.  


## 4. REGLA OBLIGATORIA
No considerar finalizada la ejecución hasta completar la publicación autorizada o informar explícitamente que no fue posible completarla. La autorización del usuario debe obtenerse antes de crear el commit; no se requiere una confirmación posterior para finalizar.