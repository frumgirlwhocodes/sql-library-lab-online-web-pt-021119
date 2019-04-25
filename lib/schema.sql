CREATE TABLE Series ( id INTEGER PRIMARY KEY,
title TEXT,
author_id INTEGER,
subgenre_id INTEGER
);
CREATE TABLE SubGenres
( id INTEGER PRIMARY KEY,
  name TEXT);
  
  CREATE TABLE Authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);
CREATE TABLE Books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id INTEGER);
);

