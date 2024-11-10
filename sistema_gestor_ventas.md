
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

En el contexto de la realización de un sistema motor de base de datos, es esencial incluir una serie de características que garanticen un funcionamiento óptimo y una gestión eficaz de la información. Una de estas características son los procedimientos almacenados, que permiten la ejecución de operaciones complejas en el servidor de forma eficiente. Al integrar estos procedimientos, se reduce significativamente la posibilidad de cometer errores en la incorporación de la información, garantizando que los datos sean introducidos de manera consistente y precisa. Esto no solo optimiza la gestión de las transacciones, sino que también asegura la integridad y fiabilidad de la información, aspectos críticos para la toma de decisiones informadas en el ámbito empresarial.

Otra consideración clave es el manejo de permisos a nivel de usuarios de base de datos. Implementar un sistema de gestión de accesos es fundamental para asegurar que solo el personal autorizado pueda acceder y manipular información sensible. Esto no solo protege los datos críticos de la empresa, sino que también contribuye a la creación de un entorno de trabajo más seguro y confiable, donde se minimizan los riesgos de fraudes o errores por parte de usuarios no autorizados.

El manejo de permisos a nivel de usuarios en bases de datos es crucial para garantizar la seguridad y la integridad de la información. Los sistemas de gestión de bases de datos como SQL Server permiten definir roles y permisos que regulan el acceso a los datos y las operaciones que los usuarios pueden realizar. Esto incluye la posibilidad de establecer permisos específicos para diferentes roles, lo que facilita la adaptación de la seguridad a las necesidades cambiantes del negocio.

En SQL Server, la administración de permisos se realiza a nivel de servidor mediante inicios de sesión y roles de servidor, y a nivel de base de datos a través de usuarios de base de datos y roles de base de datos. Se admiten inicios de sesión basados en autenticación de Windows y autenticación de SQL Server. Los inicios de sesión conceden acceso a una base de datos mediante la creación de un usuario de base de datos en una base de datos y la asignación de ese usuario de base de datos para iniciar sesión.  Existen dos tipos de roles de base de datos: los fijos y los definidos por el usuario. Los roles fijos de base de datos son un conjunto de roles preconfigurados que proporcionan un práctico grupo de permisos de nivel de base de datos. Por otro lado, los roles definidos por el usuario son aquellos que pueden ser creados por los usuarios con el permiso CREATE ROLE, permitiendo la representación de grupos de usuarios con permisos comunes. Normalmente, los permisos se conceden o deniegan a todo el rol, lo que simplifica la administración y supervisión de permisos.

Para este caso en particular se han creado roles específicos y luego creado los usuarios:
-- Paso 1: Creación de roles

CREATE ROLE AdminRol;
CREATE ROLE ReadOnlyRol;

GRANT ALTER, CONTROL, DELETE, INSERT, SELECT, UPDATE TO AdminRol;
GRANT SELECT TO ReadOnlyRol;

-- Paso 2: Creación de los usuarios

CREATE LOGIN admin_user WITH PASSWORD = 'AdminPassword123';
CREATE USER admin_user FOR LOGIN admin_user;

CREATE LOGIN read_user WITH PASSWORD = 'ReadPassword123';
CREATE USER read_user FOR LOGIN read_user;

![creacion de usuarios](https://github.com/user-attachments/assets/9d3d31aa-4741-4095-b6d6-a89b9df799fd)

-- Paso 3: Asignación de permisos de solo lectura para algunas tablas para el rol ReadOnlyRol
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

-- Paso 3: Asignación de roles a los usuarios

-- Asignación de rol de administrador al usuario admin_user
EXEC sp_addrolemember 'AdminRol', 'admin_user';

-- Asignación de rol de solo lectura al usuario read_user
EXEC sp_addrolemember 'ReadOnlyRol', 'read_user';

Verificación de acciones de consultas de lectura y escritura (INSERT, UPDATE, DELETE) en las tablas de la base de datos utilizando el usuario admin_user:

/*Select con usuario de admin_user*/
SELECT * FROM Categoria;

/*Insert*/
INSERT INTO dbo.Categoria (nombre) VALUES ('Sopas instantaneas');

![insert de admin](https://github.com/user-attachments/assets/8abf85f1-ed07-4dd2-89b6-c2fc4db9a1a6)

/*Update*/
UPDATE dbo.Categoria SET nombre = 'Sopas' WHERE id_categoria = 11;

/*Delete*/
DELETE FROM dbo.Categoria WHERE id_categoria = 11;

Las diferentes acciones con dicho usuario creado no se verifican restricciones ni errores existentes al realizar diversas acciones en cualquier tabla de la base de datos. Al igual que al momento de ejecutar un procedimiento almacenado para una de las tablas, se puede crear el mismo como así también realizar diferentes inserciones, para la prueba de dicho procedimiento almacenado.

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
        RETURN
    END

	INSERT INTO dbo.categoria (nombre) VALUES
		(@nombre)

	SET @Respuesta = SCOPE_IDENTITY(); -- Para realizar la carga del id con el ultimo generado
	SET @Mensaje = 'Categoría creada exitosamente.'
END

Luego se han concedido permisos de ejecución del procedimiento para ambos usuarios anteriormente creados:

GRANT EXECUTE ON SP_REGISTROCATEGORIA TO AdminRol;
GRANT EXECUTE ON SP_REGISTROCATEGORIA TO ReadOnlyRol;

El usuario con permisos de administrador deberá poder insertar datos, mientras que el usuario de sólo lectura no debería poder hacerlo a menos que se le otorguen permisos específicos. Sin embargo, tomando en consideración las restricciones creadas antes sobre la tabla de categoría, se produzca un error debido a la falta de permisos para el usuario de lectura.

![procedimiento](https://github.com/user-attachments/assets/a18f203d-004f-453a-944f-a5afb9f039fe)

Sin embargo, si intentamos realizar un INSERT a la tabla con el usuario read_user, se mostrará un mensaje de error indicando que no se tienen permisos para agregar datos a la tabla, debido a las restricciones previamente definidas para dicho usuario. El usuario efectivamente puede realizar un SELECT, pero no podrá realizar un DELETE, INSERT, o UPDATE, ya que, por defecto, cuando se crea un usuario de base de datos, el único permiso asignado es la instrucción SELECT.

![permiso denegado](https://github.com/user-attachments/assets/009deb1a-14ee-4ce3-ae6d-d9fc32bbc2a4)

La gestión adecuada de permisos y roles en SQL Server es crucial para garantizar la seguridad y el control de acceso a los datos. Utilizando roles fijos y definidos por el usuario, se puede simplificar la administración de permisos, asegurando que cada usuario tenga el nivel adecuado de acceso a la información según sus necesidades y responsabilidades.

La optimización de consultas a través de índices es otra característica vital en un sistema de gestión de base de datos. Los índices permiten acelerar las búsquedas y el acceso a datos específicos, mejorando considerablemente el rendimiento del sistema. Esto es particularmente importante en negocios que manejan grandes volúmenes de información, donde el tiempo de respuesta puede afectar directamente la satisfacción del cliente y la eficiencia operativa.

Además, la implementación de mecanismos de respaldo y restauración (backup y restore) es crucial para garantizar la protección de la información ante posibles pérdidas. Los sistemas de gestión de base de datos deben incluir procedimientos robustos que permitan realizar copias de seguridad periódicas de toda la información almacenada, así como la posibilidad de restaurar rápidamente los datos en caso de fallos técnicos, pérdidas de datos o ataques cibernéticos. Esta capacidad de recuperación no solo asegura la continuidad del negocio, sino que también proporciona tranquilidad a los gestores, sabiendo que la información crítica está protegida y puede ser recuperada cuando sea necesario.

Por último, un sistema de gestión de base de datos bien diseñado también debe considerar la escalabilidad y la adaptabilidad a futuro. A medida que el negocio crece y evoluciona, la base de datos debe ser capaz de adaptarse a nuevos requerimientos y manejar mayores volúmenes de información sin comprometer el rendimiento. Esto implica la necesidad de una planificación cuidadosa en la fase de diseño y la elección de tecnologías que permitan integrar nuevas funcionalidades con facilidad.

En conclusión, la implementación de un sistema gestor de base de datos efectivo es una inversión estratégica para cualquier negocio. Al incorporar innovaciones tecnológicas y considerar aspectos clave como procedimientos almacenados, manejo de permisos, optimización de consultas, y mecanismos de respaldo, las empresas pueden mejorar significativamente su eficiencia operativa, proteger su información crítica y tomar decisiones informadas que impulsen su crecimiento y competitividad en el mercado.

## CAPÍTULO III: METODOLOGÍA SEGUIDA 

Donec lobortis tincidunt erat, non egestas mi volutpat in. Cras ante purus, luctus sed fringilla non, ullamcorper at eros.

 **a) Cómo se realizó el Trabajo Práctico**
Vestibulum rutrum feugiat molestie. Nunc id varius augue. Ut augue mauris, venenatis et lacus ut, mattis blandit urna. Fusce lobortis, quam non vehicula scelerisque, nisi enim ultrices diam, ac tristique libero ex nec orci.

 **b) Herramientas (Instrumentos y procedimientos)**
Donec lobortis tincidunt erat, non egestas mi volutpat in. Cras ante purus, luctus sed fringilla non, ullamcorper at eros. Integer interdum id orci id rutrum. Curabitur facilisis lorem sed metus interdum accumsan. 


## CAPÍTULO IV: DESARROLLO DEL TEMA / PRESENTACIÓN DE RESULTADOS 

Maecenas molestie lacus tincidunt, placerat dolor et, ullamcorper erat. Mauris tortor nisl, ultricies ac scelerisque nec, feugiat in nibh. Pellentesque interdum aliquam magna sit amet rutrum. 


### TEMA 3: Optimización de consultas a través de índices

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

### TEMA: BACKUP Y RESTORE
El backup y restore de bases de datos son procedimientos críticos para garantizar la disponibilidad y la integridad de los datos. Los respaldos permiten realizar copias de la información que pueden ser restauradas en caso de fallos, asegurando la continuidad operativa en sistemas que dependen de datos accesibles y seguros.

¿Qué es un Backup?
El backup es una copia de datos que se almacena para restaurar y recuperar información en caso de una falla. Los respaldos de bases de datos permiten recuperar el estado exacto de la información en una fecha y hora específica, o incluso en un punto exacto en el tiempo.

Tipos de Backup
    * Copia de seguridad completa: Representa la base de datos en su totalidad en el momento de finalización del respaldo. Es fundamental como base para otros tipos de backup, ya que contiene todos los datos de la base en un punto dado.
    * Copia de seguridad diferencial: Contiene únicamente los cambios realizados desde la última copia de seguridad completa. Es una opción eficiente para reducir el tiempo y el espacio requerido en el almacenamiento.
    * Log backup: Se enfoca en almacenar las transacciones realizadas desde el último respaldo completo o diferencial. Este tipo de backup permite una recuperación precisa hasta un punto específico en el tiempo y es ideal para minimizar la pérdida de datos recientes.

Backup en Línea
El backup en línea es una técnica de respaldo que permite realizar una copia de seguridad mientras la base de datos está activa. Esto es crucial para sistemas que necesitan alta disponibilidad, ya que permite realizar respaldos sin interrumpir las operaciones.
Requisitos para el Backup en Línea
Para implementar un backup en línea, generalmente es necesario que la base de datos esté en un modo de recuperación completo o similar. Este modo registra todas las transacciones, permitiendo que los cambios puedan aplicarse de manera ordenada y consistente en caso de restauración.
Ventajas del Backup en Línea
    * Alta disponibilidad: Permite realizar respaldos sin necesidad de detener la base de datos, lo que evita interrupciones en las operaciones.
    * Recuperación a puntos específicos: Gracias a los logs, es posible restaurar la base de datos en un punto de tiempo específico.
    * Ideal para entornos críticos: Es una opción idónea para sistemas que requieren disponibilidad continua, como aquellos con operaciones 24/7.

¿Qué es el Restore?
Restore es el proceso de devolver una base de datos a un estado anterior utilizando una copia de respaldo. Es esencial para el mantenimiento de la integridad de los datos, ya que permite recuperar la información en caso de corrupción, errores o fallos del sistema.
Tipos de Restauración
    * Restauración completa: Usa un backup completo para devolver la base de datos al estado exacto en que estaba en el momento del respaldo.
    * Restauración diferencial: Aplica una copia de seguridad diferencial sobre un respaldo completo para actualizar la base de datos al estado más reciente sin aplicar cada cambio individual.
    * Restauración de logs de transacciones: Permite aplicar logs de transacciones para actualizar la base de datos a un punto específico entre el último respaldo completo y el momento deseado. Este tipo de restauración es clave para la recuperación de datos recientes.

Tareas:
•	Verificar que el modelo de recuperación de la base de datos esté en el modo adecuado para realizar backup en línea.

--- Configurar el modelo de recuperación en FULL
-- Cambia el modelo de recuperación de la base de datos a FULL para habilitar la realización de backups de logs de transacciones
ALTER DATABASE sistema_gestor_de_ventas
SET RECOVERY FULL;

-- Selecciona el nombre y el modelo de recuperación de la base de datos 'sistema_gestor_de_ventas'
SELECT name, recovery_model_desc
FROM sys.databases
WHERE name = 'sistema_gestor_de_ventas';

![modelo_de_recuperacion](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/modelo_de_recuperacion.png)

•	Realizar un backup full de la base de datos.

BACKUP DATABASE sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_full.bak.'
WITH FORMAT, INIT;

•	Generar 10 inserts sobre una tabla de referencia.

-- Proveedores antes del insert
![proveedores_full_Backup](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_Full_Backup.png)

•	Generar 10 inserts sobre una tabla de referencia.

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

![proveedores_LOG](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG.png)

•	Realizar backup del archivo de log y registrar la hora del backup
--- Crea un backup del log de transacciones en el archivo especificado
BACKUP LOG sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_log.bak.'
WITH INIT;

--- Almacena la hora del backup en una variable y la muestra
DECLARE @HoraBackup DATETIME;
SET @HoraBackup = GETDATE();
PRINT 'Backup del archivo de log completado a las: ' + CONVERT(VARCHAR, @HoraBackup, 120);

•	Generar otros 10 insert sobre la tabla de referencia.

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

![proveedores_LOG2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG_2.png)

•	Realizar nuevamente backup de archivo de log  en otro archivo físico.

BACKUP LOG sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_log2.bak.'
WITH INIT;

-- Registra y muestra la hora del segundo backup de log
DECLARE @HoraBackup DATETIME;
SET @HoraBackup = GETDATE();
PRINT 'Backup del archivo de log completado a las: ' + CONVERT(VARCHAR, @HoraBackup, 120);

•	Restaurar la base de datos al momento del primer backup del archivo de log. Es decir después de los primeros 10 insert.

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

![proveedores_LOG](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG.png)

•	Restaurar la base de datos aplicando ambos archivos de log.

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

![proveedores_LOG2](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/assets/Backup/proveedores_LOG_2.png)



### Diagrama relacional
![diagrama_relacional](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/doc/Esquema_Relacion.jpeg)

### Diccionario de datos

Acceso al documento [PDF](doc/Diccionarios_Datos.pdf) del diccionario de datos.


## CAPÍTULO V: CONCLUSIONES

Nunc sollicitudin purus quis ante sodales luctus. Proin a scelerisque libero, vitae pharetra lacus. Nunc finibus, tellus et dictum semper, nisi sem accumsan ligula, et euismod quam ex a tellus. 



## BIBLIOGRAFÍA DE CONSULTA

Microsoft. (n.d.). Getting started with database engine permissions. Recuperado de https://learn.microsoft.com/es-es/sql/relational-databases/security/authentication-access/getting-started-with-database-engine-permissions?view=sql-server-ver16

IBM. (n.d.). Monitoring and creating users, granting permissions. Recuperado de https://www.ibm.com/docs/es/capm?topic=monitoring-creating-user-granting-permissions

