## DEFINICIÓN DE REQUERIMIENTOS

> 02_ReqsDefinition.md

---

### Diccionario de Lenguaje de Negocio (Opcional)

> Términos de alta relevancia dentro del contexto del negocio que participan en los procesos, funcionalidades y reglas descritas en este documento.

| Término | Definición | Observaciones |
| ------- | ---------- | ------------- |
| Movimiento financiero | Registro de entrada o salida de dinero asociado a una operación personal. | Puede ser ingreso o egreso. |
| Ingreso | Entrada de dinero al flujo financiero personal. | Aumenta el saldo disponible. |
| Egreso | Salida de dinero del flujo financiero personal. | Disminuye el saldo disponible. |
| Saldo disponible | Cantidad resultante de la diferencia entre ingresos y egresos registrados. | Se calcula a partir de los movimientos. |
| Transacción | Registro completo de un movimiento con sus datos básicos. | Incluye monto, tipo, fecha y descripción. |

---

### Matriz de Requerimientos Funcionales

> Flujo(s) e interacción de funciones, procedimientos y/o acciones requeridas para la solución.

> **Guía**

> **ID:** Nomenclatura Ejemplo `RF00`. | 
> **Nombre Módulo / Elemento:** Nombre del módulo, proceso, pantalla, integración o componente involucrado. |

> **Preexistencia y Funcionamiento Actual:** Descripción del comportamiento actual o referencia al sistema existente. |
> **Descripción:** Acción (Integrar / Modificar / Eliminar), indicando propósito(s), función(es) y objetivo(s).

> **Clasificación:** Nivel de impacto o complejidad (`Bajo`, `Medio`, `Alto`).

| ID   | Nombre Módulo / Elemento | Preexistencia y Funcionamiento Actual | Descripción                                                                          | Clasificación |
| ---- | ------------------------ | ------------------------------------- | ------------------------------------------------------------------------------------ | ------------- |
| RF01 | Registro de ingreso | El usuario registra movimientos manualmente. | Integrar un flujo para registrar un ingreso personal con monto, fecha y descripción. | Medio |
| RF02 | Registro de egreso | El usuario registra movimientos manualmente. | Integrar un flujo para registrar un egreso personal con monto, fecha y descripción. | Medio |
| RF03 | Consulta de saldo disponible | El usuario calcula el saldo manualmente. | Modificar la solución para mostrar el saldo disponible actualizado según los movimientos registrados. | Alto |
| RF04 | Historial de movimientos | El usuario lleva un registro manual o informal. | Integrar una vista con el listado de ingresos y egresos registrados, ordenados por fecha o más recientes. | Medio |
| RF05 | Validación de datos | No existe validación formal en el proceso manual. | Modificar el flujo para exigir monto, tipo, fecha y descripción antes de guardar un movimiento. | Medio |

---

### Matriz de Reglas de Negocio

> Restricciones, validaciones y lógicas obligatorias que deben cumplirse dentro de la operación del negocio.

> **Guía**

> **ID:** Nomenclatura `NE00`. |
> **Nombre de la Regla:** Título representativo de la regla de negocio. |
> **Descripción Detallada de la Regla:** Explicación completa de la restricción, validación o comportamiento obligatorio.

| ID   | Nombre de la Regla | Descripción Detallada de la Regla |
| ---- | ------------------ | --------------------------------- |
| NE01 | Movimiento con datos completos | Todo movimiento debe incluir tipo, monto, fecha y descripción. |
| NE02 | Cálculo del saldo | El saldo disponible se calcula como la suma de ingresos menos la suma de egresos registrados. |
| NE03 | Fecha obligatoria | No se permitirá registrar un movimiento sin una fecha válida. |
| NE04 | Tipo de movimiento definido | El tipo de movimiento solo podrá ser ingreso o egreso. |
| NE05 | Descripción requerida | La descripción debe ser obligatoria para cada movimiento registrado. |

---

### Matriz de Requerimientos No Funcionales

> Características de calidad y restricciones técnicas que debe cumplir la solución.

> **Guía**

> Categoria: Disponibilidad | Ejemplo :Tiempo de actividad esperado (*uptime*) y ventanas de mantenimiento.   

> Categoria: Escalabilidad: | Ejemplo :Capacidad para soportar el crecimiento de usuarios o carga de trabajo.  

> Categoria: Seguridad: | Ejemplo :Protección de la confidencialidad, integridad y disponibilidad de la información y del sistema. 

> Categoria: Trazabilidad: | Ejemplo : Monitoreo, auditoría y registro de eventos, transacciones y cambios relevantes.                

| Categoría | Requerimiento |
| --------- | ------------- |
| Disponibilidad | La solución debe estar disponible para el uso habitual del usuario sin interrupciones considerables. |
| Escalabilidad | Debe soportar un volumen pequeño o medio de movimientos personales sin degradación visible. |
| Seguridad | Debe proteger la información financiera y evitar acceso no autorizado. |
| Trazabilidad | Debe registrar operaciones relevantes para auditoría y seguimiento del historial. |

#### Disponibilidad

> Definir porcentaje de disponibilidad esperado.
> Especificar horarios permitidos para mantenimiento.

- Pendiente por confirmar: nivel de disponibilidad requerido para uso personal.
- Pendiente por confirmar: horario o ventanas de mantenimiento, si aplica.

#### Escalabilidad

> Definir capacidad proyectada de crecimiento.
> Considerar usuarios concurrentes, volumen de transacciones y almacenamiento.

- Pendiente por confirmar: número esperado de movimientos y crecimiento de registros.
- Pendiente por confirmar: si la solución será local o distribuida.

#### Seguridad

> Definir autenticación, autorización, cifrado y gestión de accesos.
> Considerar cumplimiento normativo y protección de datos.

- Pendiente por confirmar: autenticación y nivel de protección del almacenamiento.
- Pendiente por confirmar: si se requiere cifrado de datos personales.

#### Trazabilidad

> Registrar eventos relevantes para auditoría.
> Mantener histórico de operaciones y cambios realizados.

- Pendiente por confirmar: qué eventos deben registrarse en el historial de auditoría.
- Pendiente por confirmar: duración de retención de registros.

---