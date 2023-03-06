-- Schema
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  address_id   integer
);

DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
  id           serial PRIMARY KEY,
  name         varchar(255) NOT NULL,
  address_id   integer
);

DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses (
  id           serial PRIMARY KEY,
  line_1       varchar(255) NOT NULL,
  city         varchar(255) NOT NULL,
  state        varchar(255) NOT NULL,
  zipcode      varchar(255) NOT NULL
);

DROP TABLE IF EXISTS menus;
CREATE TABLE menus (
  id           serial PRIMARY KEY,
  restaurant_id integer,
  menu_item_id integer
);

DROP TABLE IF EXISTS menu_items;
CREATE TABLE menu_items (
  id           serial PRIMARY KEY,
  name         varchar(255) NOT NULL,
  price        decimal
);

INSERT INTO users (first_name, last_name) VALUES ('Tianna', 'Lowe');

INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('1397 Braden Shoals', 'New Karine', 'New York', '03913');

INSERT INTO restaurants(name, address_id) VALUES ('Brewed Downtown', 1);

INSERT INTO menu_items (name, price) VALUES ('coffee', 5.5);

INSERT INTO menus (restaurant_id, menu_item_id) VALUES (1, 1);