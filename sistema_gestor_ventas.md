
# Sistema Gestor de Ventas 

**Asignatura**: Bases de Datos I (FaCENA-UNNE)

**Integrantes**:
 - Altamirano Adrian Axel  
 - Cardozo Carola Guillermina
 - Czachurski Veronica Camila 
 - Marano Bruno Joel

**Año**: 2024

## CAPÍTULO I: INTRODUCCIÓN

### Caso de estudio: Sistema Gestor de Ventas

El tema de este proyecto es el desarrollo de una base de datos para un sistema gestor de ventas. Este sistema tiene como objetivo optimizar la gestión y el control de las ventas de productos, así como la compra de insumos a proveedores, con la finalidad de mejorar la administración de un negocio. La base de datos está diseñada para manejar la información relacionada con clientes, proveedores, productos, compras, ventas, usuarios, y las transacciones financieras involucradas. De esta manera, el sistema ofrecerá una solución integral para la organización y el manejo eficiente de un negocio dedicado a la venta de productos. 

### Definición o planteamiento del problema

En la actualidad, muchos pequeños y medianos negocios enfrentan dificultades para gestionar de manera eficiente sus procesos de ventas y compras. El control manual o mediante sistemas no integrados genera retrasos en las transacciones, errores en la gestión de inventarios, dificultades para llevar un registro claro de los pagos, y falta de visibilidad en el estado de las ventas y compras. Estos problemas afectan directamente la rentabilidad del negocio y la calidad del servicio al cliente.

Este proyecto busca resolver la ineficiencia en la gestión de ventas y compras en los negocios. La falta de una base de datos estructurada y un sistema que permita administrar de manera centralizada las relaciones con clientes, proveedores, productos, facturación, y métodos de pago, genera un entorno caótico y poco productivo. Para abordar este problema, se propone desarrollar un sistema gestor de ventas que centralice todos estos procesos y facilite el acceso a la información de manera rápida y confiable.

Tomando en consideración estos planteamientos, nos hemos planteado tres interrogantes guías para la construcción de nuestro sistema en cuestión:
- ¿Cuáles son las principales ineficiencias en los procesos de ventas y compras que enfrentan los pequeños y medianos negocios?
- ¿Cómo puede un sistema gestor de ventas mejorar la rentabilidad y la calidad del servicio al cliente?
- ¿Qué características debe incluir un sistema gestor de ventas para ser efectivo en la administración de relaciones con clientes y proveedores?

### Objetivo del Trabajo Práctico

Este trabajo tiene como objetivo general diseñar y desarrollar una base de datos que permita gestionar de manera eficiente las ventas y compras en un negocio, proporcionando un sistema robusto que permita llevar el control de los productos, clientes, proveedores, usuarios, y métodos de pago, así como la emisión de tickets y facturas.

## Objetivo General
El objetivo general de este proyecto es desarrollar una base de datos relacional que integre los procesos de compra y venta de productos (registro de ambas transacciones con informacion relevante para el negocio), optimizando la gestión del negocio mediante un sistema centralizado que permita el control eficiente de los recursos y transacciones.

## Objetivos Específicos
1. Diseñar una base de datos que contenga todas las entidades y relaciones necesarias para gestionar el ciclo de ventas y compras de productos, incluyendo entidades como Cliente, Proveedor, Producto, Venta, Compra, Factura, y Métodos de Pago.
2. Implementar un modelo de datos que permita gestionar de manera eficiente el inventario de productos, con información sobre precios de compra, precios de venta, categorías, y proveedores.
3. Desarrollar un sistema para gestionar las ventas que permita registrar y procesar las transacciones de manera automatizada, generando facturas y tickets para los clientes, y llevando un control claro de los métodos de pago utilizados.
4. Optimizar el control de usuarios y roles dentro del sistema, permitiendo la asignación de diferentes niveles de acceso según el rol del usuario (administrador, vendedor, etc.).
5. Facilitar el seguimiento de compras realizadas a proveedores, con el objetivo de mantener un inventario actualizado y minimizar el riesgo de desabastecimiento.
6. Implementar una solución que permita la emisión de reportes sobre ventas, compras, y otros indicadores clave de rendimiento para el negocio.


### Alcance del proyecto

Este trabajo abarca el diseño, implementación y documentación de una base de datos relacional que permitirá gestionar de manera eficiente las operaciones de ventas y compras de productos. El sistema está diseñado para ser utilizado por usuarios con diferentes roles (administradores, vendedores, supervisor), cada uno con accesos y funcionalidades específicas. La solución proporcionará una interfaz centralizada para gestionar clientes, proveedores, productos, inventarios, métodos de pago y facturación, cubriendo todos los aspectos críticos de la operación de un negocio dedicado a la venta de productos.

## CAPITULO II: MARCO CONCEPTUAL O REFERENCIAL

La realización de un sistema de gestión implica considerar diversos aspectos que son fundamentales para su efectividad y utilidad. Al ser un sistema genérico, es probable que incluya funciones que, aunque consideradas relevantes por el grupo de desarrolladores, no resulten efectivas o necesarias para ciertos potenciales clientes. Esta variabilidad en las necesidades de los usuarios subraya la importancia de un diseño flexible y adaptable que se ajuste a las particularidades de cada negocio.

El registro de cada una de las acciones dentro de un negocio es crucial no solo para cumplir con requisitos legales, sino también para facilitar la toma de decisiones informadas. Un sistema de gestión que integre eficientemente todas las operaciones de ventas y compras permite mantener un historial detallado de las transacciones, lo cual es vital para auditar y evaluar el rendimiento del negocio. Este tipo de información es esencial para identificar áreas de mejora y para la planificación estratégica a largo plazo.

Las innovaciones tecnológicas juegan un papel fundamental en la creación de sistemas de gestión efectivos, especialmente en el ámbito empresarial. La incorporación de herramientas digitales en los procesos de gestión permite a los negocios optimizar su funcionamiento y mejorar la eficiencia operativa. Estas tecnologías no solo facilitan la automatización de tareas repetitivas, sino que también mejoran la precisión y la velocidad en la recopilación y el análisis de datos, lo cual es indispensable en un entorno empresarial en constante cambio y creciente competitividad.

En el contexto de la realización de un sistema motor de base de datos, es esencial incluir una serie de características que garanticen un funcionamiento óptimo y una gestión eficaz de la información. 

## TEMA 1: Manejo de permisos a nivel de usuarios de base de datos

Una consideración clave es el manejo de permisos a nivel de usuarios de base de datos. Implementar un sistema de gestión de accesos es fundamental para asegurar que solo el personal autorizado pueda acceder y manipular información sensible. Esto no solo protege los datos críticos de la empresa, sino que también contribuye a la creación de un entorno de trabajo más seguro y confiable, donde se minimizan los riesgos de fraudes o errores por parte de usuarios no autorizados.

El manejo de permisos a nivel de usuarios en bases de datos es crucial para garantizar la seguridad y la integridad de la información. Los sistemas de gestión de bases de datos como SQL Server permiten definir roles y permisos que regulan el acceso a los datos y las operaciones que los usuarios pueden realizar. Esto incluye la posibilidad de establecer permisos específicos para diferentes roles, lo que facilita la adaptación de la seguridad a las necesidades cambiantes del negocio.

En SQL Server, la administración de permisos se realiza a nivel de servidor mediante inicios de sesión y roles de servidor, y a nivel de base de datos a través de usuarios de base de datos y roles de base de datos. Se admiten inicios de sesión basados en autenticación de Windows y autenticación de SQL Server. Los inicios de sesión conceden acceso a una base de datos mediante la creación de un usuario de base de datos en una base de datos y la asignación de ese usuario de base de datos para iniciar sesión.  Existen dos tipos de roles de base de datos: los fijos y los definidos por el usuario. Los roles fijos de base de datos son un conjunto de roles preconfigurados que proporcionan un práctico grupo de permisos de nivel de base de datos. Por otro lado, los roles definidos por el usuario son aquellos que pueden ser creados por los usuarios con el permiso CREATE ROLE, permitiendo la representación de grupos de usuarios con permisos comunes. Normalmente, los permisos se conceden o deniegan a todo el rol, lo que simplifica la administración y supervisión de permisos.

Para este caso en particular se han creado roles específicos y luego creado los usuarios:
-- Paso 1: Creación de roles
```
CREATE ROLE AdminRol;
CREATE ROLE ReadOnlyRol;

GRANT ALTER, CONTROL, DELETE, INSERT, SELECT, UPDATE TO AdminRol;
GRANT SELECT TO ReadOnlyRol;
```
-- Paso 2: Creación de los usuarios
```
CREATE LOGIN admin_user WITH PASSWORD = 'AdminPassword123';
CREATE USER admin_user FOR LOGIN admin_user;

CREATE LOGIN read_user WITH PASSWORD = 'ReadPassword123';
CREATE USER read_user FOR LOGIN read_user;
```
![creacion de usuarios](https://github.com/user-attachments/assets/9d3d31aa-4741-4095-b6d6-a89b9df799fd)

-- Paso 3: Asignación de permisos de solo lectura para algunas tablas para el rol ReadOnlyRol
-- Permisos de lectura para la tabla Categoria
```
GRANT SELECT ON Categoria TO ReadOnlyRol;

-- Permisos de lectura para la tabla Rol
GRANT SELECT ON Rol TO ReadOnlyRol;

-- Permisos de lectura para la tabla Negocio
GRANT SELECT ON Negocio TO ReadOnlyRol;

-- Permisos de lectura para la tabla Metodo_Pago
GRANT SELECT ON Metodo_Pago TO ReadOnlyRol;

-- Permisos de lectura para la tabla Estado
GRANT SELECT ON Estado TO ReadOnlyRol;

-- Paso 3: Asignación de roles a los usuarios
```
```
-- Asignación de rol de administrador al usuario admin_user
EXEC sp_addrolemember 'AdminRol', 'admin_user';

-- Asignación de rol de solo lectura al usuario read_user
EXEC sp_addrolemember 'ReadOnlyRol', 'read_user';
```
Verificación de acciones de consultas de lectura y escritura (INSERT, UPDATE, DELETE) en las tablas de la base de datos utilizando el usuario admin_user:
```
/*Select con usuario de admin_user*/
SELECT * FROM Categoria;

/*Insert*/
INSERT INTO dbo.Categoria (nombre) VALUES ('Sopas instantaneas');
```
![insert de admin](https://github.com/user-attachments/assets/8abf85f1-ed07-4dd2-89b6-c2fc4db9a1a6)
```
/*Update*/
UPDATE dbo.Categoria SET nombre = 'Sopas' WHERE id_categoria = 11;

/*Delete*/
DELETE FROM dbo.Categoria WHERE id_categoria = 11;
```
Las diferentes acciones con dicho usuario creado no se verifican restricciones ni errores existentes al realizar diversas acciones en cualquier tabla de la base de datos. Al igual que al momento de ejecutar un procedimiento almacenado para una de las tablas, se puede crear el mismo como así también realizar diferentes inserciones, para la prueba de dicho procedimiento almacenado.
```
/* REGISTRO DE CATEGORIA */
GO
CREATE PROC SP_REGISTROCATEGORIA
(
@id_categoria int,
@nombre varchar(50),
@Respuesta int output,
@Mensaje varchar(200) output
)
AS
BEGIN
	SET @Respuesta = 0
	SET @Mensaje = ''

	-- Para validar que no exista otra categoria con mismo nombre
	IF EXISTS(SELECT * FROM dbo.categoria WHERE nombre = @nombre)
	BEGIN
        SET @Mensaje = 'Categoría ya existente.'
	PRINT @Mensaje
        RETURN
    END

	INSERT INTO dbo.categoria (nombre) VALUES
		(@nombre)

	SET @Respuesta = SCOPE_IDENTITY(); -- Para realizar la carga del id con el ultimo generado
	SET @Mensaje = 'Categoría creada exitosamente.'
	PRINT @Mensaje
END
```
Luego se han concedido permisos de ejecución del procedimiento para ambos usuarios anteriormente creados:
```
GRANT EXECUTE ON SP_REGISTROCATEGORIA TO AdminRol;
GRANT EXECUTE ON SP_REGISTROCATEGORIA TO ReadOnlyRol;
```
El usuario con permisos de administrador deberá poder insertar datos, mientras que el usuario de sólo lectura no debería poder hacerlo a menos que se le otorguen permisos específicos. Sin embargo, tomando en consideración las restricciones creadas antes sobre la tabla de categoría, se produzca un error debido a la falta de permisos para el usuario de lectura.

![procedimiento](https://github.com/user-attachments/assets/a18f203d-004f-453a-944f-a5afb9f039fe)

Sin embargo, si intentamos realizar un INSERT a la tabla con el usuario read_user, se mostrará un mensaje de error indicando que no se tienen permisos para agregar datos a la tabla, debido a las restricciones previamente definidas para dicho usuario. El usuario efectivamente puede realizar un SELECT, pero no podrá realizar un DELETE, INSERT, o UPDATE, ya que, por defecto, cuando se crea un usuario de base de datos, el único permiso asignado es la instrucción SELECT.

![permiso denegado](https://github.com/user-attachments/assets/009deb1a-14ee-4ce3-ae6d-d9fc32bbc2a4)

La gestión adecuada de permisos y roles en SQL Server es crucial para garantizar la seguridad y el control de acceso a los datos. Utilizando roles fijos y definidos por el usuario, se puede simplificar la administración de permisos, asegurando que cada usuario tenga el nivel adecuado de acceso a la información según sus necesidades y responsabilidades.

## TEMA 2: PROCEDIMINETOS Y FUNCIONES ALMACENADAS (Bruno)

Una de estas características son los procedimientos almacenados, que permiten la ejecución de operaciones complejas en el servidor de forma eficiente. Al integrar estos procedimientos, se reduce significativamente la posibilidad de cometer errores en la incorporación de la información, garantizando que los datos sean introducidos de manera consistente y precisa. Esto no solo optimiza la gestión de las transacciones, sino que también asegura la integridad y fiabilidad de la información, aspectos críticos para la toma de decisiones informadas en el ámbito empresarial.

### Procedimientos Almacenados en SQL Server
Un procedimiento almacenado en SQL Server es un conjunto de instrucciones Transact-SQL o un método CLR (Common Language Runtime) de .NET que se almacena y ejecuta en el servidor. Los procedimientos pueden aceptar parámetros de entrada y devolver valores a través de parámetros de salida. También pueden realizar operaciones en la base de datos, como insertar, actualizar o eliminar datos, y devolver un valor de estado que indica si la operación fue exitosa o si hubo errores.
 
### Ventajas de los Procedimientos Almacenados

1.	Reducción del tráfico de red: Al ejecutar el código en el servidor, solo se envía una llamada a la base de datos, lo que disminuye el tráfico de red.

2.	Mayor seguridad: Los procedimientos almacenados permiten ejecutar operaciones sin otorgar permisos directos sobre los objetos de la base de datos, mejorando la seguridad. Además, pueden proteger contra ataques de inyección de SQL.

3.	Reutilización del código: Se reduce la duplicación de código, lo que facilita su mantenimiento y asegura consistencia.

4.	Mantenimiento más sencillo: Los cambios en la lógica de la base de datos solo requieren modificaciones en los procedimientos, sin necesidad de actualizar las aplicaciones cliente.

5.	Rendimiento mejorado: Los procedimientos se compilan la primera vez que se ejecutan, y su plan de ejecución puede ser reutilizado, mejorando el rendimiento en ejecuciones posteriores.

### Tipos de Procedimientos Almacenados

1.	Definidos por el Usuario: Son procedimientos creados por el usuario para realizar tareas específicas. Pueden ser escritos en Transact-SQL o como métodos CLR.

2.	Temporales: Son procedimientos almacenados en la base de datos temporal tempdb. Pueden ser locales (visibles solo en la conexión actual) o globales (visibles para todos los usuarios hasta que termine la última sesión).

3.	Del Sistema: Estos procedimientos son proporcionados por SQL Server para realizar tareas de administración y mantenimiento. Están disponibles en el esquema sys y no deben confundirse con los procedimientos definidos por el usuario.

4.	Extendidos Definidos por el Usuario: Permiten crear rutinas externas en lenguajes como C. Estos procedimientos se almacenan como bibliotecas DLL que se cargan dinámicamente en el servidor. Este tipo de procedimiento ya no se encuentra en SQL SERVER.

### Sintaxis básica para crear un procedimiento almacenado:

![sintaxis procedimientos almacenados](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/sintaxsis-procedimientos.png)

Ejemplo de nuestra base de datos:

![ejemplo procedimientos almacenados](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/ejemplo-procediminetos.png)

En este ejemplo, se puede observar un procedimiento almacenado encargado de dar de alta a un proveedor. Este procedimiento recibe parámetros, indicados con el símbolo @, que se utilizan como datos para crear el proveedor en la base de datos.

## Funciones Almacenadas

Una función es un conjunto de sentencias que operan como una unidad lógica.

Una función tiene un nombre, retorna un valor de salida y, opcionalmente, puede aceptar parámetros de entrada. Las funciones de SQL Server no pueden modificarse, mientras que las funciones definidas por el usuario sí pueden serlo.

SQL Server ofrece varios tipos de funciones para realizar distintas operaciones, que se pueden clasificar de la siguiente manera:

1) Funciones de agregado:

Estas funciones realizan operaciones que combinan varios valores y devuelven un único valor. Algunos ejemplos son:

•	COUNT

•	SUM

•	MIN

•	MAX

2) Funciones escalares:

Las funciones escalares toman un solo valor de entrada y retornan un único valor. Estas se pueden agrupar en las siguientes categorías:

•	Funciones de configuración: Retornan información sobre la configuración del servidor.

•	Funciones de cursores: Proporcionan información sobre el estado de un cursor.

•	Funciones de fecha y hora: Operan con valores de tipo datetime y smalldatetime. Reciben un parámetro de tipo fecha y hora y retornan un valor de tipo cadena, numérico o de fecha y hora.

•	Funciones matemáticas: Realizan operaciones numéricas, geométricas y trigonométricas.

•	Funciones de metadatos: Proporcionan información sobre las bases de datos y los objetos en el sistema.

•	Funciones de seguridad: Devuelven información relacionada con los usuarios y las funciones de seguridad.

•	Funciones de cadena: Operan con valores de tipo char, varchar, nchar, nvarchar, binary y varbinary, y devuelven un valor de tipo cadena o numérico.

•	Funciones del sistema: Proporcionan información sobre las opciones, objetos y configuraciones del sistema.

•	Funciones estadísticas del sistema: Retornan información relacionada con el rendimiento del sistema.

•	Funciones de texto e imagen: Realizan operaciones con valores de tipo text o image y retornan información relacionada con ellos.

3) Funciones de conjuntos de filas:

Estas funciones devuelven conjuntos de registros.

Las funciones del sistema se pueden utilizar en cualquier lugar donde se permita una expresión dentro de una sentencia SELECT.

Sintaxis de las funciones almacenadas

![sintaxis funciones almacenadas](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/sintaxis-funciones.png)

Ejemplo en nuestra base de datos de funciones

![sintaxis funciones almacenadas](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/ejemplo-funciones.png)

Básicamente para terminar podemos decir que los procedimientos almacenados en SQL son más fáciles de crear, mientras que las funciones tienen una estructura más rígida y admiten menos cláusulas y funcionalidades. Sin embargo, una ventaja de las funciones es que sus resultados se pueden usar fácilmente, como, por ejemplo, al concatenar una función con una cadena. En cambio, la manipulación de los resultados de un procedimiento almacenado es más compleja.

En una función escalar, solo se puede devolver un valor, mientras que en un procedimiento almacenado se pueden devolver múltiples valores. No obstante, para utilizar las variables de salida en un procedimiento almacenado, es necesario declarar variables fuera del procedimiento y luego invocar el procedimiento.

Además, no se pueden invocar procedimientos dentro de una función, pero en un procedimiento almacenado sí se pueden invocar tanto funciones como otros procedimientos almacenados.



## TEMA 3: OPTIMIZACIÓN DE CONSULTAS A TRAVÉS DE ÍNDICES: (carola)

La optimización de consultas a través de índices es otra característica vital en un sistema de gestión de base de datos. Los índices permiten acelerar las búsquedas y el acceso a datos específicos, mejorando considerablemente el rendimiento del sistema. Esto es particularmente importante en negocios que manejan grandes volúmenes de información, donde el tiempo de respuesta puede afectar directamente la satisfacción del cliente y la eficiencia operativa.

### ¿Que son los indices?

Los índices son objetos que permiten el ordenamiento de los datos de las tablas según diversos criterios. Se dice que son objetos ya que poseen componentes independientes de una tabla, tienen su propia estructura y administración. Esto significa que los índices pueden ser creados, modificados o eliminados de forma independiente de la tabla principal. Además pueden tener propiedades, como el tipo de índice (agrupado o no agrupado), columnas incluidas, y opciones de almacenamiento.

Ocupan espacio físico en el disco menos que una tabla. La particularidad que tienen los índices es que crean una copia parcial de los datos de una tabla, es decir, realizan una copia solo de las columnas con las que fue creado el índice. Por ejemplo, si se crea un índice en la columna fecha_venta, este índice almacenará los valores de fecha_venta. 

Esta "copia parcial" mejora el rendimiento de las consultas al permitir el acceso a los datos relevantes sin necesidad de leer toda la tabla, lo cual es particularmente útil en tablas de gran tamaño. Por ejemplo, si queremos consultar las ventas realizadas en el año 2022, el motor de base de datos utilizará el índice en la columna fecha_venta para localizar rápidamente los registros de ese año. Al estar los datos ordenados dentro del índice, el motor puede acceder a los registros de 2022 de manera mucho más eficiente, evitando una búsqueda completa y acelerando así el tiempo de respuesta de la consulta.

### "Degrada performance en los INSERT, UPDATE y DELETE"
Cuando se crean índices en una tabla, cualquier operación que cambie los datos de esa tabla (como INSERT, UPDATE o DELETE) también tiene que actualizar el índice correspondiente. Esto es lo que provoca una disminución en el rendimiento para estas operaciones. 

### "Aumenta performance en SELECT"
Uno de los principales beneficios de los índices es que mejoran significativamente el rendimiento de las consultas de selección (SELECT). Esto se debe a que los índices permiten al motor de la base de datos acceder a los datos de forma mucho más eficiente que si tuviera que leer todas las filas en una tabla.

**Acceso más rápido a los datos:** Cuando se ejecuta una consulta SELECT que filtra o busca valores específicos, el índice ayuda a la base de datos a localizar rápidamente las filas que cumplen con los criterios de búsqueda, sin tener que revisar cada fila de la tabla. 

**Reducción de lecturas:** Los índices son particularmente útiles en tablas grandes porque evitan la necesidad de realizar un “escaneo completo de la tabla” table scan (lo cual implicaría leer cada fila de la tabla). Esto reduce drásticamente el número de lecturas necesarias y, en consecuencia, mejora el tiempo de respuesta.
Índices compuestos y consultas complejas: En consultas que filtran por múltiples columnas, un índice compuesto (un índice que incluye varias columnas) puede acelerar aún más la consulta. 

En SQL Server, los índices se organizan como árboles b.  Las páginas de un árbol b de índice se llaman nodos del índice. El nodo superior del árbol b se llama nodo raíz. El nivel inferior de los nodos del índice se denomina nodos hoja.  Los niveles del índice entre el nodo raíz y los nodos hoja se conocen en conjunto como niveles intermedios.  

### Se dividen en agrupados (Cluster) o no agrupados.
**Índice agrupado:** Los datos de la tabla están organizados según el índice. Solo puedes tener uno por tabla, ya que los datos no pueden almacenarse físicamente en más de un orden.

**Índice no agrupado:** Es como un índice de un libro. Los datos no están organizados físicamente según el índice, sino que el índice contiene punteros a la ubicación de los datos. Por lo tanto, puedes tener múltiples índices no agrupados en una tabla.

### Estructura de un índice agrupado

Un índice agrupado utiliza una estructura jerárquica de árbol, llamada árbol B (B-tree), para organizar los datos. 

**Nodos internos:** Son los nodos que sirven como guías en el árbol. Ayudan al sistema a encontrar rápidamente los datos que estás buscando.
**Nodos hoja:** Son los nodos al final de la estructura del árbol. Aquí es donde están almacenados los datos reales de la tabla subyacente.

En un índice agrupado, los nodos hoja son especiales porque contienen las páginas de datos reales de la tabla. Esto significa que los datos de la tabla se almacenan directamente en la estructura del índice agrupado, en lugar de apuntar a otra ubicación.

### ¿Qué son las páginas de datos?

Las páginas de datos son las unidades en las que los datos de la tabla se almacenan físicamente en el disco. Cada página de datos contiene varias filas de la tabla subyacente. Cuando un índice agrupado está creado en una tabla, los datos se organizan físicamente en las páginas de datos de acuerdo con el orden del índice agrupado.

### Diferencia con un índice no agrupado

En un índice no agrupado, los nodos hoja no contienen las páginas de datos reales. En su lugar, contienen punteros que apuntan a la ubicación de los datos en la tabla subyacente. Por eso, los índices no agrupados son menos eficientes cuando hay que acceder directamente a los datos, ya que necesitan una segunda búsqueda para localizar los datos en la tabla subyacente.

### ¿Qué es el plan de ejecución estimado?
El plan de ejecución estimado es un análisis previo que SQL Server hace para decidir cómo responderá a una consulta, evaluando las diferentes formas de acceder a los datos y calculando cuál es la más eficiente. SQL Server toma en cuenta factores como índices, estadísticas y el diseño de la consulta para elegir la estrategia óptima.

## TEMA 4: Backup y Restore

Además, la implementación de mecanismos de respaldo y restauración (backup y restore) es crucial para garantizar la protección de la información ante posibles pérdidas. Los sistemas de gestión de base de datos deben incluir procedimientos robustos que permitan realizar copias de seguridad periódicas de toda la información almacenada, así como la posibilidad de restaurar rápidamente los datos en caso de fallos técnicos, pérdidas de datos o ataques cibernéticos. Esta capacidad de recuperación no solo asegura la continuidad del negocio, sino que también proporciona tranquilidad a los gestores, sabiendo que la información crítica está protegida y puede ser recuperada cuando sea necesario.

El backup y restore de bases de datos son procedimientos críticos para garantizar la disponibilidad y la integridad de los datos. Los respaldos permiten realizar copias de la información que pueden ser restauradas en caso de fallos, asegurando la continuidad operativa en sistemas que dependen de datos accesibles y seguros.


### ¿Qué es un Backup?
El backup es una copia de datos que se almacena para restaurar y recuperar información en caso de una falla. Los respaldos de bases de datos permiten recuperar el estado exacto de la información en una fecha y hora específica, o incluso en un punto exacto en el tiempo.

### Tipos de Backup
    * Copia de seguridad completa: Representa la base de datos en su totalidad en el momento de finalización del respaldo. Es fundamental como base para otros tipos de backup, ya que contiene todos los datos de la base en un punto dado.
    * Copia de seguridad diferencial: Contiene únicamente los cambios realizados desde la última copia de seguridad completa. Es una opción eficiente para reducir el tiempo y el espacio requerido en el almacenamiento.
    * Log backup: Se enfoca en almacenar las transacciones realizadas desde el último respaldo completo o diferencial. Este tipo de backup permite una recuperación precisa hasta un punto específico en el tiempo y es ideal para minimizar la pérdida de datos recientes.

### Backup en Línea
El backup en línea es una técnica de respaldo que permite realizar una copia de seguridad mientras la base de datos está activa. Esto es crucial para sistemas que necesitan alta disponibilidad, ya que permite realizar respaldos sin interrumpir las operaciones.
Requisitos para el Backup en Línea
Para implementar un backup en línea, generalmente es necesario que la base de datos esté en un modo de recuperación completo o similar. Este modo registra todas las transacciones, permitiendo que los cambios puedan aplicarse de manera ordenada y consistente en caso de restauración.
Ventajas del Backup en Línea
    * Alta disponibilidad: Permite realizar respaldos sin necesidad de detener la base de datos, lo que evita interrupciones en las operaciones.
    * Recuperación a puntos específicos: Gracias a los logs, es posible restaurar la base de datos en un punto de tiempo específico.
    * Ideal para entornos críticos: Es una opción idónea para sistemas que requieren disponibilidad continua, como aquellos con operaciones 24/7.

### ¿Qué es el Restore?
Restore es el proceso de devolver una base de datos a un estado anterior utilizando una copia de respaldo. Es esencial para el mantenimiento de la integridad de los datos, ya que permite recuperar la información en caso de corrupción, errores o fallos del sistema.
Tipos de Restauración
    * Restauración completa: Usa un backup completo para devolver la base de datos al estado exacto en que estaba en el momento del respaldo.
    * Restauración diferencial: Aplica una copia de seguridad diferencial sobre un respaldo completo para actualizar la base de datos al estado más reciente sin aplicar cada cambio individual.
    * Restauración de logs de transacciones: Permite aplicar logs de transacciones para actualizar la base de datos a un punto específico entre el último respaldo completo y el momento deseado. Este tipo de restauración es clave para la recuperación de datos recientes.


Por último, un sistema de gestión de base de datos bien diseñado también debe considerar la escalabilidad y la adaptabilidad a futuro. A medida que el negocio crece y evoluciona, la base de datos debe ser capaz de adaptarse a nuevos requerimientos y manejar mayores volúmenes de información sin comprometer el rendimiento. Esto implica la necesidad de una planificación cuidadosa en la fase de diseño y la elección de tecnologías que permitan integrar nuevas funcionalidades con facilidad.

En conclusión, la implementación de un sistema gestor de base de datos efectivo es una inversión estratégica para cualquier negocio. Al incorporar innovaciones tecnológicas y considerar aspectos clave como procedimientos almacenados, manejo de permisos, optimización de consultas, y mecanismos de respaldo, las empresas pueden mejorar significativamente su eficiencia operativa, proteger su información crítica y tomar decisiones informadas que impulsen su crecimiento y competitividad en el mercado.


## CAPÍTULO III: METODOLOGÍA SEGUIDA

a) Cómo se realizó el Trabajo Práctico

Para llevar a cabo el trabajo, se siguió un procedimiento estructurado que permitió desarrollar y ejecutar cada una de las fases del proyecto de manera sistemática y ordenada.

Planificación: Se establecieron los objetivos y se definieron las fases necesarias para la ejecución. La planificación incluyó la elaboración de un cronograma para la organización temporal de cada actividad.

Desarrollo: Se implementaron las fases definidas en la planificación, con una especial atención en cada detalle técnico y metodológico, asegurando la integridad de los datos y la precisión en los resultados.

Validación: Una vez completadas las fases de desarrollo, se procedió a verificar los resultados mediante pruebas y evaluaciones para garantizar su fiabilidad y cumplimiento con los objetivos planteados.

Documentación: Se registraron los procedimientos seguidos y los resultados obtenidos en cada etapa del trabajo práctico, asegurando así la transparencia y trazabilidad del estudio.

b) Herramientas (Instrumentos y procedimientos)

Las herramientas y procedimientos empleados para la recopilación de información se basaron en fuentes digitales oficiales y accesibles públicamente, como se describe a continuación:

Instrumentos:

Búsqueda en sitios web oficiales: Se utilizaron motores de búsqueda académicos y bases de datos institucionales para obtener información precisa y actualizada.
Revisión de informes y documentos oficiales: Se consultaron informes, publicaciones, y documentos técnicos de organismos gubernamentales y otras entidades autorizadas para garantizar la veracidad de la información.
Procedimientos:

Acceso a fuentes confiables: Se llevaron a cabo búsquedas en sitios como páginas oficiales de organismos públicos, investigaciones académicas y otras plataformas de acceso libre, asegurándose de que toda la información fuera respaldada por fuentes autorizadas.
Filtrado de la información: Se filtraron los datos obtenidos, seleccionando solo aquellos que cumplían con los criterios de relevancia y actualidad establecidos al inicio del trabajo.
Con esta metodología, el trabajo se centró en obtener información confiable y verificada, lo que asegura que los resultados y conclusiones estén basados en hechos y datos sólidos.


## CAPÍTULO IV: DESARROLLO DEL TEMA / PRESENTACIÓN DE RESULTADOS 

## TEMA 1: Manejo de permisos a nivel de usuarios de base de datos

Primero se ha realizado la creación de los diferentes roles necesarios en la aplicación:

-- Paso 1: Creación de roles
```
CREATE ROLE AdminRol;
CREATE ROLE ReadOnlyRol;
```
Luego se han asignado los diferentes permisos para cada uno de los mismos
```
GRANT ALTER, CONTROL, DELETE, INSERT, SELECT, UPDATE TO AdminRol;
GRANT SELECT TO ReadOnlyRol;
```
Continuando por la creación de usuarios y por consiguiente la asignación de roles a los diferentes usuarios creados previamente.
Es necesario poder enteder que en este caso se han restringido cada una de las acciones del rol ReadOnly a algunas tablas para interactuar con las mismas al momento de probar su funcionamiento.
```
-- Permisos de lectura para la tabla Categoria
GRANT SELECT ON Categoria TO ReadOnlyRol;

-- Permisos de lectura para la tabla Rol
GRANT SELECT ON Rol TO ReadOnlyRol;

-- Permisos de lectura para la tabla Negocio
GRANT SELECT ON Negocio TO ReadOnlyRol;

-- Permisos de lectura para la tabla Metodo_Pago
GRANT SELECT ON Metodo_Pago TO ReadOnlyRol;

-- Permisos de lectura para la tabla Estado
GRANT SELECT ON Estado TO ReadOnlyRol;
```

Luego, ante la prueba de acciones con los diferentes usuarios existentes a fin de poder observar su funcionamiento, restricciones y permisos que tienen cada uno de los mismos:
```
/*Conexion a la base de datos utilizando el usuario admin_user. 
Verificacion de poder realizar consultas de lectura y escritura (INSERT, UPDATE, DELETE) en las tablas de la base de datos. */

/*Prueba de Select con usuario de admin*/
SELECT * FROM Categoria;

/*Insert prueba*/
INSERT INTO dbo.Categoria (nombre) VALUES ('Sopas instantaneas');

/*Update prueba*/
UPDATE dbo.Categoria SET nombre = 'Sopas' WHERE id_categoria = 11;

/*Delete prueba*/
DELETE FROM dbo.Categoria WHERE id_categoria = 11;
```

```
/*Conexion a la base de datos utilizando el usuario usuario read_only_user. 
Verificacion que solo puedes hacer consultas de lectura (SELECT) y que los comandos de escritura (INSERT, UPDATE, DELETE) están restringidos.*/
SELECT * FROM Categoria;

/*Insert prueba*/
INSERT INTO dbo.Categoria (nombre) VALUES ('Sopas instantaneas');

/*Update prueba*/
UPDATE dbo.Categoria SET nombre = 'Sopas instantáneas' WHERE id_categoria = 13;

/*Delete prueba*/
DELETE FROM dbo.Categoria WHERE id_categoria = 13;
```

Empleo de procedimiento almacenado para prueba de funcionamiento:

```
/* REGISTRO DE CATEGORIA */
GO
CREATE PROC SP_REGISTROCATEGORIA
(
@id_categoria int,
@nombre varchar(50),
@Respuesta int output,
@Mensaje varchar(200) output
)
AS
BEGIN
	SET @Respuesta = 0
	SET @Mensaje = ''

	-- Para validar que no exista otra categoria con mismo nombre
	IF EXISTS(SELECT * FROM dbo.categoria WHERE nombre = @nombre)
	BEGIN
        SET @Mensaje = 'Categoría ya existente.'
	PRINT @Mensaje
        RETURN
    END

	INSERT INTO dbo.categoria (nombre) VALUES
		(@nombre)

	SET @Respuesta = SCOPE_IDENTITY(); -- Para realizar la carga del id con el ultimo generado
	SET @Mensaje = 'Categoría creada exitosamente.'
	PRINT @Mensaje
END
```

El sistema de manejo de permisos a nivel de usuarios implementado ha demostrado ser una solución eficaz para controlar el acceso a los datos y operaciones dentro de la base de datos. La creación y asignación de roles como AdminRol y ReadOnlyRol ha permitido definir con claridad los niveles de acceso que cada tipo de usuario tiene, lo cual es fundamental para proteger la integridad de la información y para cumplir con requisitos de seguridad dentro de la aplicación.

El proceso de pruebas realizadas sobre los roles, especialmente la verificación de las restricciones de escritura para el rol de solo lectura (ReadOnlyRol), ha validado que los permisos están correctamente configurados. Los usuarios con rol AdminRol pueden realizar todas las operaciones necesarias, como la inserción, actualización y eliminación de registros, sin restricción alguna. En cambio, los usuarios con rol ReadOnlyRol se han limitado exclusivamente a realizar consultas de lectura (SELECT), lo que asegura que no puedan modificar ni eliminar datos sensibles de la base de datos.

Además, la implementación de procedimientos almacenados, como el que permite registrar nuevas categorías, añade una capa adicional de seguridad al sistema. Estos procedimientos almacenados no solo permiten realizar operaciones de manera eficiente, sino que también incluyen validaciones (como la comprobación de duplicados), lo cual previene posibles errores o inconsistencias en los datos.

El uso de procedimientos almacenados también facilita la centralización de la lógica de negocio en la base de datos, reduciendo la posibilidad de errores en el código de la aplicación y mejorando el rendimiento al evitar duplicación de lógica en diversas partes del sistema.

La correcta implementación de roles y permisos en la base de datos es esencial para mantener la seguridad y eficiencia en una aplicación. La división de responsabilidades entre los diferentes usuarios, junto con el uso de procedimientos almacenados para optimizar y proteger las operaciones, garantiza una gestión robusta y confiable de los datos. Este enfoque no solo mejora la seguridad, sino que también facilita la administración de la base de datos a medida que la aplicación crece y evoluciona.

## TEMA 2: Procediminetos y Funciones Almacenadas

### Procediminetos Almacenados

Segundo realizamos procediminetos alamacenados para insertar un proveedor.

```sql
/* REGISTRO DE CATEGORIA */
GO
CREATE PROC SP_REGISTROCATEGORIA
(
@id_categoria int,
@nombre varchar(50),
@Respuesta int output,
@Mensaje varchar(200) output
)
AS
BEGIN
	SET @Respuesta = 0
	SET @Mensaje = ''

	-- Para validar que no exista otra categoria con mismo nombre
	IF EXISTS(SELECT * FROM dbo.categoria WHERE nombre = @nombre)
	BEGIN
        SET @Mensaje = 'Categoría ya existente.'
	PRINT @Mensaje
        RETURN
    END

	INSERT INTO dbo.categoria (nombre) VALUES
		(@nombre)

	SET @Respuesta = SCOPE_IDENTITY(); -- Para realizar la carga del id con el ultimo generado
	SET @Mensaje = 'Categoría creada exitosamente.'
	PRINT @Mensaje
END
```

Segundo realizamos procediminetos alamacenados para insertar un proveedor.

```sql
--Insercion de proveedor
CREATE PROC dbo.SP_InsertarProveedor
@nombre VARCHAR(200),
@direccion VARCHAR(200),
@telefono VARCHAR(200),
@email VARCHAR(200),
@web VARCHAR(200),
@id_estado INT,
@Mensaje VARCHAR(200) output
AS
BEGIN
	SET @Mensaje= ''
	-- Para validar que no exista otro proveedor con mismo nombre
	IF EXISTS(SELECT * FROM dbo.Proveedor WHERE	nombre = @nombre)
	BEGIN
        SET @Mensaje = ' El provedor ya existe.'
		PRINT @Mensaje
        RETURN
    END

	-- Validamos si el estado proporcionado existe en la tabla Estado
	IF NOT EXISTS(SELECT * FROM dbo.Estado WHERE id_estado = @id_estado)
	BEGIN
		SET @Mensaje = 'El estado ingresado no existe'
		PRINT @Mensaje
		RETURN
	END


	INSERT INTO dbo.Proveedor (nombre,direccion,telefono,email,web,id_estado) VALUES
	 (@nombre,@direccion,@telefono,@email,@web,@id_estado)

	 SET @Mensaje = 'Proveedor creado exitosamente'
	 PRINT @Mensaje
END
```
Luego ejecutamos el procedimiento con la siguiente linea de codigo

```sql
exec dbo.SP_InsertarProveedor 'HUEVO CAMPO','juju 1123441','37944351565432','hue23vo@gmail.com','huevosadcampo.com',0,''
```
![ensercion proveedor](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/insercion-proveedor.png)

Como se puede apreciar en la imagen se agrego correctamente el proveedor

Ahora hacemos un procedimiento para eliminar un proveedor a traves de si id

```sql
--ELIMINAR PROVEDOR 
CREATE PROC SP_EliminarProveedor
    @id_proveedor INT
AS
BEGIN
    -- Declaramos una variable para verificar si el proveedor existe
    DECLARE @Existente INT;

    -- Verificamos si el proveedor existe
    SELECT @Existente = COUNT(*) 
    FROM Proveedor
    WHERE id_proveedor = @id_proveedor;

    IF @Existente = 0
    BEGIN
        PRINT 'El proveedor no existe';
        RETURN; -- Salimos si el proveedor no existe
    END

    -- Primero, eliminamos los productos que pertenecen a este proveedor
    DELETE FROM Producto
    WHERE id_proveedor = @id_proveedor;

    -- Luego, eliminamos el proveedor
    DELETE FROM Proveedor
    WHERE id_proveedor = @id_proveedor;

    PRINT 'Proveedor y productos relacionados eliminados correctamente.';
END;
```
```sql
EXEC SP_EliminarProveedor @id_proveedor = 4;
```
![eliminacion proveedor](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/eliminacion-proveedor.png)

Luego de ejecutarlo podemos apreciar que ya no existe en la base de datos

Tambien hacemos un procedimiento para modificar un proveedor

```sql
--Modificar un proveedor
CREATE PROCEDURE dbo.SP_ModificarProveedor
    @id_proveedor int,            -- ID del proveedor a modificar
    @nombre varchar(200),         -- Nuevo nombre
    @direccion varchar(200),      -- Nueva dirección
    @telefono varchar(200),       -- Nuevo teléfono
    @email varchar(200),          -- Nuevo email
    @web varchar(200),            -- Nueva web
    @id_estado int,               -- Nuevo estado
    @Mensaje varchar(200) output  -- Mensaje de salida
as
begin
    -- Inicializamos el mensaje de salida
    set @Mensaje = '';

    -- Verificamos si el proveedor existe
    if NOT EXISTS (select * from dbo.Proveedor where id_proveedor = @id_proveedor)
    begin
        -- Si no existe, retornamos un mensaje y terminamos el procedimiento
        set @Mensaje = 'Proveedor no encontrado.';
		print @Mensaje;
        return;
    end

    -- Validamos si el estado proporcionado existe en la tabla Estado
    if NOT EXISTS (select * from dbo.Estado where id_estado = @id_estado)
    begin
        -- Si el estado no existe, retornamos un mensaje y terminamos el procedimiento
        set @Mensaje = 'El estado proporcionado no existe.';
		print @Mensaje;
        return;
    end

    --Se actualiza el proveedor
    begin
        update dbo.Proveedor
        set
            nombre = @nombre,
            direccion = @direccion,
            telefono = @telefono,
            email = @email,
            web = @web,
            id_estado = @id_estado
        where id_proveedor = @id_proveedor;

        -- Asignamos el mensaje de éxito
        set @Mensaje = 'Proveedor actualizado exitosamente.';
		print @Mensaje;
    end 
    
end;
```
![eliminacion proveedor](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/eliminacion-proveedor.png)

```sql
exec dbo.SP_ModificarProveedor 1,'UNNE','peru 567','37944351565432','unne@gmail.com','huevosadcampo.com',1,''
```
Con esos parametros procedemos a modificar al proveedor con el id_proveedor = 1

![modificacion proveedor](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/modificacion-proveedor.png)

### Funciones Almacenadas

La siguiente funcion devuelve las edades de todos los usuarios de la base de datos

```sql
-- Creación de la función F_Calcular_Edad
create function F_Calcular_Edad
    -- Definición del parámetro de entrada: @fecha_nacimiento
    (@fecha_nacimiento varchar(100))
returns varchar(100)  -- La función devuelve un valor de tipo varchar
as
begin 
    -- Declaración de la variable @edad para almacenar la edad calculada
    declare @edad varchar(100)
    
    -- Asignación de un valor predeterminado a la variable @edad (en caso de error)
    set @edad = 'Fecha de nacimiento inválida'
    
    -- Verificación de que el parámetro @fecha_nacimiento es una fecha válida
    if (ISDATE(@fecha_nacimiento) = 1)
    begin
        -- Si la fecha es válida, se convierte @fecha_nacimiento a tipo datetime
        set @fecha_nacimiento = cast(@fecha_nacimiento as datetime)
        
        -- Calcula la edad restando el año de nacimiento al año actual y asigna el resultado a @edad
        set @edad = DATEDIFF(year, @fecha_nacimiento, GETDATE())
    end -- termina el bloque del if
    
    -- Devuelve la edad calculada (o el mensaje de error si la fecha es inválida)
    return @edad
end;
```
La ejecutamos simplemente usando la sentencia select

```sql
--Correcto funcionamiento de la funcion
select nombre, dbo.F_Calcular_Edad(fecha_nacimiento) as Edad from dbo.Usuario;
```

![edades usuarios](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/funcion-edad.png)


Aqui podemos comprarla con una opracion directa que hace lo mismo 
```sql
-- Operacion directa para calcular la edad de los usuarios
SELECT nombre, DATEDIFF(YEAR,fecha_nacimiento,GETDATE()) as Edad from dbo.Usuario
```

La siguiente funcion contabiliza cuantos usuarios estan activos y cuantos inactivos

```sql
--Funcion para contabilizar el numero de usuarios activo e inactivos
CREATE FUNCTION dbo.F_UsuariosActivosInactivos()
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @Activos INT, @Inactivos INT;

    -- Obtener el número de usuarios activos
    select @Activos = COUNT(*) FROM Usuario WHERE id_estado = 1;

    -- Obtener el número de usuarios inactivos
    select @Inactivos = COUNT(*) FROM Usuario WHERE id_estado = 0;

    -- Devolver el resultado como una cadena de texto
    return concat( 'Activos: ' , CAST(@Activos AS VARCHAR) , ' Inactivos: ' , CAST(@Inactivos AS VARCHAR));
end;
```
![contador usuarios activos](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/usuarios-activos.png)

Aqui la podemos comprar con una operacion directa
```sql
SELECT estado.nombre AS Estado, COUNT(u.DNI_usuario) AS Cantidad FROM dbo.Usuario u
JOIN 
    dbo.Estado estado ON u.id_estado = estado.id_estado
GROUP BY 
    estado.nombre;
```

Y por ultimo esta funcion se encarga de contar cuantas ventas tiene un cliente a traves de su dni

```sql
--Funcion para ver cuantas comprar tienen asociados los clientes	

CREATE FUNCTION F_CantidadVentasClientes
(
    @dni_cliente VARCHAR(200)
)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @cantidadVentas INT;
    DECLARE @nombre VARCHAR(200);

    -- Obtener la cantidad de ventas del cliente desde la tabla Venta
    SELECT @cantidadVentas = COUNT(*) FROM dbo.Venta
    WHERE DNI_cliente = @dni_cliente;

    -- Obtener el nombre del cliente desde la tabla Cliente
    SELECT @nombre = nombre FROM dbo.Cliente
    WHERE DNI_cliente = @dni_cliente;

    -- Devolver el resultado concatenado
    RETURN CONCAT(@nombre, ' - ', CAST(@cantidadVentas AS VARCHAR (20)), ' - ', 'Venta/s');
END;
```
![ventas clientes](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/ventas-clientes.png)

Y aqui la podemos comparar con una operacion directa

```sql
--Operacion directa para contar las ventas que tiene un cliente por su dni
select DNI_cliente, COUNT(cod_venta) as Ventas from dbo.Venta
where DNI_cliente = '89012345'
group by
DNI_cliente
```
![ventas clientes directa](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ProcedimientosYFuncionesAlmacenadas/venta-cliente-directa.png)

> Acceder a la siguiente carpeta para leer el script [scripts-> tema_2](script/Procedimientos-y-Funciones-Almacenadas.sql)

## TEMA 3: Optimización de consultas a través de índices

#### **PASO 1:** 
Realizamos una insersion masiva de un millon de datos. Obtenemos de forma aleatoria los dni_usuario, dni_cliente, id_pago que ya tenemos insertados en la bases de datos. Se crea una fecha aleatoria en un rango de 10 años 

```sql
-- Eleccion de la Tabla Venta --

-- declaramos variables 
DECLARE @i INT = 0;
DECLARE @total INT = 1000000;  -- Número total de registros a insertar

-- generacion de registros
WHILE @i < @total
BEGIN
    -- seleccionamos un DNI_usuario aleatorio de la tabla Usuario
    DECLARE @DNI_usuario VARCHAR(200) = (SELECT TOP 1 DNI_usuario FROM Usuario ORDER BY NEWID());

    -- seleccionamos un DNI_cliente aleatorio de la tabla Cliente
    DECLARE @DNI_cliente VARCHAR(200) = (SELECT TOP 1 DNI_cliente FROM Cliente ORDER BY NEWID());

    -- seleccionamos un id_pago aleatorio de la tabla Pago
    DECLARE @id_pago INT = (SELECT TOP 1 id_pago FROM Pago ORDER BY NEWID());

    -- verificamos si los valores obtenidos no son NULL
    IF @DNI_usuario IS NOT NULL AND @DNI_cliente IS NOT NULL AND @id_pago IS NOT NULL
    BEGIN
        -- insertamos el registro en la tabla Venta
        INSERT INTO Venta (fecha_venta, DNI_usuario, DNI_cliente, id_pago)
        VALUES (
            -- genera una fecha aleatoria en un rango de 10 años
            DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 3650), '2010-01-01'),  
            -- usa el DNI_usuario aleatorio de la tabla Usuario
            @DNI_usuario,
            -- usa el DNI_cliente aleatorio de la tabla Cliente
            @DNI_cliente,
            -- usa el id_pago aleatorio de la tabla Pago
            @id_pago
        );
    END

    SET @i = @i + 1;

    -- cada 1000 registros se realiza un commit para mejorar el rendimiento 
    IF @i % 1000 = 0
    BEGIN
        PRINT CONCAT('Inserted ', @i, ' records...');
    END
END;

PRINT 'Carga masiva completada.';
```
#### **PASO 2: CREO UNA TABLA venta2 en base a la tabla Venta esta tabla nueva no contendrá indices y evaluo el plan de ejecucion y tiempo estimado**

**Creo la tabla vebta 2**
```sql
SELECT * 
INTO venta2
FROM Venta --- 1000020 registros
```

**Realizo una consulta por periodo en la tabla sin indice (venta2)**
```sql
-- consulta por periodo tabla sin indice
--TABLE SCAN
SELECT *
FROM venta2
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';
```
### Plan ejecucion estimado table venta2 sin indices 
![plan ejecucion tabale venta2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ejecucion_venta2_sin_indice_1.png)

**Explicacion del resultado del plan de ejecucion estimado**

En este caso el plan de ejecucion estimado que eligio el motor de bases de datos fue **"Table Scan"**, esto ocurre porque la tabla venta2 no tiene asociado ningun indice para poder acceder de forma mas rapidas a las consultas, el motor de base de datos debe recorrer todas las filas de la tabla para encontrar los registros con fechas entre año 2010 y el año 2018. Esta operación es muy poco eficiente para la cantidad de regitros que posee dicha tabla por lo que es conveniente crear un indice agrupado. 

**Realizo consulta  una consulta por periodo en la tabla con indice (Venta)**
```sql
-- consulta por periodo tabla con indice
--INDEX SCAN
SELECT *
FROM Venta
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';
```

### Plan ejecucion estimado table Venta con indice 
![plan ejecucion tabla Venta](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ejecucion_Venta_con_indice_1.png)

**Explicacion del resultado del plan de ejecucion estimado**

En este caso el plan de ejecucion estamado que eligio el motor de bases de datos fue **"Index Scan"** porque necesita revisar un rango amplio de fechas. Esto ocurre cuando el índice no está filtrando suficiente información para localizar rápidamente un subconjunto de filas. Es decir, el motor evalúa que debe revisar varias o todas las filas de un índice para encontrar las que cumplan los criterios de la consulta. De todos modos, ya que el indice de la tabla Venta es agrupado este ya contiene toda la informacion de la fila entonces el escaneo es más rápido y se evitan búsquedas adicionales.
SQL Server recorrerá el índice desde la primera fecha que cumpla con la condición '2010-01-01' y continuará escaneando hasta llegar al final del rango '2018-12-31'.

### AMBAS CONSULTAS Y SUS COSTO DE EJECUCION

![Costo ejecucion ambas](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/costoEjecucionAmbas_1.png)

#### **PASO 3: Creo un indice para la tabla venta2 y evaluo el plan de ejecucion y tiempo estimado**

**Creo indice agrupado para tabla venta2**
```sql
-- defino indice agrupado para la columna fecha_venta
-- tardo 00:00:05 en crear el indice ya que debe ordernar todos los 
--registros en relacion al indice asociado a la columna fecha_venta
CREATE CLUSTERED INDEX I_fecha_venta 
ON venta2 (fecha_venta)
```

**Realizamos consulta sobre la tabla venta2 y evaluamos su plan de ejecucion**
```sql
--INDEX SEEK
--tiempo de respuesta: 00:00:04
SELECT *
FROM venta2
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';
```

### Plan ejecucion estimado table venta2 con indice 
![plan ejecucion tabla venta2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/venta2_con_indice_2.png)

**Explicacion del resultado del plan de ejecucion estimado**

En este caso el plan de ejecucion que decide usar el motor de bases de datos es el **index seek** ya que este se usa cuando las consultas involucran un where o join que hacen uso de las columnas indexadas. Esto permite buscar de forma específica un rango o conjunto de valores, en lugar de revisar todas las entradas.

**Realizamos consulta sobre la tabla Venta y evaluamos su plan de ejecucion**
```sql
--INDEX SCAN
SELECT *
FROM Venta
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';
```

### Plan ejecucion estimado table Venta con indice 
![plan ejecucion tabla venta2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/ejecucion_Venta_con_indice_2.png)


### AMBAS CONSULTAS Y SUS COSTO DE EJECUCION

![Costo ejecucion ambas con indice](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/costoEjecucionAmbas_2.png)


#### **PASO 4: Borramos el indice de la tabla venta2**
```sql
DROP INDEX I_fecha_venta ON venta2
```
#### **PASO 5: Creamos un indice sobre la columna fecha pero incluimos 2 columnas mas (cod_venta, dni_usuario)**
```sql
CREATE CLUSTERED INDEX I_fecha_venta
ON venta2 (fecha_venta, cod_venta, DNI_usuario);
```

**Realizamos consulta sobre la tabla venta2 con indice agrupado**
```sql
--CONSULTA
--tiempo de respuesta 00:00:03
--INDEX SEEK
--COSTO DE BUSQUEDA EN INDEX SEEK 100%
SELECT cod_venta, DNI_usuario
FROM venta2
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';
```

### Plan ejecucion estimado table venta2 con indice 
![plan ejecucion tabla venta2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/venta2_indice_agregado_3.png)

**Realizamos consulta sobre la tabla Venta con indice agrupado**
```sql
--tiempo de respuesta 00:00:04
--INDEX SCAN
--COSTO DE BUSQUEDA EN INDEX SCAN %100
SELECT cod_venta, DNI_usuario
FROM Venta
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';
```

### Plan ejecucion estimado table venta2 con indice 
![plan ejecucion tabla Venta](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/VentaCosto_3.png)


### AMBAS CONSULTAS Y SUS COSTO DE EJECUCION

![Costo ejecucion ambas con indice](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/costoEjecucionAmbas_3.png)

### Conclusion sobre el resultado del costo y el plan de ejecucion de ambas consultas con indices

El "Index Seek" en la tabla venta2 muestra una mayor eficiencia que el "Index Scan" en la tabla Venta. Esto se debe a que, al tener un índice agrupado sobre las columnas fecha_venta, cod_venta, y DNI_usuario, SQL Server puede dirigirse directamente a las filas correspondientes al rango de fechas solicitado. Esta optimización reduce el tiempo de procesamiento y el costo de la consulta.

La consulta con "Index Seek" tuvo un tiempo de respuesta menor (3 segundos) comparado con la consulta de "Index Scan" (4 segundos). Esto demuestra cómo un índice bien diseñado puede mejorar el rendimiento, especialmente en tablas grandes o consultas frecuentes.

Aunque el plan de ejecución muestra un costo similar 48% vs. 52%, el "Index Seek" tiene un impacto directo en el tiempo de respuesta. Esto confirma que el uso de índices adecuados puede mejorar significativamente el rendimiento, aunque el costo relativo en términos de porcentaje no siempre muestre una diferencia muy amplia.

> Acceder a la siguiente carpeta para leer el script [scripts-> tema_3](script/indices.sql)

## TEMA 4: BACKUP Y RESTORE

•	Verificar que el modelo de recuperación de la base de datos esté en el modo adecuado para realizar backup en línea.
```sql
--- Configurar el modelo de recuperación en FULL
-- Cambia el modelo de recuperación de la base de datos a FULL para habilitar la realización de backups de logs de transacciones
ALTER DATABASE sistema_gestor_de_ventas
SET RECOVERY FULL;

-- Selecciona el nombre y el modelo de recuperación de la base de datos 'sistema_gestor_de_ventas'
SELECT name, recovery_model_desc
FROM sys.databases
WHERE name = 'sistema_gestor_de_ventas';
```

![modelo_de_recuperacion](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/modelo_de_recuperacion.png)

•	Realizar un backup full de la base de datos.

```sql
BACKUP DATABASE sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_full.bak.'
WITH FORMAT, INIT;
```

•	Generar 10 inserts sobre una tabla de referencia.

-- Proveedores antes del insert

![proveedores_full_Backup](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_Full_Backup.png)

•	Generar 10 inserts sobre una tabla de referencia.
```sql
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor D', 'Calle nueva 234', 3764265874, 'proveedorD@gmail.com', 'www.proveedord.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor E', 'Calle nueva 345', 3764265871, 'proveedorE@gmail.com', 'www.proveedore.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor F', 'Calle nueva 456', 3764265872, 'proveedorF@gmail.com', 'www.proveedorf.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor G', 'Calle nueva 567', 3764265873, 'proveedorG@gmail.com', 'www.proveedorg.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor H', 'Calle nueva 678', 3764265804, 'proveedorH@gmail.com', 'www.proveedorh.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor I', 'Calle nueva 789', 3764265875, 'proveedorI@gmail.com', 'www.proveedori.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor J', 'Calle nueva 891', 3764265876, 'proveedorJ@gmail.com', 'www.proveedorj.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor K', 'Calle nueva 912', 3764265877, 'proveedorK@gmail.com', 'www.proveedork.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor L', 'Calle nueva 123', 3764265878, 'proveedorL@gmail.com', 'www.proveedorl.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor M', 'Calle nueva 233', 3764265879, 'proveedorM@gmail.com', 'www.proveedorm.com',1)
```
![proveedores_LOG](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG.png)

•	Realizar backup del archivo de log y registrar la hora del backup

```sql
--- Crea un backup del log de transacciones en el archivo especificado
BACKUP LOG sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_log.bak.'
WITH INIT;

--- Almacena la hora del backup en una variable y la muestra
DECLARE @HoraBackup DATETIME;
SET @HoraBackup = GETDATE();
PRINT 'Backup del archivo de log completado a las: ' + CONVERT(VARCHAR, @HoraBackup, 120);
```

•	Generar otros 10 insert sobre la tabla de referencia.
```sql
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 1', 'Calle 234', 3795265874, 'proveedor1@gmail.com', 'www.proveedor1.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 2', 'Calle 345', 3795265871, 'proveedor2@gmail.com', 'www.proveedor2.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 3', 'Calle 456', 3795265872, 'proveedor3@gmail.com', 'www.proveedor3.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 4', 'Calle 567', 3795265873, 'proveedor4@gmail.com', 'www.proveedor4.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 5', 'Calle 678', 3795265804, 'proveedor5@gmail.com', 'www.proveedor5.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 6', 'Calle 789', 3795265875, 'proveedor6@gmail.com', 'www.proveedor6.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 7', 'Calle 891', 3795265876, 'proveedor7@gmail.com', 'www.proveedor7.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 8', 'Calle 912', 3795265877, 'proveedor8@gmail.com', 'www.proveedor8.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 9', 'Calle 123', 3795265878, 'proveedor9@gmail.com', 'www.proveedor9.com',1)
insert into Proveedor (nombre, direccion, telefono, email, web, id_estado) values ('Proveedor 10', 'Calle 233',3795265879,'proveedor10@gmail.com','www.proveedor10.com',1)
```
![proveedores_LOG2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG_2.png)

•	Realizar nuevamente backup de archivo de log  en otro archivo físico.
```sql
BACKUP LOG sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_log2.bak.'
WITH INIT;

-- Registra y muestra la hora del segundo backup de log
DECLARE @HoraBackup DATETIME;
SET @HoraBackup = GETDATE();
PRINT 'Backup del archivo de log completado a las: ' + CONVERT(VARCHAR, @HoraBackup, 120);
```
•	Restaurar la base de datos al momento del primer backup del archivo de log. Es decir después de los primeros 10 insert.
```sql
--- Restaurar la base de datos al estado después del primer backup del log
-- Cambia el contexto a la base de datos 'master' antes de realizar la restauración
USE master;

-- Restaura el backup completo inicial de la base de datos sin recuperarla completamente, para aplicar logs adicionales
RESTORE DATABASE sistema_gestor_de_ventas
FROM DISK = 'C:\backups\sistema_gestor_de_ventas_full.bak.'
WITH NORECOVERY, REPLACE;

-- Restaura el primer backup de log para recuperar la base de datos hasta después de los primeros 10 inserts
RESTORE LOG sistema_gestor_de_ventas
FROM DISK = 'C:\backups\sistema_gestor_de_ventas_log.bak.'
WITH RECOVERY;

-- Cambia el contexto de nuevo a la base de datos 'sistema_gestor_de_ventas' y muestra el estado actual de la tabla
USE sistema_gestor_de_ventas;
select * from Proveedor
```
![proveedores_LOG](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG.png)

•	Restaurar la base de datos aplicando ambos archivos de log.
```sql
--- Restaurar la base de datos aplicando ambos archivos de log
-- Cambia el contexto a 'master' antes de iniciar otra restauración completa
USE master;

-- Restaura el backup completo nuevamente sin recuperación para aplicar ambos logs
RESTORE DATABASE sistema_gestor_de_ventas
FROM DISK = 'C:\backups\sistema_gestor_de_ventas_full.bak'
WITH NORECOVERY, REPLACE;

-- Aplica el primer log sin completar la recuperación
RESTORE LOG sistema_gestor_de_ventas
FROM DISK = 'C:\backups\sistema_gestor_de_ventas_log.bak'
WITH NORECOVERY;

-- Aplica el segundo log y completa la recuperación
RESTORE LOG sistema_gestor_de_ventas
FROM DISK = 'C:\backups\sistema_gestor_de_ventas_log2.bak'
WITH RECOVERY;

-- Cambia el contexto a la base de datos restaurada y muestra los datos actuales en la tabla 'Proveedor'
USE sistema_gestor_de_ventas;
select * from Proveedor
```
![proveedores_LOG2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG_2.png)


> Acceder a la siguiente carpeta para leer el script [scripts-> tema_4](script/Backup.sql)


### Diagrama relacional
![diagrama_relacional](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/doc/Esquema_Relacion.jpeg)

### Diccionario de datos

Acceso al documento [PDF](doc/Diccionarios_Datos.pdf) del diccionario de datos.

## CAPÍTULO V: CONCLUSIONES

A lo largo de este Trabajo, el equipo tuvo la oportunidad de profundizar en diversos aspectos fundamentales para el manejo de sistemas informáticos, específicamente en lo que respecta a la gestión de usuarios, los procedimientos de respaldo y el uso de índices en bases de datos. La información recabada de fuentes oficiales nos permitió obtener una visión más clara sobre cómo implementar buenas prácticas en estos temas, que son esenciales para el buen funcionamiento y la seguridad de cualquier sistema.

#### Gestión de Usuarios
Uno de los puntos más relevantes que descubrimos fue la complejidad de la gestión de usuarios en los sistemas. Si bien en un principio el tema parecía sencillo, pronto nos dimos cuenta de que la creación de roles adecuados, la asignación precisa de permisos y la administración de accesos requieren un enfoque planificado y cuidadoso. A través de la investigación, comprendimos la importancia de una gestión centralizada de usuarios que permita auditar constantemente las acciones realizadas. La segmentación de permisos y la implementación de protocolos de autenticación robustos son aspectos fundamentales para mantener la seguridad del sistema y proteger los datos sensibles. Este proceso nos permitió entender lo crucial que es tener un sistema de gestión de usuarios bien diseñado desde el inicio de un proyecto.

#### Procedimientos de Backup
En cuanto a los procedimientos de respaldo, comprendimos que los backups son esenciales para la continuidad y seguridad del sistema. Aprendimos que no basta con hacer un respaldo regular de las bases de datos y archivos importantes, sino que es necesario establecer una estrategia clara que contemple la ubicación segura de los respaldos, su cifrado y la frecuencia con que deben realizarse. Además, se debe realizar una verificación periódica de los respaldos para asegurar que, en caso de emergencia, estos puedan ser restaurados de manera efectiva. Este aprendizaje nos hizo entender que una estrategia de respaldo bien implementada puede marcar la diferencia entre una recuperación exitosa y una pérdida irreversible de datos.

#### Índices en Bases de Datos
El uso de índices en bases de datos fue otro tema de gran relevancia. A través de la investigación, comprendimos que los índices son herramientas poderosas para mejorar el rendimiento de las consultas en una base de datos. Sin embargo, también aprendimos que deben ser gestionados de manera adecuada, ya que un uso excesivo o incorrecto de los índices puede perjudicar el rendimiento global del sistema, especialmente cuando se trabaja con bases de datos grandes. Entendimos que la clave está en elegir las columnas adecuadas para la creación de índices y mantenerlos actualizados de manera eficiente. Esto nos permitió ver cómo optimizar la velocidad de las consultas sin comprometer el rendimiento general del sistema.

#### Reflexión Grupal
A nivel grupal, este trabajo nos permitió entender la importancia de adoptar un enfoque integral para la gestión de usuarios, los respaldos y el rendimiento de las bases de datos. Nos dimos cuenta de que cada uno de estos aspectos está interrelacionado y que una mala práctica en cualquiera de estos elementos puede afectar gravemente la seguridad, eficiencia y estabilidad del sistema. Además, aprendimos que la prevención, a través de la gestión adecuada de usuarios y la implementación de respaldos regulares, es fundamental para evitar problemas en el futuro.

#### Cumplimiento de los Objetivos
Los objetivos establecidos al principio del trabajo fueron cumplidos de manera satisfactoria. Pudimos obtener información clave sobre cada uno de los temas mencionados y reflexionar sobre cómo aplicar esas buenas prácticas en un entorno real. La recopilación de datos desde sitios oficiales y la revisión de procedimientos recomendados nos permitió tener una visión clara y bien fundamentada sobre cómo implementar estos conceptos de forma efectiva.

#### Conclusión Final
En conclusión, este trabajo práctico nos brindó una comprensión más profunda sobre la gestión de usuarios, los procedimientos de respaldo y la optimización del uso de índices en bases de datos. Cada uno de estos aspectos es fundamental para garantizar la seguridad, el rendimiento y la fiabilidad de los sistemas informáticos. El conocimiento adquirido a través de la investigación nos permitirá aplicar buenas prácticas en futuros proyectos, asegurando tanto la seguridad como la eficiencia de los sistemas con los que trabajemos. Sin duda, esta experiencia nos proporcionó valiosas lecciones sobre la planificación y la atención al detalle en la administración de sistemas informáticos.


## BIBLIOGRAFÍA DE CONSULTA

Microsoft. (n.d.). Getting started with database engine permissions. Recuperado de https://learn.microsoft.com/es-es/sql/relational-databases/security/authentication-access/getting-started-with-database-engine-permissions?view=sql-server-ver16

IBM. (n.d.). Monitoring and creating users, granting permissions. Recuperado de https://www.ibm.com/docs/es/capm?topic=monitoring-creating-user-granting-permissions

