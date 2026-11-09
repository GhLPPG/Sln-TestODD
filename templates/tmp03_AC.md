## Criterios de Aceptación

>  03_AcceptCriteria.md

---

### Escenarios "Happy Path"

> Ruta ideal sin errores para comprobar que la funcionalidad principal cumple correctamente su propósito y objetivos esperados.

> **Guía**

> **ID:** Nomenclatura `EH00`.
> Los escenarios deben representar el flujo exitoso esperado.
> Deben validar que el usuario logra completar el objetivo principal de la funcionalidad.
> La redacción debe seguir el formato:

| ID   | Descripción                                                          |
| ---- | -------------------------------------------------------------------- |
| EH01 | Dado que [contexto], cuando [acción], entonces [resultado esperado]. |
| EH02 | Dado que [contexto], cuando [acción], entonces [resultado esperado]. |
| EH03 | Dado que [contexto], cuando [acción], entonces [resultado esperado]. |

---

### Escenarios "UnHappy Path"

> Ruta con posibles errores, validaciones o excepciones para comprobar el comportamiento de la funcionalidad ante situaciones no ideales.

> **Guía**

> **ID:** Nomenclatura `EU00`.
> Los escenarios deben representar errores funcionales, validaciones, restricciones o excepciones de negocio.
> Deben validar que el sistema responde de forma controlada y consistente ante condiciones inesperadas.
> La redacción debe seguir el formato:

| ID   | Descripción                                                          |
| ---- | -------------------------------------------------------------------- |
| EU01 | Dado que [contexto], cuando [acción], entonces [resultado esperado]. |
| EU02 | Dado que [contexto], cuando [acción], entonces [resultado esperado]. |
| EU03 | Dado que [contexto], cuando [acción], entonces [resultado esperado]. |

---

### Criterios de Rechazo

> Definir las condiciones que impedirán la aceptación formal de la funcionalidad, módulo o entrega.

| ID   | Condición de Rechazo | Impacto |
| ---- | -------------------- | ------- |
| CR01 |                      |         |
| CR02 |                      |         |
| CR03 |                      |         |

> **Guía**

> Una funcionalidad podrá ser rechazada cuando ocurra cualquiera de las siguientes situaciones:

> No cumple con uno o más requerimientos funcionales aprobados.

> Incumple una o más reglas de negocio definidas.

> Presenta errores críticos que impidan la operación normal.

> No satisface los criterios de aceptación establecidos.

> No cumple los requerimientos no funcionales acordados.

> Presenta vulnerabilidades de seguridad consideradas críticas o altas.

> La evidencia de pruebas es insuficiente o inconsistente.

> Existen discrepancias entre el comportamiento esperado y el comportamiento observado.

---