---
name: skill-x-publish-repo-files-v2
description:  Publica automáticamente una lista de archivos modificados en la rama main del repositorio GitHub remoto central, ejecutando validación, commit, sincronización, merge y push.
---

## Input Parameters
files:
  type: array
  required: true
  description: Lista de uno o dos archivos modificados, recibida directamente como variable desde el agente orquestador.



# SKILL: Publish Repository Files

## 1. Objetivo
Publicar automáticamente en la rama `main` del repositorio GitHub remoto central los archivos modificados.
La skill debe consumir directamente la lista de archivos proporcionada por el agente que invoca, sin solicitar ni declarar nuevamente los nombres de los archivos.
El proceso debe ejecutar automáticamente todas las operaciones Git necesarias para garantizar que los cambios queden integrados y publicados en `origin/main`.


## 2. Entrada y contexto de ejecución

### 2.1 Entrada
Recibir del agente orquestador:
- `files`: Debe contener la lista de archivos modificados y que se deben publicar, recibida del agente invocador. Procesa exactamente esos elementos; no busques ni infieras otros archivos.


### 2.2 Reglas de entrada
1. Aceptar exclusivamente listas de uno o dos archivos.
2. Recuperar la lista mediante la referencia recibida. 
3. Resolver las rutas respecto a la raíz del repositorio local.
4. Verificar que todos los archivos existan y contengan modificaciones correspondientes a la ejecución de la skill de origen.
5. No incorporar archivos adicionales.
6. Si no es posible recuperar la referencia o validar los archivos, detener la ejecución e informar el error.


## 3. Procedimiento de ejecución


### Paso 1. Validar repositorio
1. Identificar la raíz del repositorio Git activo.
2. Verificar que el repositorio sea válido.
3. Identificar la rama local activa.
4. Identificar el remoto central `origin`.
5. Obtener la URL del repositorio remoto.
6. Verificar conexión y autenticación.
7. Confirmar que la rama remota `main` exista y permita recibir cambios.
** Si alguna validación falla, detener la ejecución.


### Paso 2. Validar archivos
1. Recuperar la lista de archivos contenidos en `files`.
2. Verificar que contenga uno o dos archivos.
3. Comprobar que todos existan.
4. Verificar que tengan modificaciones locales pendientes.
5. Confirmar que las modificaciones correspondan a los archivos generados por la skill de origen.
6. Identificar cualquier otra modificación local y excluirla del proceso.
** Si los archivos no presentan modificaciones publicables, finalizar correctamente indicando que no existen cambios pendientes.


### Paso 3. Sincronizar repositorio
1. Obtener los últimos cambios remotos:   `git fetch origin`
2. Verificar el estado de la rama local activa respecto a su contraparte remota.
3. Verificar el estado de `origin/main`.
4. Identificar cambios remotos pendientes de integración.
5. Comprobar que no existan conflictos que comprometan los archivos que se publicarán.
** No sobrescribir cambios remotos ni descartar modificaciones locales.


### Paso 4. Preparar y ejecutar COMMIT
1. Agregar exclusivamente los archivos recibidos mediante la referencia:   `git add -- <archivos_referenciados>`
2. Verificar el contenido preparado:   `git diff --cached`
3. Confirmar que el staging contenga exclusivamente los archivos autorizados.
4. Generar automáticamente el mensaje de commit:   `Actualizacion Automatica GH`
5. Ejecutar:   `git commit -m "<mensaje>"`
6. Obtener y registrar el hash del commit generado.
** El commit debe contener exclusivamente las modificaciones correspondientes a los archivos recibidos.

### Paso 5. Preparar integración en MAIN
1. Identificar la rama de trabajo desde la cual se generó el commit.
2. Mantenerse en la rama activa de trabajo (no cambiar a `main`).
3. Actualizar referencias remotas:   `git fetch origin`
4. Verificar el estado de la rama de trabajo respecto a `origin/main`.
5. Comprobar que los cambios que se integrarán correspondan exclusivamente a los archivos autorizados.
6. Verificar que no existan cambios ajenos que puedan incorporarse accidentalmente.
** Si la rama activa es `main`, continuar sin pasos adicionales de cambio de rama.
** Si existen cambios locales que impidan integrar de forma segura, detenerse sin descartar ni sobrescribirlos.

### Paso 6. Ejecutar MERGE hacia MAIN
1. Integrar en la rama de trabajo los cambios más recientes de `origin/main`:   `git merge origin/main`
2. Verificar que el merge haya finalizado correctamente.
3. Comprobar que los archivos autorizados se mantengan correctamente en la rama de trabajo.
4. Confirmar que no se hayan incorporado modificaciones ajenas a la publicación.

Si ocurre un conflicto:
- Intentar resolverlo automáticamente únicamente cuando la resolución preserve íntegramente los cambios existentes y la intención de ambos lados.
- Si no existe una resolución inequívoca, detener la ejecución e informar los archivos afectados.
- Nunca sobrescribir cambios de `origin/main` para forzar la integración.

### Paso 7. Ejecutar PUSH hacia repositorio remoto
Publicar los cambios integrados en la rama remota central sin cambiar de rama local: `git push origin HEAD:main`
Si el push es rechazado porque `origin/main` recibió nuevos cambios:
1. Ejecutar `git fetch origin`.
2. Reintegrar `origin/main` en la rama de trabajo mediante:  `git merge origin/main`
3. Resolver automáticamente los conflictos únicamente cuando sea seguro.
4. Verificar nuevamente la integración.
5. Reintentar:   `git push origin HEAD:main`
** No utilizar `git push --force`, `git push --force-with-lease` ni operaciones equivalentes.

### Paso 8. Verificar publicación final
Comprobar obligatoriamente:
1. Que los archivos autorizados estén actualizados en la rama de trabajo activa.
2. Que el commit generado esté presente en la rama de trabajo activa.
3. Que el merge haya finalizado correctamente cuando corresponda.
4. Que el push haya finalizado correctamente.
5. Que `origin/main` contenga los cambios publicados.
6. Que `origin/main` apunte al commit publicado.
7. Que no existan errores ni operaciones pendientes.
** La publicación solamente se considera exitosa cuando todas las verificaciones se cumplen.

## 4. Reglas de ejecución
- Ejecutar todas las operaciones mediante la terminal integrada de GitHub Copilot Desktop.
- Trabajar exclusivamente sobre el repositorio abierto en la sesión activa.
- Obtener los archivos exclusivamente mediante la referencia al resultado de la skill anterior.
- Publicar exclusivamente los archivos autorizados.
- Ejecutar automáticamente `FETCH`, `COMMIT`, `MERGE` y `PUSH` cuando correspondan.
- El destino final obligatorio es `origin/main`.
- No solicitar confirmaciones intermedias para operaciones autorizadas.
- No modificar el contenido de los documentos durante la publicación.
- No incorporar archivos adicionales.
- No descartar modificaciones locales de terceros.
- No utilizar operaciones destructivas.
- No realizar force push.
- No crear Pull Requests.
- No dejar cambios sin integrar en `main` y reportar falsamente una publicación exitosa.
- Ante cualquier error que comprometa la integridad de los cambios, detener la ejecución.

## 5. Resultado de ejecución
Devolver obligatoriamente uno de los siguientes resultados.

### PUBLICACIÓN EXITOSA
- Estado: `SUCCESS`
- Archivos publicados: `files`
- Repositorio remoto: `<URL>`
- Rama de origen: `<rama>`
- Rama destino: `main`
- Commit: `<hash>`
- Merge: `COMPLETADO / NO REQUERIDO`
- Push: `COMPLETADO`
- Sincronización de `origin/main`: `CONFIRMADA`
- Errores: `NINGUNO`
- Acciones pendientes: `NINGUNA`

### PUBLICACIÓN FALLIDA
- Estado: `FAILED`
- Archivos involucrados: `files`
- Etapa fallida: `<etapa>`
- Error: `<descripción>`
- Commit: `REALIZADO / NO REALIZADO`
- Merge: `REALIZADO / NO REALIZADO / PARCIAL`
- Push: `REALIZADO / NO REALIZADO`
- Cambios publicados en `main`: `SÍ / NO / PARCIAL`
- Acciones pendientes: `<descripción>`

## 6. Criterio de finalización
La skill solamente podrá devolver `SUCCESS` cuando:
1. Se haya recuperado correctamente la lista de archivos mediante la referencia recibida.
2. Se hayan publicado todos los archivos autorizados.
3. El commit se haya creado correctamente.
4. Los cambios se hayan integrado correctamente en la rama de trabajo respecto a `origin/main`.
5. El push hacia `origin/main` haya finalizado correctamente.
6. Se haya verificado la presencia de los cambios en el repositorio remoto.
7. No existan errores ni acciones pendientes.
** En cualquier otro escenario, devolver `FAILED`, indicando el estado real de cada operación y evitando afirmar que los cambios fueron publicados cuando no lo fueron.