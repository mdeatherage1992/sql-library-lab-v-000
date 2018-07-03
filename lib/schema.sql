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
  species TEXT,
  motto TEXT,
  author_id INTEGER,
  series_id INTEGER
);

CREATE TABLE character_books(
  id INTEGER PRIMARY KEY,
  book_id TEXT,
  character_id INTEGER
);
