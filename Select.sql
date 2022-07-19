--1

select name, count(authtors_id)
from genres g
left join authors_genres ag on g.id = ag.id
group by name
order by count(authtors_id) desc;


--2

select count(t.id)
from traks t
inner join albums a on a.id = t.albums_id
where a.year_of_release = 2019 or a.year_of_release = 2020;

--3

select a.name, round(avg(t.duration),1) trk_avg
from albums a
left join traks t  on a.id = t.albums_id
group by a.name
order by trk_avg desc;

--4

select au.name
from authors au
where au.id not in (
	select a.id
	from authors a
	inner join albums_authors aa on a.id = aa.authors_id
	inner join albums al on aa.albums_id = al.id
	where al.year_of_release = 2020)
group by au.name
order by au.name;

--5

select c.name
from compilations c
inner join compilations_traks ct on c.id = ct.compilation_id
inner join traks t on ct.traks_id = t.id
inner join albums a on t.albums_id = a.id
inner join albums_authors aa on a.id = aa.albums_id
inner join authors au on aa.authors_id = au.id
where au.name = 'Баста'
group by c.name
order by c.name;

--6

select a.name
from albums a
inner join albums_authors aa on a.id  = aa.albums_id
inner join authors au on aa.authors_id = au.id
inner join authors_genres ag on au.id = ag.authtors_id
group by a.name
having count(ag.authtors_id) > 1
order by a.name;

--7

select t.name
from traks t
where t.id not in (
	select t.id
	from traks t
	inner join compilations_traks ct2 on t.id = ct2.traks_id)
group by t.name
order by t.name;

--8

select distinct a.name
from authors a
inner join albums_authors aa on a.id = aa.authors_id
inner join albums al on aa.albums_id = al.id
inner join traks t on al.id = t.albums_id
where t.duration in (
	select min(t.duration)
	from traks t);

--9

select a.name
from albums a
join traks t on a.id = t.albums_id
group by a.name
having count(*) = (
	select min(cnt)
	from (
		select count(*) as cnt
		from traks t
		group by t.albums_id) as q)
order by a.name;
