DROP TABLE exhibits;
DROP TABLE artists;

CREATE TABLE artists (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE exhibits (
  id serial4 primary key,
  title VARCHAR(255),
  category VARCHAR(255),
  artist_id INT8 references artists(id)
);
