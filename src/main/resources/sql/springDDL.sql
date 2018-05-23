--DROP TABLE users IF EXISTS;
--DROP TABLE users_roles IF EXISTS;
--DROP TABLE books IF EXISTS;

CREATE TABLE users (
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  enabled INTEGER NOT NULL
);

CREATE TABLE user_roles (
user_role_id INTEGER IDENTITY NOT NULL,
username VARCHAR(50) NOT NULL,
role VARCHAR(50) NOT NULL
);

CREATE TABLE books (
  id INTEGER IDENTITY NOT NULL,
  author VARCHAR(50),
  title VARCHAR(65),
  price DOUBLE,
  description VARCHAR(400)
);
