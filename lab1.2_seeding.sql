INSERT INTO car (vin, manufacturer, model, car_year, color_id)
VALUES ('K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
       ('DAM41UDN3CHU2WVF6','Volvo', 'V60', '2019', 'Gray'),
       ('DAM41UDN3CHU2WVF', 'Volvo', 'V60 Cross Country', '2019', 'Gray');
       ;

INSERT INTO salesperson (staff_id, staff_name, store) VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Miami'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'Sao Paulo');

INSERT INTO invoice (inv_num, inv_date, car_id, cust_id, staff_id) VALUES
('852399038', '2018-08-22', '3K096I98581DHSNUP', 1, 3),  -- error IDK WHY ?!!
('731166526', '2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5),  
('271135104', '2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7); 

INSERT INTO cust (cust_id, name, phone, email, address, zipcode) VALUES 
    (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera 14 Madrid Spain', 28045),
    (20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St Miami United States', 33130),
    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée Paris France', 75008);