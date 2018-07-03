CREATE TABLE series(
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  sub_genre INTEGER
);

CREATE TABLE authors(
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE books(
  id INTEGER PRIMARY KEY,
  title TEXT,
  series_id INTEGER,
  year INTEGER
);

CREATE TABLE characters(
  id INTEGER PRIMARY KEY,
  name TEXT,
  author_id INTEGER,
  sub-genre INTEGER
);
