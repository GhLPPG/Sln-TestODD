# FORMATO ÚNICO DE REQUERIMIENTOS Y DISEÑO DE SOLUCIÓN

> "00_FURDS.md" - 
>  Formato Único de Requerimientos y Diseño de Solución

------------------------------------------------------------

## HISTORIA DE USUARIO
> 01_UserHistory.md
### HISTORIA Y PROPOSITO
- **Quien**: Persona que administra sus finanzas personales.
  **Que quiere**: Registrar sus ingresos y egresos para conocer su saldo disponible.
  **Para que**: Controlar mejor sus gastos y mantener una visión clara de su situación financiera.

#### Mapeo del Proceso Actual (**)
1. La persona recibe dinero o realiza un gasto.
2. Registra el movimiento de forma manual, por ejemplo, en una nota o libreta.
3. Calcula su saldo revisando los registros disponibles.
4. Puede olvidar movimientos o perder visibilidad de sus gastos acumulados.

### OBJETIVO PRINCIPAL
- Permitir al usuario registrar ingresos y egresos personales y conocer el saldo disponible en tiempo real para controlar mejor sus finanzas.

#### Propuesta General de Solución (**)
- Desarrollar una aplicación simple para registrar cada movimiento con tipo, monto, fecha y descripción, mostrando el saldo actual y un historial de transacciones.

### DETERMINAR ALCANCE
- Incluye: registro de ingresos y egresos, visualización del saldo disponible, listado de movimientos con fecha, monto, tipo y descripción.
- Excluye: presupuestos automáticos, reportes avanzados, categorías complejas, exportación de datos, autenticación multiusuario, integración bancaria y análisis financiero avanzado.



------------------------------------------------------------
## DEFINICIÓN DE REQUERIMIENTOS
> 02_ReqsDefinition.md
### Diccionario de Lenguaje de Negocio (Opcional)
- Movimiento financiero: registro de entrada o salida de dinero asociado a una operación personal.
- Ingreso: entrada de dinero al flujo financiero personal.
- Egreso: salida de dinero del flujo financiero personal.
- Saldo disponible: diferencia entre ingresos y egresos registrados.
- Transacción: registro completo de un movimiento con monto, tipo, fecha y descripción.

### Matriz de Requerimientos Funcionales
| ID | Nombre Módulo / Elemento | Preexistencia y Funcionamiento Actual | Descripción | Clasificación |
| --- | --- | --- | --- | --- |
| RF01 | Registro de ingreso | El usuario registra movimientos manualmente. | Integrar un flujo para registrar un ingreso personal con monto, fecha y descripción. | Medio |
| RF02 | Registro de egreso | El usuario registra movimientos manualmente. | Integrar un flujo para registrar un egreso personal con monto, fecha y descripción. | Medio |
| RF03 | Consulta de saldo disponible | El usuario calcula el saldo manualmente. | Mostrar el saldo disponible actualizado según los movimientos registrados. | Alto |
| RF04 | Historial de movimientos | El usuario lleva un registro manual o informal. | Integrar una vista con el listado de ingresos y egresos registrados. | Medio |
| RF05 | Validación de datos | No existe validación formal en el proceso manual. | Exigir monto, tipo, fecha y descripción antes de guardar un movimiento. | Medio |

### Matriz de Reglas de Negocio
| ID | Nombre de la Regla | Descripción Detallada de la Regla |
| --- | --- | --- |
| NE01 | Movimiento con datos completos | Todo movimiento debe incluir tipo, monto, fecha y descripción. |
| NE02 | Cálculo del saldo | El saldo disponible se calcula como la suma de ingresos menos la suma de egresos registrados. |
| NE03 | Fecha obligatoria | No se permitirá registrar un movimiento sin una fecha válida. |
| NE04 | Tipo de movimiento definido | El tipo de movimiento solo podrá ser ingreso o egreso. |
| NE05 | Descripción requerida | La descripción debe ser obligatoria para cada movimiento registrado. |

### Matriz de Requerimientos No Funcionales
| Categoría | Requerimiento |
| --------- | ------------- |
| Disponibilidad | La solución debe estar disponible para el uso habitual del usuario sin interrupciones considerables. |
| Escalabilidad | Debe soportar un volumen pequeño o medio de movimientos personales sin degradación visible. |
| Seguridad | Debe proteger la información financiera y evitar acceso no autorizado. |
| Trazabilidad | Debe registrar operaciones relevantes para auditoría y seguimiento del historial. |
#### Disponibilidad 
- Pendiente por confirmar: nivel de disponibilidad requerido para uso personal.
- Pendiente por confirmar: horario o ventanas de mantenimiento, si aplica.
#### Escalabilidad
- Pendiente por confirmar: número esperado de movimientos y crecimiento de registros.
- Pendiente por confirmar: si la solución será local o distribuida.
#### Seguridad
- Pendiente por confirmar: autenticación y nivel de protección del almacenamiento.
- Pendiente por confirmar: si se requiere cifrado de datos personales.
#### Trazabilidad
- Pendiente por confirmar: qué eventos deben registrarse en el historial de auditoría.
- Pendiente por confirmar: duración de retención de registros.



------------------------------------------------------------
## CRITERIOS DE ACEPTACIÓN
>  03_AcceptCriteria.md
### Escenarios "Happy Path"
### Escenarios "UnHappy Path">
### Criterios de Rechazo



------------------------------------------------------------
## DISEÑO TÉCNICO Y ESPECIFICACIONES DE LA SOLUCIÓN
> 04_TecDesign.md

### Contexto
#### Introducción
#### Interoperabilidad| 

### Lineamientos de Diseño y Arquitectura de Código
#### Tecnologías
#### Arquitectura
##### Separación de Responsabilidades por Capas

### Diseño UI
#### Modo de Creación de Controles
#### Estilo de Controles

### Aspectos Técnicos
#### [Datos]
##### Modelado y Almacenamiento
#### [Configuración]
###### Variables y Parámetros
#### [Interacción UI]
#### Diseño Visual y Navegación
#### [Seguridad]
##### Controles de Seguridad
#### [Manejo de Excepciones]
###### Estrategia de Gestión de Errores
#### [Procesos BackEnd]
###### Procesamiento y Servicios
#### [Integraciones Externas]
##### Integraciones con Terceros

### Flujo de Funcionamiento General
##### Diagrama de Flujo (Opcional)

### Avances
#### Estructura Actual de la Solución
#### Flujo del Funcionamiento Actual Implementado



------------------------------------------------------------
## PLAN DE DESARROLLO
> 05_PlanDev.md

### Plan de Desarrollo (Desarrollo)
#### Actividades
### Consideraciones
### Criterios para Inicio de Desarrollo
### Aprobación Técnica