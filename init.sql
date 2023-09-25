-- Crear la tabla de usuarios
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN NOT NULL
);

-- Insertar algunas filas de ejemplo
INSERT INTO users (usuario, password, is_active) VALUES
    ('usuario1', 'contraseña1', 1),
    ('usuario2', 'contraseña2', 1),
    ('usuario3', 'contraseña3', 1),
    ('usuario4', 'contraseña4', 1),
    ('usuario5', 'contraseña5', 0),
    ('usuario6', 'contraseña6', 0),
    ('usuario7', 'contraseña7', 1),
    ('usuario8', 'contraseña8', 1),
    ('usuario9', 'contraseña9', 0),
    ('usuario10', 'contraseña10', 1);
