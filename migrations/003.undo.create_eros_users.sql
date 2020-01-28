ALTER TABLE eros_garage
  DROP COLUMN IF EXISTS user_id;

ALTER TABLE eros_vehicles
  DROP COLUMN IF EXISTS user_id;

DROP TABLE IF EXISTS eros_users