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

#5
select profiles.user_id from profiles where profiles.user_id not in (select communities.owner_id from communities)
AND
profiles.user_id not in (select likes.user_id from likes)
AND
profiles.user_id not in (select messages.from_user_id from messages) limit 10;

