CREATE TABLE series(
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  sub-genre INTEGER
);

CREATE TABLE authors(
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE s(
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  sub-genre INTEGER
);
