alter table authors drop column genres_id;

alter table albums drop column authors_id;

create table if not exists authors_genres (
id serial primary key,
authtors_id integer not null references authors(id),
genres_id integer not null references genres(id)
);

create table if not exists albums_authors (
id serial primary key,
albums_id integer not null references albums(id),
authors_id integer not null references authors(id)
);

create table if not exists compilations (
id serial primary key,
name varchar(80) not null,
year_of_release integer not null
);

create table if not exists compilations_traks (
id serial primary key,
traks_id integer not null references traks(id),
compilation_id integer not null references compilations(id)
);

