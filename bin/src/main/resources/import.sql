/* Populate tables */
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('David', 'Haye', 'davidhaye@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Marina', 'Vaque', 'maru_vaque@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Agustin', 'Haye Vaque', 'agushv@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Hugo', 'Vaque', 'hv@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Patricia', 'Sanchez', 'pms@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Guillermo', 'Haye', 'gh@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Laura', 'Souto', 'ls@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Alicia', 'Avalos', 'aa@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Catalina', 'Pal', 'cp@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Federico', 'Diaz', 'fd@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Abigail', 'Feraud', 'af@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Cristian', 'Luengo', 'cl@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Juan', 'Miranda', 'jm@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Facundo', 'Galvan', 'fg@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Colo', 'Franzzoi', 'cf@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Rodrigo', 'Duran', 'rd@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Luciana', 'Flores', 'lf@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Gabriel', 'Roncaglia', 'gr@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Marcos', 'Haye', 'mh@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Diego', 'Haye', 'dh@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Cinna', 'Haye Vaque', 'chv@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Hadda', 'Vaque', 'hav@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Toto', 'Haye', 'th@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Toto', 'Haye', 'th@hotmail.com', '2021-03-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Toto', 'Haye', 'th@hotmail.com', '2021-03-24', '');

/* Populate tabla productos */
INSERT INTO productos (nombre, precio, create_at) VALUES ('Panasonic Pantalla LCD', 259990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Camara Digital DSC-W320B', 123490, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Apple iPod shuffle', 1499990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony notebook z110 LCD', 37990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Hewlett Packard Multifuncional f2280', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Bianchi Bicicleta Aro 26', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mica Comoda 5 Cajones', 299990, NOW());

/* Creamos algunas facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura Bicicleta', 'Alguna nota importante!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);

