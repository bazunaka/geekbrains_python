#1
create index users_first_name_idx on vk.users (first_name);
create index users_last_name_idx on vk.users (last_name);
create unique index communities_name_uidx on vk.communities (name);
create index media_filename_media_type_id_idx on vk.media (filename, media_type_id);
create index messages_from_user_id_idx on vk.messages (from_user_id);
create index messages_to_user_id_idx on vk.messages (to_user_id);
create index profiles_country_city_idx on vk.profiles (country, city);

#2
select distinct communities.name,
                (select avg(tbl.cnt) as av
                from (select count(cu.user_id) as cnt
                from communities
                right join communities_users cu on communities.id = cu.community_id
                group by communities.name) as tbl) as average,
                max(p.birthday) over (partition by community_id) as max_birthday,
                min(p.birthday) over (partition by community_id) as min_birthday,
                count(communities_users.user_id) over (partition by community_id) as cnt_in_group,
                (select count(*) from profiles) as total_in_system,
                count(communities_users.user_id) over (partition by community_id) / count(p.user_id) over() * 100 as percent_in_group
from communities_users
join communities
on communities_users.community_id = communities.id
join profiles p on communities_users.user_id = p.user_id
order by communities.name;
########### это для себя запросы делал
select avg(qwe.cnt) as average
from (select count(cu.user_id) as cnt
from communities
right join communities_users cu on communities.id = cu.community_id
group by communities.name) as qwe;

select max(birthday)
from profiles;

(select max(profiles.birthday) over (partition by community_id)
                    from communities_users
                    join profiles
                    on communities_users.user_id = profiles.user_id
                    join communities
                    on communities_users.community_id = communities.id)