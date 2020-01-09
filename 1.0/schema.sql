BEGIN;

CREATE TABLE IF NOT EXISTS map (
  face INTEGER,
  zoom INTEGER,
  x INTEGER,
  y INTEGER,
  data blob
);

CREATE TABLE IF NOT EXISTS metadata (
  name text,
  value text
);

CREATE UNIQUE INDEX IF NOT EXISTS map_index ON map (face, zoom, x, y);
CREATE UNIQUE INDEX IF NOT EXISTS name ON metadata (name);

CREATE VIEW IF NOT EXISTS tiles AS
  SELECT
    map.face AS face,
    map.zoom AS zoom,
    map.x AS x,
    map.y AS y,
    map.data AS data
  FROM map;

COMMIT;
