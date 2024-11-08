
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



### Diagrama relacional
![diagrama_relacional](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/doc/Esquema_Relacion.jpeg)

### Diccionario de datos

Acceso al documento [PDF](doc/Diccionarios_Datos.pdf) del diccionario de datos.


## CAPÍTULO V: CONCLUSIONES

Nunc sollicitudin purus quis ante sodales luctus. Proin a scelerisque libero, vitae pharetra lacus. Nunc finibus, tellus et dictum semper, nisi sem accumsan ligula, et euismod quam ex a tellus. 



## BIBLIOGRAFÍA DE CONSULTA

Microsoft. (n.d.). Getting started with database engine permissions. Recuperado de https://learn.microsoft.com/es-es/sql/relational-databases/security/authentication-access/getting-started-with-database-engine-permissions?view=sql-server-ver16

IBM. (n.d.). Monitoring and creating users, granting permissions. Recuperado de https://www.ibm.com/docs/es/capm?topic=monitoring-creating-user-granting-permissions

