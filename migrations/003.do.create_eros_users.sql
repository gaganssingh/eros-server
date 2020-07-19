CREATE TABLE eros_users (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    user_name TEXT NOT NULL UNIQUE,
    full_name TEXT NOT NULL,
    password TEXT NOT NULL,
    date_created TIMESTAMP DEFAULT now() NOT NULL
);

ALTER TABLE eros_vehicles
  ADD COLUMN
    user_id INTEGER REFERENCES eros_users(id)
    ON DELETE SET NULL;

ALTER TABLE eros_garage
  ADD COLUMN
    user_id INTEGER REFERENCES eros_users(id)
    ON DELETE SET NULL;