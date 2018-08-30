DROP TABLE exhibits;
DROP TABLE categories;
DROP TABLE artists;

CREATE TABLE categories (
  id serial4 primary key,
  genre VARCHAR(255)
);

CREATE TABLE artists (
  id serial4 primary key,
  name VARCHAR(255)
);


CREATE TABLE exhibits (
  id serial4 primary key,
  title VARCHAR(255),
  category_id INT4 references categories(id) ON DELETE CASCADE,
  artist_id INT4 references artists(id) ON DELETE CASCADE
);
