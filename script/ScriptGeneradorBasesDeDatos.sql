CREATE DATABASE sistema_gestor_de_ventas

USE sistema_gestor_de_ventas

CREATE TABLE Categoria
(
  id_categoria INT NOT NULL IDENTITY(1,1),
  nombre VARCHAR(200) NOT NULL,
  CONSTRAINT PK_categoria PRIMARY KEY (id_categoria),
  CONSTRAINT UQ_nombre_categoria UNIQUE (nombre)
);

CREATE TABLE Rol
(
  id_rol INT NOT NULL IDENTITY(1,1),
  nombre VARCHAR(200) NOT NULL,
  CONSTRAINT PK_rol PRIMARY KEY (id_rol),
  CONSTRAINT CK_rol_nombre CHECK (nombre IN ('vendedor', 'administrador', 'supervisor')),
  CONSTRAINT UQ_nombre_rol UNIQUE (nombre)
);

CREATE TABLE Negocio
(
  id_negocio INT NOT NULL IDENTITY(1,1),
  nombre VARCHAR(200) NOT NULL,
  rut VARCHAR(200) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  imagen VARCHAR(200),
  CONSTRAINT PK_negocio PRIMARY KEY (id_negocio),
  CONSTRAINT UQ_rut UNIQUE (rut)
);

CREATE TABLE Metodo_Pago
(
  id_metodo INT NOT NULL IDENTITY(1,1),
  nombre VARCHAR(200) NOT NULL,
  CONSTRAINT PK_metodo_pago PRIMARY KEY (id_metodo),
  CONSTRAINT CK_nombre_metodo_pago CHECK (nombre IN ('efectivo', 'transferencia', 'debito', 'tarjeta de credito'))
);

CREATE TABLE Estado
(
  id_estado INT NOT NULL,
  nombre VARCHAR(200) NOT NULL,
  CONSTRAINT PK_estado PRIMARY KEY (id_estado),
  CONSTRAINT CK_nombre_estado CHECK (nombre IN ('activo','inactivo')),
  CONSTRAINT CK_id_estado CHECK (id_estado IN (1, 0)),
  CONSTRAINT UQ_nombre_estado UNIQUE (nombre)
);

CREATE TABLE Estado_Compra
(
  id_estado_compra INT NOT NULL IDENTITY(1,1),
  nombre VARCHAR (200) NOT NULL,
  CONSTRAINT PK_estado_compra PRIMARY KEY (id_estado_compra),
  CONSTRAINT CK_nombre_estadoCompra CHECK (nombre IN ('pagado', 'en proceso', 'enviado', 'entregado')),
  CONSTRAINT UQ_nombre_estadoCompra UNIQUE (nombre)
);

CREATE TABLE Proveedor
(
  id_proveedor INT NOT NULL IDENTITY(1,1),
  nombre VARCHAR(200) NOT NULL,
  direccion VARCHAR(200),
  telefono VARCHAR(200),
  email VARCHAR(200),
  web VARCHAR(200),
  id_estado INT NOT NULL,
  CONSTRAINT PK_proveedor PRIMARY KEY (id_proveedor),
  CONSTRAINT FK_proveedor_estado FOREIGN KEY (id_estado) REFERENCES Estado(id_estado),
  CONSTRAINT UQ_telefono_proveedor UNIQUE (telefono),
  CONSTRAINT UQ_email_proveedor UNIQUE (email),
  CONSTRAINT UQ_web_proveedor UNIQUE(web)
);

CREATE TABLE Usuario
(
  DNI_usuario VARCHAR (200) NOT NULL,
  nombre VARCHAR(200) NOT NULL,
  email VARCHAR(200) NOT NULL,
  pass VARCHAR(200) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  imagen_usuario VARCHAR (200) NOT NULL,
  id_rol INT NOT NULL,
  id_estado INT NOT NULL,
  CONSTRAINT PK_usuario PRIMARY KEY (DNI_usuario),
  CONSTRAINT FK_usuario_rol FOREIGN KEY (id_rol) REFERENCES Rol(id_rol),
  CONSTRAINT FK_usuario_estado FOREIGN KEY (id_estado) REFERENCES Estado(id_estado),
  CONSTRAINT UQ_email_usuario UNIQUE (email),
  CONSTRAINT CK_dni_longitud_usuario CHECK (LEN (DNI_usuario) < 9),
  CONSTRAINT CK_fecha_nacimiento CHECK (fecha_nacimiento <= DATEADD(YEAR, -18, GETDATE()))
);


CREATE TABLE Cliente
(
  DNI_cliente VARCHAR (200) NOT NULL,
  nombre VARCHAR(200) NOT NULL,
  correo VARCHAR(200),
  telefono VARCHAR (200),
  fecha_nacimiento DATE NOT NULL,
  id_estado INT NOT NULL,
  CONSTRAINT PK_cliente PRIMARY KEY (DNI_cliente),
  CONSTRAINT FK_cliente_estado FOREIGN KEY (id_estado) REFERENCES Estado(id_estado),
  CONSTRAINT UQ_correo_cliente UNIQUE (correo),
  CONSTRAINT UQ_telefono_cliente UNIQUE (correo),
  CONSTRAINT CK_dni_longitud_cliente CHECK (LEN (DNI_cliente) < 9)
);

CREATE TABLE Compra
(
  id_compra INT NOT NULL IDENTITY(1,1),
  fecha_compra DATE NOT NULL,
  DNI_usuario VARCHAR (200) NOT NULL,
  CONSTRAINT PK_compra PRIMARY KEY (id_compra),
  CONSTRAINT FK_compra_usuario FOREIGN KEY (DNI_usuario) REFERENCES Usuario(DNI_usuario),
);

ALTER TABLE Compra ADD CONSTRAINT DF_fecha_compra DEFAULT GETDATE() FOR fecha_compra;

CREATE TABLE Historial_Estado
(
  fecha_estado DATE NOT NULL,
  id_estado_compra INT NOT NULL,
  id_compra INT NOT NULL,
  CONSTRAINT PK_Historial_Estado PRIMARY KEY (id_estado_compra, id_compra),
  CONSTRAINT FK_Historial_Estado_Estado_Compra FOREIGN KEY (id_estado_compra) REFERENCES Estado_Compra(id_estado_compra),
  CONSTRAINT FK_Historial_Estado_Compra FOREIGN KEY (id_compra) REFERENCES Compra(id_compra)
);
ALTER TABLE Historial_Estado ADD CONSTRAINT DF_fecha_estado DEFAULT GETDATE() FOR fecha_estado;

CREATE TABLE Pago
(
  id_pago INT NOT NULL IDENTITY(1,1),
  total DECIMAL(10, 2) NOT NULL,
  id_metodo INT NOT NULL,
  CONSTRAINT PK_pago PRIMARY KEY (id_pago),
  CONSTRAINT FK_pago_metodoPago FOREIGN KEY (id_metodo) REFERENCES Metodo_Pago(id_metodo)
);

CREATE TABLE Producto
(
  codigo_producto INT NOT NULL,
  nombre VARCHAR(200) NOT NULL,
  descripcion VARCHAR(200) NOT NULL,
  precio_compra DECIMAL(10, 2) NOT NULL,
  stock INT NOT NULL,
  precio_venta DECIMAL(10, 2),
  id_proveedor INT NOT NULL,
  id_categoria INT NOT NULL,
  id_estado INT NOT NULL,
  CONSTRAINT PK_producto PRIMARY KEY (codigo_producto),
  CONSTRAINT FK_producto_proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
  CONSTRAINT FK_producto_categoria FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
  CONSTRAINT FK_producto_estado FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
);

CREATE TABLE Venta
(
  cod_venta INT NOT NULL IDENTITY(1,1),
  fecha_venta DATE NOT NULL,
  DNI_usuario VARCHAR (200) NOT NULL,
  DNI_cliente VARCHAR (200) NOT NULL,
  id_pago INT NOT NULL,
  CONSTRAINT PK_venta PRIMARY KEY (cod_venta),
  CONSTRAINT FK_venta_usuario FOREIGN KEY (DNI_usuario) REFERENCES Usuario(DNI_usuario),
  CONSTRAINT FK_venta_cliente FOREIGN KEY (DNI_cliente) REFERENCES Cliente(DNI_cliente),
  CONSTRAINT FK_venta_pago FOREIGN KEY (id_pago) REFERENCES Pago(id_pago),
);
ALTER TABLE Venta ADD CONSTRAINT DF_fecha_venta DEFAULT GETDATE() FOR fecha_venta;


CREATE TABLE Factura
(
  numero_factura INT NOT NULL IDENTITY(1,1),
  cod_venta INT NOT NULL,
  id_negocio INT NOT NULL,
  CONSTRAINT PK_factura PRIMARY KEY (numero_factura),
  CONSTRAINT FK_factura_venta FOREIGN KEY (cod_venta) REFERENCES Venta(cod_venta),
  CONSTRAINT FK_factura_negocio FOREIGN KEY (id_negocio) REFERENCES Negocio(id_negocio)
);

CREATE TABLE Producto_Venta
(
  cantidad INT NOT NULL,
  id_producto INT NOT NULL,
  cod_venta INT NOT NULL,
  CONSTRAINT PK_producto_venta PRIMARY KEY (id_producto, cod_venta),
  CONSTRAINT FK_producto_venta_producto FOREIGN KEY (id_producto) REFERENCES Producto(codigo_producto),
  CONSTRAINT FK_producto_venta_venta FOREIGN KEY (cod_venta) REFERENCES Venta(cod_venta)
);

CREATE TABLE Producto_Compra
(
  cantidad INT NOT NULL,
  id_compra INT NOT NULL,
  id_producto INT NOT NULL,
  CONSTRAINT PK_producto_compra PRIMARY KEY (id_compra, id_producto),
  CONSTRAINT FK_producto_compra_compra FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
  CONSTRAINT FK_producto_compra_producto FOREIGN KEY (id_producto) REFERENCES Producto(codigo_producto)
);

CREATE TABLE Ticket
(
  id_ticket INT NOT NULL IDENTITY(1,1),
  cod_venta INT NOT NULL,
  CONSTRAINT PK_ticket PRIMARY KEY (id_ticket),
  CONSTRAINT FK_tikcket_venta FOREIGN KEY (cod_venta) REFERENCES Venta(cod_venta)
);


