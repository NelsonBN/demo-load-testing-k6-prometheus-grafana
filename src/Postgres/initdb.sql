CREATE TABLE Product (
  Id SERIAL PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Quantity INTEGER NOT NULL);


INSERT INTO Product
    (Id , Name, Quantity)
VALUES
    (1  , 'Motherboard', 23),
    (2  , 'Keyboard', 4),
    (3  , 'Mouse', 7),
    (4  , 'Monitor', 15),
    (5  , 'RAM', 50),
    (6  , 'Hard Drive', 32),
    (7  , 'Graphics Card', 10),
    (8  , 'Processor', 12),
    (9  , 'Power Supply', 20),
    (10 , 'Optical Drive', 8),
    (11 , 'SSD', 45),
    (12 , 'Cooling Fan', 30),
    (13 , 'USB Cable', 100),
    (14 , 'HDMI Cable', 75),
    (15 , 'Laptop', 20),
    (16 , 'Webcam', 25),
    (17 , 'Microphone', 15),
    (18 , 'Speakers', 40),
    (19 , 'Router', 10),
    (20 , 'Modem', 5),
    (21 , 'Mouse Pad', 60),
    (22 , 'Laptop Stand', 25),
    (23 , 'Printer', 10),
    (24 , 'Scanner', 7),
    (25 , 'External HDD', 20),
    (26 , 'Flash Drive', 100),
    (27 , 'SD Card', 50),
    (28 , 'Card Reader', 30),
    (29 , 'Tablet', 10),
    (30 , 'Smartphone', 40),
    (31 , 'Smartwatch', 15),
    (32 , 'Game Console', 10),
    (33 , 'VR Headset', 5),
    (34 , 'Gaming Chair', 10),
    (35 , 'Desk', 15),
    (36 , 'Office Chair', 20),
    (37 , 'Projector', 5),
    (38 , 'Camera', 10),
    (39 , 'Tripod', 15),
    (40 , 'Camera Lens', 10),
    (41 , 'Drone', 5),
    (42 , 'Earphones', 50),
    (43 , 'Headphones', 30),
    (44 , 'Bluetooth Speaker', 25),
    (45 , 'Phone Case', 100),
    (46 , 'Screen Protector', 75),
    (47 , 'Stylus', 20),
    (48 , 'Drawing Tablet', 10),
    (49 , 'Graphic Card', 5),
    (50 , 'Network Switch', 10),
    (51 , 'Ethernet Cable', 50),
    (52 , 'Wi-Fi Extender', 15),
    (53 , 'NAS Drive', 10),
    (54 , 'Server Rack', 5),
    (55 , 'KVM Switch', 10),
    (56 , 'Surge Protector', 20),
    (57 , 'Battery Backup', 10),
    (58 , 'Digital Pen', 5),
    (59 , 'Software License', 50),
    (60 , 'Operating System', 10),
    (61 , 'Antivirus', 15),
    (62 , 'Firewall', 10),
    (63 , 'VPN Subscription', 20),
    (64 , 'Cloud Storage', 25),
    (65 , 'Email Hosting', 10),
    (66 , 'Web Hosting', 5),
    (67 , 'Domain Registration', 10),
    (68 , 'SSL Certificate', 15),
    (69 , 'Database Server', 10),
    (70 , 'Virtual Machine', 5),
    (71 , 'Docking Station', 10),
    (72 , 'Charging Station', 20),
    (73 , 'Car Charger', 25),
    (74 , 'Wall Charger', 10),
    (75 , 'Wireless Charger', 15),
    (76 , 'Smart Bulb', 20),
    (77 , 'Smart Plug', 10),
    (78 , 'Smart Thermostat', 5),
    (79 , 'Smart Doorbell', 10),
    (80 , 'Smart Lock', 15),
    (81 , 'Home Security Camera', 20),
    (82 , 'Smart Fridge', 5),
    (83 , 'Smart Oven', 10),
    (84 , 'Smart Washer', 15),
    (85 , 'Smart Dryer', 10),
    (86 , 'Robot Vacuum', 5),
    (87 , 'Fitness Tracker', 10),
    (88 , 'Treadmill', 20),
    (89 , 'Elliptical', 15),
    (90 , 'Stationary Bike', 10),
    (91 , 'Rowing Machine', 5),
    (92 , 'Dumbbells', 50),
    (93 , 'Kettlebells', 30),
    (94 , 'Resistance Bands', 25),
    (95 , 'Yoga Mat', 20),
    (96 , 'Jump Rope', 15),
    (97 , 'Foam Roller', 10),
    (98 , 'Pilates Ball', 5),
    (99 , 'Gym Gloves', 10),
    (100, 'Bluetooth Adapter', 60);


SELECT setval('product_id_seq', (SELECT MAX(Id) FROM Product));
