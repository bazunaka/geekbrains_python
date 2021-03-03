#3
select case (profiles.gender)
    WHEN 'M' THEN 'Man'
    WHEN 'F' THEN 'Woman'
    END AS gender, count(likes.user_id) as count
    from likes
    left join profiles on likes.user_id = profiles.user_id #можно использовать простой join
    group by profiles.gender;

#4
select sum(total_likes) from
    (select
        (select count(*) from likes,profiles where target_id = profiles.user_id and
                                      target_type_id = 2) as total_likes
        from profiles order by birthday desc limit 10) as user_likes;

select count(*) from likes join profiles on target_id = profiles.user_id and
                                      target_type_id = 2;

#5
select profiles.user_id from profiles where profiles.user_id not in (select communities.owner_id from communities)
AND
profiles.user_id not in (select likes.user_id from likes)
AND
profiles.user_id not in (select messages.from_user_id from messages) limit 10;

