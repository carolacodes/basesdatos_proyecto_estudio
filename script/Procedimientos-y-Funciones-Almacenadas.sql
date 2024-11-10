/*Procedimientos y funciones almacenadas

Objetivos de Aprendizaje:

Comprender la diferencia entre procedimientos y funciones almacenadas.
Aplicar procedimientos y funciones en la implementación de operaciones CRUD.
Criterios de Evaluación:

Correcta implementación y funcionamiento de los procedimientos y funciones.
Documentación clara y precisa de cada paso y concepto.
Efectividad en la manipulación de datos usando las funciones y procedimientos.
Tareas: 

-Realizar al menos tres procedimientos almacenados que permitan: Insertar, Modificar y borrar registros de alguna de las tablas del proyecto.
-Insertar un lote de datos en las tablas mencionadas (guardar el script) con sentencias insert y otro lote invocando a los procedimientos creados. 
-Realizar  update y delete sobre  algunos de los registros insertados  en esas tablas invocando a los procedimientos. 
-Desarrollar al menos tres funciones almacenadas. Por ej: calcular la edad, 
-Comparar la eficiencia de las operaciones directas versus el uso de procedimientos y funciones.*/

USE sistema_gestor_de_ventas;
go;

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
go;




SELECT * FROM dbo.Proveedor

select * from dbo.Estado

exec dbo.SP_InsertarProveedor 'HUEVO CAMPO','juju 1123441','37944351565432','hue23vo@gmail.com','huevosadcampo.com',0,''


go;

---------------------------------------------------------------------------------------------------------
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


EXEC SP_EliminarProveedor @id_proveedor = 4;

go;

---------------------------------------------------------------------------------------------------------
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
go;

select * from dbo.Proveedor


exec dbo.SP_ModificarProveedor 1,'UNNE','peru 567','37944351565432','unne@gmail.com','huevosadcampo.com',1,''
---------------------------------------------------------------------------------------------------------

--FUNCIONES EN USUARIOS
 
 select * from Usuario;
 go;

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

go;

--Correcto funcionamiento de la funcion
select nombre, dbo.F_Calcular_Edad(fecha_nacimiento) as Edad from dbo.Usuario;

--Caso donde el parametro que se pasa no es una fecha
select nombre, dbo.F_Calcular_Edad(nombre) as Edad from dbo.Usuario;

-- Operacion directa para calcular la edad de los usuarios
SELECT nombre, DATEDIFF(YEAR,fecha_nacimiento,GETDATE()) as Edad from dbo.Usuario

go;

---------------------------------------------------------------------------------------------------------

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

go;

--

select dbo.F_UsuariosActivosInactivos()

select * from dbo.Usuario
-- Operacion directa para contabilizar el numero de usuarios activo e inactivos
SELECT estado.nombre AS Estado, COUNT(u.DNI_usuario) AS Cantidad FROM dbo.Usuario u
JOIN 
    dbo.Estado estado ON u.id_estado = estado.id_estado
GROUP BY 
    estado.nombre;


go

---------------------------------------------------------------------------------------------------------

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

go;

select * from Cliente
select * from dbo.Venta
go;
select dbo.F_CantidadVentasClientes('89012345')

--Operacion directa para contar las ventas que tiene un cliente por su dni
select DNI_cliente, COUNT(cod_venta) as Ventas from dbo.Venta
where DNI_cliente = '89012345'
group by
DNI_cliente

