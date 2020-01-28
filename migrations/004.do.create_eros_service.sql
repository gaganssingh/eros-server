CREATE TABLE eros_service (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    comments TEXT NOT NULL,
    milage TEXT,
    date_created TIMESTAMP NOT NULL DEFAULT now(),
    vehicle_id INTEGER REFERENCES eros_vehicles(id) ON DELETE SET NULL
);