---
name: publish-user-history
description: Publicar los documentos de la sección "## 2. DOCUMENTOS DE REFERENCIA" en el repositorio GitHub mediante COMMIT, PUSH y MERGE a la rama main.
---
# SKILL: PUBLISH FURDS & USER HISTORY

## 1. OBJETIVO
Publicar los documentos de la sección "## 2. DOCUMENTOS DE REFERENCIA" en el repositorio GitHub
llevando a cabo las etapas: COMMIT, PUSH y MERGE hacia la rama `main`.

## 2. DOCUMENTOS DE REFERENCIA
Rutas relativas a la raíz del repositorio. Estas son las únicas constantes de archivos; usar siempre estos identificadores.
- `{USER_HISTORY}` = `documents/01_UserHistory.md`
- `{REQS}` = `documents/02_ReqsDefinition.md`
- `{FURDS}` = `documents/00_FURDS.md`

## 3. PROCEDIMIENTO
1. Verificar que existen `{USER_HISTORY}`, `{FURDS}` y `{REQS}`. Si falta alguno, detenerse e informar el error.
2. Preguntar al usuario si autoriza publicar los cambios pendientes de estos archivos en el repositorio central (commit, push y merge a main). Esperar confirmación explícita antes de continuar.
3. Ejecutar, desde la raíz del repositorio:
   a. Revisar cambios: `git status --porcelain -- documents/`. Si no hay cambios, informar "Sin cambios pendientes" y finalizar.
   b. Actualizar main: `git fetch origin && git checkout main && git pull --ff-only origin main`.
   c. Crear rama: `git checkout -b auto-update/user-history-<YYYYMMDD-HHMMSS>`.
   d. Preparar solo los documentos de la sección 2: `git add {FURDS} {USER_HISTORY} {REQS}`.
   e. COMMIT: `git commit -m "[Auto_Update] Publica documentos de referencia"`.
   f. PUSH: `git push -u origin <rama>`.
   g. Abrir PR: `gh pr create --base main --head <rama> --title "[Auto_Update] Publica documentos de referencia" --body "Publicación automática de documentos de referencia."`.
   h. MERGE: `gh pr merge <rama> --squash --delete-branch --subject "[Auto_Update] Publica documentos de referencia"`.
   i. Sincronizar: `git checkout main && git pull --ff-only origin main`.
   j. Obtener el commit final: `git rev-parse --short HEAD`.
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
No considerar finalizada la ejecución de la SKILL hasta completar el procedimiento de publicación y recibir confirmación del usuario, o informar explícitamente que no fue posible completar la tarea.de la SKILL hasta completar el procedimiento de publicación y recibir confirmación del usuario, o informar explícitamente que no fue posible completar la tarea.