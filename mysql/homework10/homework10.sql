#1
create index users_first_name_idx on vk.users (first_name);
create index users_last_name_idx on vk.users (last_name);
create unique index communities_name_uidx on vk.communities (name);
create index media_filename_media_type_id_idx on vk.media (filename, media_type_id);
create index messages_from_user_id_idx on vk.messages (from_user_id);
create index messages_to_user_id_idx on vk.messages (to_user_id);
create index profiles_country_city_idx on vk.profiles (country, city);
#2