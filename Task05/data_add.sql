INSERT INTO users(name, surname, email, gender, register_date, occupation_id) VALUES
("Danila", "Dudorov", "danila.dudorov@mail.ru", "male", DATE("now"), (SELECT id FROM occupations WHERE occupations.title = "student"));
INSERT INTO users(name, surname, email, gender, register_date, occupation_id) VALUES
("Darya", "Gladysheva", "darya_gladysheva@mail.ru", "female", DATE("now"), (SELECT id FROM occupations WHERE occupations.title = "student"));
INSERT INTO users(name, surname, email, gender, register_date, occupation_id) VALUES
("Irina", "Guskova", "irina_guskova@mail.ru", "female", DATE("now"), (SELECT id FROM occupations WHERE occupations.title = "student"));
INSERT INTO users(name, surname, email, register_date, gender, occupation_id)
values("Anastasiya", "Inshakova", "anastasi_ins@mail.ru", date("now"), "female", (SELECT id FROM occupations WHERE occupations.title = "student"));
INSERT INTO users(name, lastname, email, register_date, gender, occupation_id)
values("Yulia", "Zavaryukhina", "yzavaryukhina@gmail.com", date("now"), "female", (SELECT id FROM occupations WHERE occupations.title = "student"));


INSERT INTO movies(title, year) VALUES
("Devyataev", 2021);
INSERT INTO movies(title, year) VALUES
("Eternals", 2021);
INSERT INTO movies(title, year) VALUES
("Pilot", 2021);


INSERT INTO ratings(user_id, movie_id, rating, "timestamp") VALUES(
(SELECT id FROM users WHERE users.email = "danila.dudorov@mail.ru"), 
(SELECT id FROM movies WHERE movies.title = "Devyataev" and movies.year = 2021),
4.4, strftime('%s','now'));
INSERT INTO ratings(user_id, movie_id, rating, "timestamp") VALUES(
(SELECT id FROM users WHERE users.email = "danila.dudorov@mail.ru"), 
(SELECT id FROM movies WHERE movies.title = "Eternals" and movies.year = 2021),
4, strftime('%s','now'));
INSERT INTO ratings(user_id, movie_id, rating, "timestamp") VALUES(
(SELECT id FROM users WHERE users.email = "danila.dudorov@mail.ru"), 
(SELECT id FROM movies WHERE movies.title = "Pilot" and movies.year = 2021),
4, strftime('%s','now'));