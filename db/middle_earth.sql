PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS stages;
CREATE TABLE stages (
  user_id INTEGER NOT NULL,
  stage_completed INTEGER
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  user_id INTEGER PRIMARY KEY
);

