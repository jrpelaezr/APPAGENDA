-- Crear el esquema BASEDATOS si no existe y usarlo
CREATE SCHEMA IF NOT EXISTS BASEDATOS;
USE BASEDATOS;

-- Crear la tabla agenda
CREATE TABLE IF NOT EXISTS agenda (
    codigoper VARCHAR(3) NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    direccion VARCHAR(45),
    telefijo VARCHAR(9),
    telefmovi VARCHAR(10),
    email VARCHAR(30),
    fbc VARCHAR(30),
    distrito_id INT,
    CONSTRAINT agenda_codigoper_pk PRIMARY KEY (codigoper)
);

-- Insertar valores en la tabla agenda con distrito_id asociado
INSERT INTO agenda VALUES
('1', 'carlos', 'serna', 'av. palmeras 145', '043524875', '942587568', 'carlos@hotmail.com', 'carlos serna', 1),
('2', 'carmen', 'figueroa', 'av. alamos f-5', '043154784', '943124578', 'carmen@hotmail.com', 'carmen figeroa', 2),
('3', 'juan', 'perez', 'av.pacaes', '043758694', '943582674', 'juan@hotmail.com', 'juan perez', 1),
('4', 'jean', 'ramirez', 'av.pardo 580', '043587469', '941748596', 'jean@hotmail.com', 'jean ramirez', 2),
('5', 'melisa', 'cavero', 'av.huaraz 220', '043152648', '942121415', 'melisa@hotmail.com', 'melisa cavero', 1),
('6', 'klaus', 'arteaga', 'av.lima 145', '048757686', '943332524', 'klaus@hotmail.com', 'klaus arteaga', 2),
('7', 'octavio', 'baldarrago', 'av.galvez 874', '043584736', '941747485', 'octavio585@hotmail.com', 'octavio baldarrago', 1),
('8', 'angela', 'suarez', 'av.pardo 1894', '043252526', '941741212', 'angela_humilde@hotmail.com', 'angela suarez', 2),
('9', 'antonhy', 'orbegozo', 'av.palmeras 456', '043151919', '942321212', 'antonhyelgozo@hotmail.com', 'antonhy orbegozo', 1),
('10', 'giancarlo', 'sarrin', 'av.huaraz 123', '043411742', '9744105472', 'giancarlosarrines@hotmail.com', 'giancarlo sarrin', 2);

-- Crear la tabla distrito
CREATE TABLE IF NOT EXISTS distrito (
    codigodis INT NOT NULL,
    nombredis VARCHAR(45) NOT NULL,
    CONSTRAINT distrito_codigodis_pk PRIMARY KEY (codigodis)
);

-- Insertar valores en la tabla distrito
INSERT INTO distrito VALUES
(1, 'Chimbote'),
(2, 'Nuevo Chimbote');

COMMIT;
