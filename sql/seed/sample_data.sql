INSERT INTO city (name) VALUES
('Київ');

INSERT INTO street_type (name) VALUES
('вулиця'),
('проспект'),
('бульвар');

INSERT INTO street (city_id, street_type_id, name) VALUES
(1, 1, 'Хрещатик'),
(1, 1, 'Володимирська'),
(1, 2, 'Перемоги'),
(1, 3, 'Лесі Українки');

INSERT INTO house (street_id, house_number, building, latitude, longitude, postal_code) VALUES
(1, '1', NULL, 50.45010000, 30.52340000, '01001'),
(1, '22', 'А', 50.44750000, 30.52210000, '01001'),
(2, '60', NULL, 50.44220000, 30.51470000, '01033'),
(3, '37', 'корпус 1', 50.45040000, 30.45780000, '03056'),
(4, '26', NULL, 50.42410000, 30.54080000, '01133');
