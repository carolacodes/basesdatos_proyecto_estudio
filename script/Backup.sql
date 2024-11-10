--- Verificar el modelo de recuperación actual de la base de datos
-- Selecciona el nombre y el modelo de recuperación de la base de datos 'sistema_gestor_de_ventas'

SELECT name, recovery_model_desc
FROM sys.databases
WHERE name = 'sistema_gestor_de_ventas';

--- Configurar el modelo de recuperación en FULL
-- Cambia el modelo de recuperación de la base de datos a FULL para habilitar la realización de backups de logs de transacciones

ALTER DATABASE sistema_gestor_de_ventas
SET RECOVERY FULL;


--- Crear una carpeta para almacenar los backups
-- Activa la opción avanzada 'xp_cmdshell' para ejecutar comandos en el sistema operativo desde SQL Server

EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
EXEC sp_configure 'xp_cmdshell', 1;
RECONFIGURE;

-- Declara una variable para el path de la carpeta y un comando para crearla
DECLARE @folderPath NVARCHAR(255) = 'C:\backups';
DECLARE @command NVARCHAR(255);

-- Verifica si la carpeta ya existe; si no, crea la carpeta 'C:\backups' en el sistema
IF NOT EXISTS (SELECT * FROM sys.master_files WHERE physical_name LIKE @folderPath + '%')
BEGIN
    SET @command = 'mkdir ' + @folderPath;
    EXEC xp_cmdshell @command;
END


-- Desactiva 'xp_cmdshell' para mantener la seguridad del sistema
EXEC sp_configure 'xp_cmdshell', 0;
RECONFIGURE;


--- Realizar un backup completo de la base de datos
-- Genera un backup completo de la base de datos en el archivo especificado

BACKUP DATABASE sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_full.bak.'
WITH FORMAT, INIT;

--- Insertar datos de ejemplo en la tabla 'Proveedor'
-- Muestra el contenido actual de la tabla 'Proveedor'
select * from Proveedor

-- Inserta 10 registros de prueba en la tabla 'Proveedor'
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

-- Muestra el contenido actualizado de la tabla 'Proveedor'
select * from Proveedor

--- Realizar un backup del log de transacciones
-- Crea un backup del log de transacciones en el archivo especificado

BACKUP LOG sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_log.bak.'
WITH INIT;

-- Almacena la hora del backup en una variable y la muestra
DECLARE @HoraBackup DATETIME;
SET @HoraBackup = GETDATE();
PRINT 'Backup del archivo de log completado a las: ' + CONVERT(VARCHAR, @HoraBackup, 120);

--- Generar otros 10 insert sobre la tabla de referencia.
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

select * from Proveedor

--- Realizar nuevamente backup de archivo de log  en otro archivo físico.

--- Realizar un segundo backup del log de transacciones
-- Crea un segundo backup del log de transacciones en un archivo diferente
BACKUP LOG sistema_gestor_de_ventas
TO DISK = 'C:\backups\sistema_gestor_de_ventas_log2.bak.'
WITH INIT;

-- Registra y muestra la hora del segundo backup de log
DECLARE @HoraBackup DATETIME;
SET @HoraBackup = GETDATE();
PRINT 'Backup del archivo de log completado a las: ' + CONVERT(VARCHAR, @HoraBackup, 120);


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
