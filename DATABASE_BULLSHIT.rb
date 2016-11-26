

ship_name: Seydlitz
nationality: german
armor:
  belt: 12
  deck: 2
armament:
  main: 11
  turrets: 5
  type: 2
propulsion:
  type: turbine
  max_speed: 24

CREATE TABLE dreadnoughts (
  id integer,
  name text,
  nationality text
);

CREATE TABLE armaments (
  ship_id integer,
  caliber integer,
  turrets integer,
  guns integer
  );

CREATE TABLE armors (
  ship_id integer,
  belt integer,
  deck integer
);