-- Schema
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id           serial PRIMARY KEY,
  user_id      integer NOT NULL,
  text         varchar(255) NOT NULL,
  date         date NOT NULL
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
  id           serial PRIMARY KEY,
  user_id      integer NOT NULL,
  text         varchar(255) NOT NULL,
  date         date NOT NULL,
  post_id      integer NOT NULL
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id           serial PRIMARY KEY,
  post_id      integer NOT NULL,
  total        integer
);

DROP TABLE IF EXISTS follows;
CREATE TABLE follows (
  id           serial PRIMARY KEY,
  user_id      integer NOT NULL,
  total        integer
);

INSERT INTO users (first_name, last_name) VALUES ('Tianna', 'Lowe');

INSERT INTO posts (user_id, text, date) VALUES (1, 'Hello world', '1987-01-22');

INSERT INTO comments (user_id, text, date, post_id) VALUES (1, 'Hello world', '1987-01-22', 1);

INSERT INTO likes (post_id, total) VALUES (1, 2);
INSERT INTO follows (user_id, total) VALUES (1, 2);