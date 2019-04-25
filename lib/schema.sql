CREATE TABLE Series ( id INTEGER PRIMARY KEY,
title TEXT,
author_id INTEGER,
subgenre_id INTEGER
);
CREATE TABLE SubGenre
( id INTEGER PRIMARY KEY,
  name TEXT);
  
  CREATE TABLE Authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);
