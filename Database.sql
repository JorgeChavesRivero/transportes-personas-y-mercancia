CREATE DATABASE IF NOT EXISTS ruta_norte_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

USE ruta_norte_db;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    correo VARCHAR(100) NOT NULL UNIQUE,
    clave VARCHAR(255) NOT NULL,
    rol VARCHAR(20) NOT NULL DEFAULT 'admin',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS servicios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

CREATE TABLE IF NOT EXISTS vehiculos (
    placa VARCHAR(10) PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    servicio_id INT,
    estado ENUM('En ruta', 'Disponible', 'En alquiler', 'Mantenimiento') DEFAULT 'Disponible',
    FOREIGN KEY (servicio_id) REFERENCES servicios(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_nombre VARCHAR(100) NOT NULL,
    cliente_telefono VARCHAR(20) NOT NULL,
    servicio_id INT,
    fecha_solicitud DATE NOT NULL,
    estado ENUM('Pendiente', 'Atendido', 'Cancelado') DEFAULT 'Pendiente',
    FOREIGN KEY (servicio_id) REFERENCES servicios(id) ON DELETE SET NULL
);

INSERT INTO usuarios (correo, clave, rol) VALUES
('admin@rutanorte.com', '123456', 'admin');

INSERT INTO servicios (id, nombre, descripcion) VALUES
(1, 'Transporte de Carga', 'Mercancía entre ciudades y entregas a bodega'),
(2, 'Transporte de Personas', 'Traslado de personal, equipos de trabajo y eventos'),
(3, 'Alquiler de Vehículo', 'Alquiler por días, semanas o meses');

INSERT INTO vehiculos (placa, tipo, servicio_id, estado) VALUES
('ABC 123', 'Camión liviano', 1, 'En ruta'),
('DEF 456', 'Tractocamión', 1, 'En ruta'),
('GHI 789', 'Vehículo de pasajeros', 2, 'Disponible'),
('JKL 012', 'Camión liviano', 3, 'En alquiler');

INSERT INTO reservas (cliente_nombre, cliente_telefono, servicio_id, fecha_solicitud, estado) VALUES
('Juan Pérez', '+57 300 123 4567', 1, '2026-10-02', 'Atendido'),
('María Gómez', '+57 311 987 6543', 2, '2026-10-03', 'Pendiente'),
('Carlos Ruiz', '+57 320 555 1234', 3, '2026-10-05', 'Pendiente');