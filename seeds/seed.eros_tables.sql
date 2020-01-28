BEGIN;

TRUNCATE
    eros_garage,
    eros_vehicles,
    eros_users,
    eros_service
    RESTART IDENTITY CASCADE;

INSERT INTO eros_users
    (user_name, full_name, password)
VALUES
    ('demo', 'Demo User', 'demo123'),
    ('jdoe', 'Jane Doe', 'jane-password'),
    ('jsmith', 'John Smith', 'john-password')

INSERT INTO eros_garage
    (title, user_id)
VALUES
    ('Demo', 1),
    ('Home', 2),
    ('Cottage', 3)

INSERT INTO eros_vehicles
    (nickname, year, make, model, color, user_id)
VALUES
    ('alti', '2015', 'Nissan', 'Altima', 'White', 1),
    ('stang', '1969', 'Ford', 'Mustang', 'Black', 1),
    ('hippy', '2011', 'Volkswagen', 'Beetle', 'Blue', 2),
    ('chevy', '2017', 'Chevrolet', 'Cruze', 'Black', 2),
    ('jeep', '2015', 'Jeep', 'Wrangler', 'Military', 2),
    ('julia', '2017', 'Alpha Romeo', 'Giulia', 'Red', 2),
    ('fusey', '2012', 'Ford', 'Fusion', 'White', 3),
    ('beemer', '2019', 'BMW', '435i', 'Silver', 3),
    ('150', '2018', 'Ford', 'F150', 'Silver', 3)



INSERT INTO eros_service
    (title, comments, vehicle_id, milage)
VALUES
    ('Fuel Pump', 'Changed fuel pump according to service schedule.', 1, '54536'),
    ('Tires', 'Tire rotation completed. Next rotation due at 67000 miles.', 1, '60000'),
    ('Left Fender', 'Repaired crack and painted front left bumper', 5, '18963'),
    ('Brakes', 'Replaced all brakes', 6, '11000'),
    ('Side Mirror', 'Replaced drivers side mirror', 8, '7893')

COMMIT;