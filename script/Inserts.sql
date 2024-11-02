---- INSERTS

----- CATEGORIA
USE sistema_gestor_de_ventas


INSERT INTO Categoria (nombre)
VALUES 
('Frutas y Verduras'),
('Lácteos'),
('Carnes y Embutidos'),
('Panadería y Pastelería'),
('Bebidas'),
('Limpieza'),
('Higiene Personal'),
('Congelados'),
('Despensa'),
('Snacks y Golosinas');


------ ROLES

INSERT INTO Rol (nombre)
VALUES 
('vendedor'),
('administrador'),
('supervisor');


---- NEGOCIO

INSERT INTO Negocio (nombre, rut, direccion)
VALUES 
('MiniMarket Plaza', '87654321', 'Plaza Mayor 789');



----- METODOS DE PAGO

INSERT INTO Metodo_Pago (nombre)
VALUES 
('efectivo'),
('transferencia'),
('debito'),
('tarjeta de credito');




----- ESTADO

INSERT INTO Estado (id_estado, nombre)
VALUES 
(1, 'activo'),
(0, 'inactivo');




----- ESTADO COMPRA

INSERT INTO Estado_Compra (nombre)
VALUES 
('pagado'),
('en proceso'),
('enviado'),
('entregado');




----- PROVEEDORES

INSERT INTO Proveedor (nombre, direccion, telefono, email, web, id_estado)
VALUES 
('Proveedor A', 'Calle Falsa 123', '123456789', 'contacto@proveedora.com', 'www.proveedora.com', 1), -- Activo
('Proveedor B', 'Av. Siempre Viva 742', '987654321', 'info@proveedorb.com', 'www.proveedorb.com', 1), -- Activo
('Proveedor C', 'Plaza Mayor 456', '456789123', 'support@proveedorc.com', 'www.proveedorc.com', 0); -- Inactivo

SELECT * FROM Proveedor


----- USUARIOS

INSERT INTO Usuario (DNI_usuario, nombre, email, pass, fecha_nacimiento, imagen_usuario, id_rol, id_estado)
VALUES 
('12345678', 'Juan Pérez', 'juan.perez@gmail.com', 'contraseña123', '2000-01-15', 'juan.jpg', 1, 1), -- Vendedor, Activo
('23456789', 'María Gómez', 'maria.gomez@gmail.com', 'contraseña456', '1995-03-22', 'maria.jpg', 2, 1), -- Administrador, Activo
('34567890', 'Carlos López', 'carlos.lopez@gmail.com', 'contraseña789', '2005-07-10', 'carlos.jpg', 3, 0), -- Supervisor, Inactivo
('45678901', 'Ana Martínez', 'ana.martinez@gmail.com', 'contraseña101', '1990-05-30', 'ana.jpg', 1, 1), -- Vendedora, Activa
('56789012', 'Luis Fernández', 'luis.fernandez@gmail.com', 'contraseña102', '1985-11-12', 'luis.jpg', 1, 1), -- Vendedor, Activo
('67890123', 'Sofía Ruiz', 'sofia.ruiz@gmail.com', 'contraseña103', '1992-08-25', 'sofia.jpg', 1, 1), -- Vendedora, Activa
('78901234', 'Roberto Torres', 'roberto.torres@gmail.com', 'contraseña104', '1980-03-15', 'roberto.jpg', 2, 1); -- Administrador, Activo




----- CLIENTES

INSERT INTO Cliente (DNI_cliente, nombre, correo, telefono, fecha_nacimiento, id_estado)
VALUES 
('89012345', 'Sofía Martínez', 'sofia.martinez@example.com', '456987123', '1994-11-20', 1),
('90123456', 'Gabriel Torres', 'gabriel.torres@example.com', '123789456', '1991-02-15', 1),
('01234567', 'Elena Ramírez', 'elena.ramirez@example.com', '987321654', '1987-05-25', 0),
('22234567', 'Javier López', 'javier.lopez@example.com', '753159846', '1986-09-29', 1),
('33345678', 'Claudia Morales', 'claudia.morales@example.com', '852369741', '1990-12-19', 1),
('44456789', 'David Sánchez', 'david.sanchez@example.com', '963852741', '1982-03-14', 0),
('55567890', 'Patricia Jiménez', 'patricia.jimenez@example.com', '159753258', '1985-01-27', 1),
('66678901', 'Jorge Torres', 'jorge.torres@example.com', '258963147', '1992-07-15', 1),
('77789012', 'Marta González', 'marta.gonzalez@example.com', '741258963', '1991-11-06', 0),
('88890123', 'Ricardo Fernández', 'ricardo.fernandez@example.com', '369258147', '1984-08-30', 1),
('99901234', 'Carmen Díaz', 'carmen.diaz@example.com', '147258369', '1980-12-12', 1),
('01012345', 'Luis Alvarado', 'luis.alvarado@example.com', '258147963', '1986-04-24', 0),
('11123456', 'Gloria Castro', 'gloria.castro@example.com', '852147963', '1993-06-18', 1),
('12134567', 'Julio Morales', 'julio.morales@example.com', '951753684', '1989-10-09', 1),
('13145678', 'Nadia Ruiz', 'nadia.ruiz@example.com', '456159753', '1994-05-03', 1),
('14156789', 'Victor Medina', 'victor.medina@example.com', '369147852', '1995-11-15', 0),
('15167890', 'Rosa Núñez', 'rosa.nunez@example.com', '741963852', '1991-08-17', 1),
('16178901', 'Omar Castillo', 'omar.castillo@example.com', '159852463', '1990-09-29', 1),
('17189012', 'Nicolás Ramírez', 'nicolas.ramirez@example.com', '951753862', '1992-12-21', 1),
('18190123', 'Isabel Torres', 'isabel.torres@example.com', '456123789', '1983-03-30', 0),
('19201234', 'Rafael Gómez', 'rafael.gomez@example.com', '987654321', '1987-01-17', 1),
('20312345', 'Yolanda Paredes', 'yolanda.paredes@example.com', '321654789', '1994-10-04', 1),
('21323456', 'Fernando Solis', 'fernando.solis@example.com', '654789123', '1985-05-11', 1),
('22334567', 'Cecilia Castro', 'cecilia.castro@example.com', '147852963',  '1988-07-22', 0),
('23345678', 'Diego Salazar', 'diego.salazar@example.com', '963258741', '1991-03-16', 1),
('24356789', 'Andrea Ramírez', 'andrea.ramirez@example.com', '741852963', '1990-09-07', 1),
('26378901', 'Erika López', 'erika.lopez@example.com', '147963258', '1986-06-20', 0),
('27389012', 'Esteban Flores', 'esteban.flores@example.com', '852741369', '1992-01-03', 1),
('30312345', 'Luciana Peña', 'luciana.pena@example.com', '753951486', '1995-11-24', 1),
('31323456', 'Pablo Cordero', 'pablo.cordero@example.com', '159753486', '1987-08-07', 1),
('34356789', 'Teresa González', 'teresa.gonzalez@example.com', '456321789', '1993-02-22', 1),
('35367890', 'Oscar Morales', 'oscar.morales@example.com', '789654123', '1992-03-29', 1),
('36378901', 'Claudia Vázquez', 'claudia.vazquez@example.com', '321789654', '1988-11-05', 0),
('37389012', 'Victor Delgado', 'victor.delgado@example.com', '654321789', '1986-07-19', 1),
('38390123', 'Adriana Méndez', 'adriana.mendez@example.com', '987456123', '1985-05-28', 1),

('12345678', 'Pedro Ramírez', 'pedro.ramirez@example.com', '123456789', '1990-01-15', 1), 
('23456789', 'Lucía Gómez', 'lucia.gomez@example.com', '987654321', '1985-03-22', 1),
('34567890', 'Diego Torres', 'diego.torres@example.com', '456789123', '1992-06-30', 0),
('45678901', 'Natalia Díaz', 'natalia.diaz@example.com', '321654987', '1995-08-12', 1),
('56789012', 'Fernando López', 'fernando.lopez@example.com', '654321789', '1989-12-02', 1),
('67890123', 'Ana Fernández', 'ana.fernandez@example.com', '789123456', '1993-07-08', 1),
('78901234', 'Carlos Ruiz', 'carlos.ruiz@example.com', '321456987', '1988-10-10', 0)

SELECT * FROM Cliente;


----- COMPRAS

INSERT INTO Compra (DNI_usuario) VALUES ('23456789');
INSERT INTO Compra (DNI_usuario) VALUES ('34567890');
INSERT INTO Compra (DNI_usuario) VALUES ('78901234');
INSERT INTO Compra (DNI_usuario) VALUES ('23456789');
INSERT INTO Compra (DNI_usuario) VALUES ('34567890');
INSERT INTO Compra (DNI_usuario) VALUES ('78901234');
INSERT INTO Compra (DNI_usuario) VALUES ('23456789');
INSERT INTO Compra (DNI_usuario) VALUES ('34567890');
INSERT INTO Compra (DNI_usuario) VALUES ('78901234');
INSERT INTO Compra (DNI_usuario) VALUES ('23456789');
INSERT INTO Compra (DNI_usuario) VALUES ('34567890');
INSERT INTO Compra (DNI_usuario) VALUES ('78901234');
INSERT INTO Compra (DNI_usuario) VALUES ('23456789');
INSERT INTO Compra (DNI_usuario) VALUES ('34567890');
INSERT INTO Compra (DNI_usuario) VALUES ('78901234');
INSERT INTO Compra (DNI_usuario) VALUES ('23456789');
INSERT INTO Compra (DNI_usuario) VALUES ('34567890');
INSERT INTO Compra (DNI_usuario) VALUES ('78901234');
INSERT INTO Compra (DNI_usuario) VALUES ('23456789');
INSERT INTO Compra (DNI_usuario) VALUES ('34567890');
INSERT INTO Compra (DNI_usuario) VALUES ('78901234');




---- HISTORIAL ESTADO DE COMPRAS

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 1);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 1);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 1);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (4, 1);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 2);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 2);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 2);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (4, 2);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 3);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 3);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 3);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (4, 3);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 4);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 4);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 4);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (4, 4);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 5);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 5);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 5);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (4, 5);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 6);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 7);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 7);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 8);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 8);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 8);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 9);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 10);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 11);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 11);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 12);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 12);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 12);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 13);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 13);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 13);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 14);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 15);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 16);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 16);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 17);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 18);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 19);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 19);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (3, 19);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (4, 19);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 20);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 20);

INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (1, 21);
INSERT INTO Historial_Estado (id_estado_compra, id_compra) VALUES (2, 21);


----- PRODUCTOS
INSERT INTO Producto (codigo_producto, nombre, descripcion, precio_compra, stock, precio_venta, id_proveedor, id_categoria, id_estado) VALUES 
(1001, 'Manzanas', 'Manzanas frescas y jugosas', 0.30, 150, 0.50, 1, 1, 1),
(1002, 'Leche Entera', 'Leche fresca y cremosa', 0.80, 200, 1.20, 1, 2, 1),
(1003, 'Pechuga de Pollo', 'Pechuga de pollo fresca', 3.50, 100, 5.00, 2, 3, 1),
(1004, 'Pan Integral', 'Pan integral de centeno', 1.00, 150, 1.50, 1, 4, 1),
(1005, 'Jugo de Naranja', 'Jugo natural de naranja', 1.50, 100, 2.00, 1, 5, 1),
(1006, 'Detergente Líquido', 'Detergente para lavar ropa', 2.00, 80, 3.00, 1, 6, 1),
(1007, 'Champú', 'Champú hidratante', 1.80, 60, 2.50, 1, 7, 1),
(1008, 'Pescado Congelado', 'Pescado fresco congelado', 4.00, 70, 6.00, 2, 8, 1),
(1009, 'Arroz Blanco', 'Arroz blanco de grano largo', 0.60, 100, 1.00, 1, 9, 1),
(1010, 'Chocolate con Almendras', 'Chocolate con trozos de almendra', 1.20, 120, 1.80, 1, 10, 1),
(1011, 'Plátanos', 'Plátanos maduros', 0.20, 200, 0.40, 1, 1, 1),
(1012, 'Yogur Natural', 'Yogur bajo en grasa', 0.90, 100, 1.30, 1, 2, 1),
(1013, 'Chorizo', 'Chorizo fresco', 3.00, 80, 4.50, 2, 3, 1),
(1014, 'Croissants', 'Croissants recién horneados', 0.75, 150, 1.20, 1, 4, 1),
(1015, 'Refresco de Cola', 'Bebida gaseosa sabor cola', 0.95, 100, 1.50, 1, 5, 1),
(1016, 'Limpiador Multiusos', 'Limpiador multiusos para superficies', 1.50, 90, 2.00, 1, 6, 1),
(1017, 'Desodorante', 'Desodorante antitranspirante', 1.20, 60, 1.80, 1, 7, 1),
(1018, 'Verduras Mixtas Congeladas', 'Mezcla de verduras congeladas', 1.80, 70, 2.50, 2, 8, 1),
(1019, 'Lentejas', 'Lentejas secas', 0.70, 110, 1.10, 1, 9, 1),
(1020, 'Galletas de Chocolate', 'Galletas rellenas de chocolate', 0.80, 130, 1.20, 1, 10, 1),
(1021, 'Naranjas', 'Naranjas frescas y dulces', 0.25, 140, 0.45, 1, 1, 1),
(1022, 'Leche Descremada', 'Leche descremada baja en grasa', 0.85, 180, 1.15, 1, 2, 1),
(1023, 'Salchichas', 'Salchichas frescas', 2.50, 100, 3.50, 2, 3, 1),
(1024, 'Pan de Ajo', 'Pan con ajo y perejil', 1.20, 90, 1.80, 1, 4, 1),
(1025, 'Agua Mineral', 'Agua mineral natural', 0.70, 150, 1.00, 1, 5, 1),
(1026, 'Limpiador de Baño', 'Limpiador específico para baño', 2.50, 60, 3.50, 1, 6, 1),
(1027, 'Jabón de Manos', 'Jabón líquido para manos', 1.00, 70, 1.50, 1, 7, 1),
(1028, 'Verduras Frescas', 'Mezcla de verduras frescas', 1.50, 80, 2.00, 1, 1, 1),
(1029, 'Filete de Res', 'Filete de res fresco', 5.00, 50, 8.00, 2, 3, 1),
(1030, 'Bollos de Canela', 'Bollos con sabor a canela', 0.90, 90, 1.30, 1, 4, 1),
(1031, 'Cerveza', 'Cerveza artesanal', 1.50, 100, 2.50, 1, 5, 1),
(1032, 'Detergente en Polvo', 'Detergente en polvo para ropa', 2.20, 80, 3.20, 1, 6, 1),
(1033, 'Pasta de Dientes', 'Pasta de dientes blanqueadora', 1.50, 70, 2.20, 1, 7, 1),
(1034, 'Pollo Congelado', 'Pollo entero congelado', 3.20, 50, 4.80, 2, 8, 1),
(1035, 'Cebolla', 'Cebolla fresca', 0.40, 140, 0.60, 1, 1, 1),
(1036, 'Mantequilla', 'Mantequilla sin sal', 1.80, 100, 2.50, 1, 2, 1),
(1037, 'Tocino', 'Tocino ahumado', 3.50, 50, 5.00, 2, 3, 1),
(1038, 'Pan de Molde', 'Pan de molde suave', 1.00, 120, 1.50, 1, 4, 1),
(1039, 'Té Frío', 'Té frío sabor durazno', 1.20, 90, 1.80, 1, 5, 1),
(1040, 'Esponja para Lavado', 'Esponja multiusos para lavar', 0.50, 80, 0.80, 1, 6, 1),
(1041, 'Crema Hidratante', 'Crema hidratante para piel seca', 2.50, 60, 3.50, 1, 7, 1),
(1042, 'Guisantes Congelados', 'Guisantes congelados', 1.00, 70, 1.50, 2, 8, 1),
(1043, 'Frijoles Negros', 'Frijoles negros enlatados', 0.90, 110, 1.20, 1, 9, 1),
(1044, 'Tortitas de Arroz', 'Tortitas de arroz crujientes', 1.00, 100, 1.50, 1, 10, 1),
(1045, 'Pimientos', 'Pimientos frescos', 0.50, 130, 0.80, 1, 1, 1),
(1046, 'Batido de Fresa', 'Batido de fresa natural', 1.50, 90, 2.00, 1, 5, 1),
(1047, 'Mayonesa', 'Mayonesa cremosa', 1.00, 80, 1.50, 1, 9, 1),
(1048, 'Tortillas de Maíz', 'Tortillas de maíz frescas', 1.50, 70, 2.00, 1, 8, 1),
(1049, 'Gelatina', 'Gelatina de sabor frutal', 0.60, 120, 1.00, 1, 10, 1),
(1050, 'Zanahorias', 'Zanahorias frescas y crujientes', 0.25, 130, 0.50, 1, 1, 1),
(1051, 'Queso Mozzarella', 'Queso mozzarella fresco', 2.50, 90, 3.50, 1, 2, 1),
(1052, 'Jamón Serrano', 'Jamón serrano de alta calidad', 4.50, 50, 6.50, 2, 3, 1),
(1053, 'Rosquillas', 'Rosquillas glaseadas', 0.90, 100, 1.40, 1, 4, 1),
(1054, 'Refresco de Limón', 'Refresco de limón gaseoso', 1.00, 150, 1.50, 1, 5, 1),
(1055, 'Desinfectante de Pisos', 'Desinfectante para pisos de alto rendimiento', 1.80, 70, 2.50, 1, 6, 1),
(1056, 'Acondicionador', 'Acondicionador para cabello seco', 2.00, 60, 2.80, 1, 7, 1),
(1057, 'Filetes de Merluza Congelada', 'Filetes de merluza congelada de alta calidad', 3.50, 60, 5.00, 2, 8, 1),
(1058, 'Harina de Trigo', 'Harina de trigo refinada', 0.90, 120, 1.20, 1, 9, 1),
(1059, 'Chicles de Menta', 'Chicles sabor menta', 0.50, 200, 0.80, 1, 10, 1),
(1060, 'Espinacas Frescas', 'Espinacas frescas y orgánicas', 0.80, 110, 1.20, 1, 1, 1),
(1061, 'Leche de Almendra', 'Leche de almendra sin azúcar', 1.50, 90, 2.20, 1, 2, 1),
(1062, 'Costillas de Cerdo', 'Costillas de cerdo marinadas', 5.00, 40, 7.50, 2, 3, 1),
(1063, 'Pan de Viena', 'Pan de viena suave y esponjoso', 1.00, 100, 1.50, 1, 4, 1),
(1064, 'Agua con Gas', 'Agua mineral con gas', 0.70, 140, 1.00, 1, 5, 1),
(1065, 'Detergente para Platos', 'Detergente para platos concentrado', 1.50, 90, 2.00, 1, 6, 1),
(1066, 'Gel de Ducha', 'Gel de ducha refrescante', 1.80, 60, 2.50, 1, 7, 1),
(1067, 'Alitas de Pollo Congeladas', 'Alitas de pollo congeladas y listas para cocinar', 3.20, 50, 4.80, 2, 8, 1),
(1068, 'Pasta Integral', 'Pasta de trigo integral', 1.20, 100, 1.80, 1, 9, 1),
(1069, 'Caramelos de Fresa', 'Caramelos masticables de fresa', 0.80, 150, 1.20, 1, 10, 1),
(1070, 'Pepinos', 'Pepinos frescos y crujientes', 0.30, 120, 0.60, 1, 1, 1),
(1071, 'Manteca', 'Manteca vegetal', 1.80, 80, 2.40, 1, 2, 1),
(1072, 'Chuletón de Res', 'Chuletón de res de alta calidad', 6.00, 30, 8.50, 2, 3, 1),
(1073, 'Bizcochos', 'Bizcochos caseros', 0.80, 120, 1.30, 1, 4, 1),
(1074, 'Cerveza Negra', 'Cerveza negra artesanal', 1.80, 80, 2.60, 1, 5, 1),
(1075, 'Limpiador de Vidrios', 'Limpiador de vidrios sin marcas', 1.50, 90, 2.10, 1, 6, 1),
(1076, 'Cuchillas de Afeitar', 'Cuchillas de afeitar desechables', 1.20, 70, 1.80, 1, 7, 1),
(1077, 'Pizza Congelada', 'Pizza congelada lista para hornear', 3.50, 60, 5.00, 2, 8, 1),
(1078, 'Café Molido', 'Café molido de alta calidad', 2.50, 100, 3.50, 1, 9, 1),
(1079, 'Patatas Fritas', 'Patatas fritas crujientes', 1.00, 150, 1.50, 1, 10, 1),
(1080, 'Lechuga', 'Lechuga fresca y crujiente', 0.50, 110, 0.80, 1, 1, 1),
(1081, 'Queso Parmesano', 'Queso parmesano rallado', 2.80, 90, 4.00, 1, 2, 1),
(1082, 'Chorizo Ibérico', 'Chorizo ibérico de bellota', 4.50, 60, 6.50, 2, 3, 1),
(1083, 'Pan Rústico', 'Pan rústico con masa madre', 1.20, 80, 1.80, 1, 4, 1),
(1084, 'Batido de Chocolate', 'Batido de chocolate cremoso', 1.50, 90, 2.20, 1, 5, 1),
(1085, 'Desengrasante', 'Desengrasante potente para cocina', 1.70, 70, 2.50, 1, 6, 1),
(1086, 'Loción Corporal', 'Loción hidratante para el cuerpo', 2.00, 60, 3.00, 1, 7, 1),
(1087, 'Patatas Congeladas', 'Patatas congeladas para freír', 2.00, 70, 3.00, 2, 8, 1),
(1088, 'Azúcar Morena', 'Azúcar morena de caña', 1.00, 100, 1.50, 1, 9, 1),
(1089, 'Barritas de Cereal', 'Barritas energéticas de avena y miel', 1.20, 130, 1.80, 1, 10, 1);



----- PAGOS

INSERT INTO Pago (total, id_metodo) VALUES (250.50, 1); -- Efectivo
INSERT INTO Pago (total, id_metodo) VALUES (320.75, 2); -- Transferencia
INSERT INTO Pago (total, id_metodo) VALUES (150.00, 3); -- Débito
INSERT INTO Pago (total, id_metodo) VALUES (520.90, 4); -- Tarjeta de crédito
INSERT INTO Pago (total, id_metodo) VALUES (100.25, 1); -- Efectivo
INSERT INTO Pago (total, id_metodo) VALUES (780.40, 2); -- Transferencia
INSERT INTO Pago (total, id_metodo) VALUES (340.20, 3); -- Débito
INSERT INTO Pago (total, id_metodo) VALUES (230.30, 4); -- Tarjeta de crédito
INSERT INTO Pago (total, id_metodo) VALUES (65.90, 1);  -- Efectivo
INSERT INTO Pago (total, id_metodo) VALUES (480.99, 2); -- Transferencia
INSERT INTO Pago (total, id_metodo) VALUES (299.99, 3); -- Débito
INSERT INTO Pago (total, id_metodo) VALUES (999.99, 4); -- Tarjeta de crédito
INSERT INTO Pago (total, id_metodo) VALUES (120.10, 1); -- Efectivo
INSERT INTO Pago (total, id_metodo) VALUES (199.80, 2); -- Transferencia
INSERT INTO Pago (total, id_metodo) VALUES (80.15, 3);  -- Débito
INSERT INTO Pago (total, id_metodo) VALUES (320.99, 4); -- Tarjeta de crédito
INSERT INTO Pago (total, id_metodo) VALUES (140.50, 1); -- Efectivo
INSERT INTO Pago (total, id_metodo) VALUES (645.00, 2); -- Transferencia
INSERT INTO Pago (total, id_metodo) VALUES (270.75, 3); -- Débito
INSERT INTO Pago (total, id_metodo) VALUES (390.60, 4); -- Tarjeta de crédito


---- VENTAS

INSERT INTO Venta (DNI_usuario, DNI_cliente, id_pago) VALUES 
('12345678', '89012345', 1),
('12345678', '89012345', 2),
('12345678', '89012345', 3),
('12345678', '89012345', 4),
('12345678', '89012345', 5),
('12345678', '89012345', 6),
('12345678', '89012345', 7),
('12345678', '89012345', 8),
('12345678', '89012345', 9),
('12345678', '89012345', 10),
('12345678', '89012345', 11),
('12345678', '89012345', 12),
('12345678', '55567890', 13),
('12345678', '55567890', 14),
('12345678', '55567890', 15),
('12345678', '55567890', 16),
('12345678', '55567890', 17),
('12345678', '55567890', 18),
('12345678', '55567890', 19),
('12345678', '55567890', 20);

SELECT cod_venta FROM Venta WHERE cod_venta IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
SELECT * FROM Venta

----- DETALLE_ VENTA

INSERT INTO Producto_Venta (cod_venta, id_producto, cantidad) VALUES 
(2, 1003, 1),
(2, 1004, 4),
(3, 1005, 2),
(3, 1006, 1),
(4, 1007, 3),
(4, 1008, 1),
(5, 1009, 5),
(5, 1010, 2),
(6, 1011, 3),
(6, 1012, 4),
(7, 1013, 1),
(7, 1014, 3),
(8, 1015, 6),
(8, 1016, 2),
(9, 1017, 1),
(9, 1018, 3),
(10, 1019, 2),
(10, 1020, 5),
(11, 1021, 3),
(11, 1022, 4),
(12, 1023, 1),
(12, 1024, 3),
(13, 1025, 6),
(13, 1026, 2),
(14, 1027, 1),
(14, 1028, 3),
(15, 1029, 2),
(15, 1030, 5),
(16, 1031, 3),
(16, 1032, 4),
(17, 1033, 1),
(17, 1034, 3),
(18, 1035, 6),
(18, 1036, 2),
(19, 1037, 1),
(19, 1038, 3),
(20, 1039, 2),
(20, 1040, 5);


---- FACTURAS

INSERT INTO Factura (cod_venta, id_negocio)
VALUES 
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1);


---- Producto Compra

INSERT INTO Producto_Compra (cantidad, id_compra, id_producto) VALUES 
(3, 1, 1001),  -- 3 Manzanas en la compra 1
(2, 1, 1002),  -- 2 Leche Entera en la compra 1
(1, 1, 1003),  -- 1 Pechuga de Pollo en la compra 1
(5, 2, 1004),  -- 5 Pan Integral en la compra 2
(1, 2, 1005),  -- 1 Jugo de Naranja en la compra 2
(2, 2, 1006),  -- 2 Detergente Líquido en la compra 2
(1, 3, 1007),  -- 1 Champú en la compra 3
(4, 3, 1008),  -- 4 Pescado Congelado en la compra 3
(3, 3, 1009),  -- 3 Arroz Blanco en la compra 3
(2, 4, 1010),  -- 2 Chocolate con Almendras en la compra 4
(1, 4, 1011),  -- 1 Plátano en la compra 4
(3, 5, 1012),  -- 3 Yogur Natural en la compra 5
(2, 5, 1013),  -- 2 Chorizos en la compra 5
(4, 6, 1014),  -- 4 Croissants en la compra 6
(1, 6, 1015),  -- 1 Refresco de Cola en la compra 6
(2, 7, 1016),  -- 2 Limpiador Multiusos en la compra 7
(3, 7, 1017),  -- 3 Desodorantes en la compra 7
(1, 8, 1018),  -- 1 Verduras Mixtas Congeladas en la compra 8
(2, 8, 1019),  -- 2 Lentejas en la compra 8
(5, 9, 1020),  -- 5 Galletas de Chocolate en la compra 9
(3, 9, 1021),  -- 3 Naranjas en la compra 9
(2, 10, 1022), -- 2 Leche Descremada en la compra 10
(1, 10, 1023), -- 1 Salchicha en la compra 10
(4, 11, 1024), -- 4 Pan de Ajo en la compra 11
(2, 11, 1025), -- 2 Agua Mineral en la compra 11
(3, 12, 1026), -- 3 Limpiador de Baño en la compra 12
(1, 12, 1027), -- 1 Jabón de Manos en la compra 12
(2, 13, 1028), -- 2 Verduras Frescas en la compra 13
(5, 13, 1029), -- 5 Filetes de Res en la compra 13
(1, 14, 1030), -- 1 Bollos de Canela en la compra 14
(3, 14, 1031), -- 3 Cervezas en la compra 14
(2, 15, 1032), -- 2 Detergentes en Polvo en la compra 15
(1, 15, 1033), -- 1 Pasta de Dientes en la compra 15
(4, 16, 1034), -- 4 Pollo Congelado en la compra 16
(2, 16, 1035), -- 2 Cebollas en la compra 16
(3, 17, 1036), -- 3 Mantequillas en la compra 17
(1, 17, 1037), -- 1 Tocino en la compra 17
(5, 18, 1038), -- 5 Panes de Molde en la compra 18
(2, 18, 1039), -- 2 Té Frío en la compra 18
(3, 19, 1040), -- 3 Esponjas para Lavado en la compra 19
(1, 19, 1041), -- 1 Crema Hidratante en la compra 19
(2, 20, 1042), -- 2 Guisantes Congelados en la compra 20
(4, 20, 1043); -- 4 Frijoles Negros en la compra 20




----- TICKETS

INSERT INTO Ticket (cod_venta) VALUES
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);
