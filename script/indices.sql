/*
Tema: Optimización de consultas a través de índices

Tareas: 

-- Realizar una carga masiva de por lo menos un millón de registro sobre alguna tabla que contenga 
un campo fecha (sin índice). Hacerlo con un script para poder automatizarlo.

-- Realizar una búsqueda por periodo y registrar el plan de ejecución utilizado por el motor 
y los tiempos de respuesta.

-- Definir un índice agrupado sobre la columna fecha y repetir la consulta anterior. 
Registrar el plan de ejecución utilizado por el motor y los tiempos de respuesta.

-- Borrar el índice creado

-- Definir otro índice agrupado sobre la columna fecha pero que además incluya las 
columnas seleccionadas y repetir la consulta anterior. 
Registrar el plan de ejecución utilizado por el motor y los tiempos de respuesta.

-- Expresar las conclusiones en base a las pruebas realizadas.

*/

------------------------------------------------------------------------------------------------------
------------------------------| ELECCION TABLA VENTA |------------------------------------------------

--|1) Realizar una carga masiva de por lo menos un millón de registro sobre alguna tabla que contenga 
--un campo fecha (sin índice). Hacerlo con un script para poder automatizarlo.

-- nos aseguramos de limpiar la tabla `Venta` antes de comenzar
--TRUNCATE TABLE Venta;

USE sistema_gestor_de_ventas

select * from Venta


-- declaramos variables 
DECLARE @i INT = 0;
DECLARE @total INT = 1000000;  -- Número total de registros a insertar

-- generacion de registros
WHILE @i < @total
BEGIN
    -- seleccionamos un DNI_usuario aleatorio de la tabla Usuario
    DECLARE @DNI_usuario VARCHAR(200) = (SELECT TOP 1 DNI_usuario FROM Usuario ORDER BY NEWID());

    -- selecionamos un DNI_cliente aleatorio de la tabla Cliente
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


--CREO UNA TABLA venta2 sin indices
SELECT * 
INTO venta2
FROM Venta --- 1000020 registros

--Procedimiento almacenado para ver la metadata etc
sp_help venta2

sp_help Venta


-- |2) Realizar una búsqueda por periodo y registrar el plan de ejecución utilizado por el motor 
--y los tiempos de respuesta.

----------comparo con la tabla que posee indices y la que no posee indices
--------- TIEMPO DE RESPUESTA ----------------------
-- activo las estadisticas de tiempo de respuesta 
SET STATISTICS TIME ON;
SET STATISTICS IO ON;

-- consulta por periodo tabla sin indice
--TABLE SCAN
SELECT *
FROM venta2
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';

-- consulta por periodo tabla con indice
--INDEX SCAN
SELECT *
FROM Venta
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';

-- desactivo la estadistica despues de observar los resultados
SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;

-------- REGISTRO CON EL PLAN DE EJECUCION -------------
---------------------- AGREGAR IMAGEN DEL PLAN DE EJECUCION -------------------------------------

-- |3) Definir un índice agrupado sobre la columna fecha y repetir la consulta anterior. 
-- Registrar el plan de ejecución utilizado por el motor y los tiempos de respuesta.


-- defino indice agrupado para la columna fecha_venta
-- tardo 00:00:05 en crear el indice ya que debe ordernar todos los 
--registros en relacion al indice asociado a la columna fecha_venta
CREATE CLUSTERED INDEX I_fecha_venta 
ON venta2 (fecha_venta)

--INDEX SEEK
--tiempo de respuesta: 00:00:04
SELECT *
FROM venta2
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';

--INDEX SCAN
SELECT *
FROM Venta
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';


-- |4) Borrar el índice creado
DROP INDEX I_fecha_venta ON venta2

-- |5) Definir otro índice agrupado sobre la columna fecha pero que además incluya las 
-- columnas seleccionadas y repetir la consulta anterior. 
-- Registrar el plan de ejecución utilizado por el motor y los tiempos de respuesta.

---OPCION 1 USANDO INDICE AGRUPADO
--Un índice agrupado ordena toda la tabla por las columnas definidas.
CREATE CLUSTERED INDEX I_fecha_venta
ON venta2 (fecha_venta, cod_venta, DNI_usuario);

--DROP INDEX I_fecha_venta ON Venta

--OPCION 2 USANDO INDICE NO AGRUPADO CON INCLUDE PARA INCLUIR LAS COLUMNAS
--Un índice no agrupado con INCLUDE permite 
--optimizar consultas sobre columnas específicas sin reordenar la tabla.
CREATE NONCLUSTERED INDEX IX_fecha_venta
ON Venta (fecha_venta)
INCLUDE (cod_venta, DNI_usuario);

--CONSULTA
--tiempo de respuesta 00:00:03
--INDEX SEEK
--COSTO DE BUSQUEDA EN INDEX SEEK 100%
SELECT cod_venta, DNI_usuario
FROM venta2
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';

--tiempo de respuesta 00:00:04
--INDEX SCAN
--COSTO DE BUSQUEDA EN INDEX SCAN %100
SELECT cod_venta, DNI_usuario
FROM Venta
WHERE fecha_venta BETWEEN '2010-01-01' AND '2018-12-31';