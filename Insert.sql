insert into authors (name)
values('Баста'),
('Каста'),
('Guf'),
('Prodigy'),
('Михаил Круг'),
('Земфира'),
('КиШ'),
('Michail Jackson');

insert into genres (name)
values('Rap'),
('Pop'),
('Hip-hop'),
('Rock'),
('Electronics'),
('Chanson'),
('blues'),
('country');

insert into albums (name, year_of_release)
values('Баста/Guf', 2010),
('Лучшие песни', 2014),
('Играй', 2018),
('No tourists', 2018),
('Жиганские песни', 2017),
('Сасибо', 2007),
('Жыль, нет ружья', 2002),
('Scream', 2017);

insert into traks (albums_id, name, duration)
values(1, 'Другая волна', 318),
(2, 'Самый счастливый человек', 183),
(3, 'Играй', 247),
(4, 'Boom Boom Tap', 243),
(5, 'Водочку пьем', 181),
(6, 'Дом', 210),
(7, 'Мёртвый анархист', 244),
(8, 'Ghosts', 307),
(1, 'Ходим по краю', 302),
(1, 'Если бы', 308),
(1, 'Как есть', 315),
(1, 'Китай', 265),
(1, 'Вязки', 317),
(1, 'Самурай', 307),
(1, 'ЧП', 309),
(1, 'Только сегодня', 323),
(1, 'Мой день', 305);

insert into compilations (name, year_of_release)
values('Русский рэп', 2021),
('Электроника', 2018),
('Шансон на всегда', 2015),
('Попса не умрет', 2022),
('Майкл жив', 2019),
('Анархисты в городе', 2021),
('Гуф жив', 2020),
('Земфира молодцом', 2018);

insert into compilations_traks (traks_id, compilation_id)
values(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3),
(6, 8),
(7, 6),
(8, 5),
(9, 7),
(6, 4),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1);

insert into albums_authors (albums_id, authors_id)
values(1, 1),
(1, 3),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

insert into authors_genres (authtors_id, genres_id)
values(1, 1),
(2, 1),
(3, 1),
(4, 5),
(5, 6),
(6, 2),
(7, 4),
(8, 2);

insert into authors (name)
values('B.B. King'),
('Alan Jackson');

insert into albums  (name, year_of_release)
values('Blues Boss', 2020), ('Good Time', 2008);

insert into traks (albums_id, name, duration)
values(9, 'Hully Gully', 154 ), (10, 'Good Time', 267);

insert into albums_authors (albums_id, authors_id)
values(9, 9), (10, 10);

insert into authors_genres (authtors_id, genres_id)
values(9, 7), (10, 8);

