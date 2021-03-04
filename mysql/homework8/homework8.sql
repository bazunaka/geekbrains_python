#3
select case (p.gender)
    WHEN 'M' THEN 'Man'
    WHEN 'F' THEN 'Woman'
    END AS gender, count(l.user_id) as count
    from likes l
    left join profiles p on l.user_id = p.user_id #можно использовать простой join
    group by p.gender;

#4
SELECT
	count( * ) AS cnt
FROM
	(
SELECT
	l.target_id
FROM
	likes AS l
	JOIN ( SELECT p.user_id FROM `profiles` AS p ORDER BY birthday DESC LIMIT 10 ) AS tl ON l.target_id = tl.user_id
	AND l.target_type_id = 2
	) AS ul;

#5 получились костыли какие-то! не ищем легких путей
select
`profiles`.user_id
from
`profiles`
where `profiles`.user_id not in
(select
c.owner_id
from
`profiles` p
right join communities c
on p.user_id = c.owner_id
where c.owner_id is not null)
and
`profiles`.user_id not in
(select
l.user_id
from
`profiles` p
right join likes l
on p.user_id = l.user_id
where l.user_id is not null)
and
`profiles`.user_id not in
(select
m.from_user_id
from
`profiles` p
right join messages m
on p.user_id = m.from_user_id
where m.from_user_id is not null)
limit 10
;