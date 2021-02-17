update vk.communities set updated_at = date_add(now(), interval - floor(1 + rand() * 10) month) where id > 0;

alter table vk.friendship modify column confirmed_at date;
alter table vk.friendship modify column created_at date;
alter table vk.friendship modify column updated_at date;
update vk.friendship set created_at = date_add("2016-09-06 00:00:00", interval - floor(1 + rand() * 10) month) where user_id > 0;
update vk.friendship set updated_at = date_add(now(), interval - floor(1 + rand() * 10) month) where user_id > 0;

update vk.friendship_statuses set created_at = date_add(now(), interval - floor(1 + rand() * 10) month) where id > 0;

update vk.media set created_at = date_add("2017-06-06 00:00:00", interval - floor(1 + rand() * 10) month) where id > 0;
update vk.media set updated_at = date_add(now(), interval - floor(1 + rand() * 20) month) where id > 0;

update vk.media_types set created_at = date_add(now(), interval - floor(1 + rand() * 80) month) where id > 0;

insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (1, 55, 95, 'Exclusive composite migration', false, false, '2018-07-10 04:36:00');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (2, 11, 18, 'Upgradable fresh-thinking methodology', true, false, '2018-11-13 22:44:29');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (3, 77, 65, 'Up-sized 24/7 methodology', true, true, '2017-06-05 15:09:24');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (4, 94, 87, 'Object-based bifurcated knowledge user', true, false, '2019-07-12 17:13:04');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (5, 92, 54, 'Devolved zero defect customer loyalty', true, true, '2020-01-31 20:11:42');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (6, 12, 81, 'De-engineered zero tolerance groupware', false, false, '2020-05-20 14:19:59');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (7, 4, 9, 'Sharable web-enabled frame', true, true, '2020-08-06 15:20:04');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (8, 18, 18, 'Optimized multi-tasking model', false, false, '2021-02-07 05:54:16');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (9, 96, 66, 'Digitized human-resource focus group', true, false, '2017-10-19 08:24:32');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (10, 27, 51, 'Right-sized multimedia service-desk', true, false, '2018-07-28 11:36:54');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (11, 98, 44, 'Exclusive discrete data-warehouse', true, false, '2018-04-29 06:25:52');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (12, 75, 44, 'Diverse zero tolerance core', false, true, '2020-06-06 06:49:19');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (13, 32, 49, 'De-engineered dedicated open system', false, true, '2017-10-13 10:33:05');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (14, 45, 3, 'Customizable content-based extranet', true, false, '2019-06-01 22:32:20');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (15, 26, 26, 'Vision-oriented human-resource open system', false, true, '2018-10-07 18:29:43');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (16, 45, 93, 'Profit-focused upward-trending synergy', false, true, '2020-03-15 07:33:57');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (17, 4, 80, 'Visionary explicit concept', true, true, '2017-04-12 19:41:04');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (18, 60, 82, 'Adaptive analyzing migration', true, true, '2020-02-12 20:30:26');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (19, 90, 18, 'Multi-layered asynchronous knowledge base', false, true, '2018-06-29 11:57:32');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (20, 73, 94, 'Stand-alone reciprocal portal', false, true, '2019-06-16 15:32:51');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (21, 96, 80, 'Public-key asymmetric support', false, true, '2020-03-06 23:35:42');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (22, 8, 97, 'Monitored mission-critical time-frame', false, true, '2018-04-10 10:53:45');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (23, 93, 59, 'Function-based attitude-oriented pricing structure', false, false, '2019-03-19 20:33:10');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (24, 1, 62, 'Cross-group uniform model', true, true, '2019-04-08 10:55:10');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (25, 35, 75, 'Phased impactful utilisation', false, false, '2017-05-13 17:37:51');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (26, 26, 45, 'Devolved multi-tasking concept', false, false, '2018-05-13 23:29:22');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (27, 98, 44, 'Total cohesive monitoring', true, true, '2019-02-13 04:11:01');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (28, 68, 45, 'Organized 24/7 standardization', false, false, '2020-06-27 09:02:06');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (29, 96, 16, 'Open-source motivating emulation', true, false, '2021-02-14 09:58:44');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (30, 78, 12, 'Up-sized contextually-based intranet', true, false, '2017-07-11 20:38:17');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (31, 98, 12, 'Networked foreground array', false, true, '2017-03-04 08:56:58');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (32, 23, 39, 'Monitored real-time complexity', true, false, '2020-06-09 21:51:30');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (33, 85, 84, 'Multi-layered user-facing archive', false, false, '2018-04-03 01:59:00');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (34, 81, 55, 'Sharable human-resource collaboration', true, false, '2017-07-17 11:18:32');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (35, 83, 80, 'User-friendly system-worthy software', false, true, '2018-07-24 05:14:51');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (36, 11, 29, 'Business-focused analyzing challenge', false, false, '2018-11-14 21:54:46');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (37, 88, 93, 'Cross-platform value-added firmware', true, true, '2018-02-27 14:50:13');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (38, 46, 76, 'Enterprise-wide 5th generation toolset', true, false, '2019-12-22 12:52:08');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (39, 32, 48, 'Multi-tiered radical moderator', true, false, '2019-01-03 14:10:26');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (40, 74, 16, 'Synchronised intangible firmware', true, true, '2018-05-20 17:34:39');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (41, 26, 88, 'Stand-alone bifurcated focus group', false, false, '2018-05-10 02:28:18');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (42, 51, 48, 'Sharable even-keeled workforce', true, false, '2020-05-22 14:49:39');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (43, 87, 75, 'Implemented incremental customer loyalty', false, false, '2018-01-06 05:40:35');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (44, 47, 80, 'Seamless object-oriented project', true, false, '2020-06-13 20:19:56');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (45, 41, 25, 'Future-proofed foreground intranet', true, false, '2020-01-24 10:52:55');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (46, 67, 67, 'Balanced system-worthy productivity', false, true, '2017-10-26 18:28:19');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (47, 23, 13, 'Expanded 6th generation focus group', false, false, '2019-02-17 12:03:04');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (48, 34, 67, 'Profound mission-critical interface', true, true, '2020-02-27 13:52:28');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (49, 71, 73, 'Quality-focused content-based migration', true, false, '2019-03-29 01:10:34');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (50, 39, 62, 'Switchable stable matrix', false, false, '2020-05-21 06:44:15');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (51, 97, 73, 'Secured foreground local area network', true, true, '2020-10-15 15:44:34');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (52, 56, 74, 'Phased mobile software', false, true, '2018-04-06 18:17:10');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (53, 13, 66, 'Balanced composite support', true, false, '2020-08-04 15:42:23');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (54, 39, 67, 'Centralized system-worthy budgetary management', false, true, '2019-01-03 20:08:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (55, 32, 97, 'Up-sized national secured line', false, false, '2019-06-29 08:54:17');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (56, 67, 23, 'Networked uniform matrices', true, true, '2020-10-31 16:38:47');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (57, 32, 43, 'Multi-lateral web-enabled support', false, false, '2020-07-23 22:53:15');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (58, 35, 100, 'Profit-focused real-time architecture', false, false, '2018-01-09 01:06:22');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (59, 90, 72, 'Secured coherent architecture', true, false, '2020-05-15 12:15:47');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (60, 8, 48, 'Reactive hybrid process improvement', true, false, '2019-09-14 11:09:42');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (61, 40, 94, 'Reduced content-based flexibility', false, false, '2020-10-22 04:29:52');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (62, 55, 44, 'Decentralized interactive forecast', false, false, '2020-11-19 22:19:02');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (63, 53, 85, 'Progressive impactful contingency', false, true, '2019-12-27 10:08:34');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (64, 45, 7, 'Integrated foreground emulation', true, false, '2017-11-29 01:47:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (65, 62, 36, 'Object-based dynamic matrix', true, true, '2017-11-01 10:26:02');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (66, 56, 82, 'Fundamental tangible solution', false, true, '2020-08-23 05:58:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (67, 17, 95, 'De-engineered multimedia neural-net', false, true, '2020-10-09 21:10:34');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (68, 19, 13, 'Multi-lateral bandwidth-monitored superstructure', false, false, '2020-10-18 03:42:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (69, 66, 2, 'Automated 5th generation concept', false, false, '2017-10-21 03:21:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (70, 29, 90, 'Digitized context-sensitive support', false, false, '2020-02-23 16:02:02');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (71, 88, 23, 'Distributed foreground paradigm', false, true, '2020-09-18 04:41:52');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (72, 44, 65, 'Implemented tangible moderator', false, true, '2019-11-21 15:01:16');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (73, 11, 53, 'Innovative actuating framework', false, false, '2020-04-24 11:16:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (74, 79, 96, 'Organic 5th generation function', true, false, '2017-08-03 01:32:42');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (75, 16, 98, 'Seamless 5th generation algorithm', true, false, '2020-03-16 07:10:09');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (76, 20, 16, 'Decentralized responsive frame', true, false, '2018-12-09 22:17:22');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (77, 76, 65, 'Configurable actuating adapter', true, true, '2019-04-13 04:24:54');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (78, 65, 82, 'Pre-emptive zero tolerance success', true, true, '2019-06-21 00:20:36');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (79, 34, 11, 'Secured methodical open architecture', false, false, '2017-07-31 20:00:01');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (80, 38, 41, 'Self-enabling contextually-based projection', true, true, '2018-07-08 00:02:39');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (81, 79, 47, 'Versatile well-modulated concept', true, true, '2017-12-24 05:51:36');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (82, 11, 70, 'Multi-tiered zero defect circuit', true, true, '2020-12-07 11:36:46');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (83, 8, 94, 'Team-oriented multi-tasking database', true, true, '2019-04-21 11:59:06');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (84, 99, 52, 'Multi-tiered modular infrastructure', true, false, '2018-07-05 13:39:25');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (85, 86, 72, 'Operative analyzing infrastructure', true, true, '2018-04-16 13:26:05');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (86, 3, 83, 'Open-source optimal initiative', false, false, '2020-06-01 12:05:20');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (87, 62, 38, 'Horizontal methodical focus group', true, true, '2020-12-20 12:50:53');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (88, 70, 24, 'Centralized asymmetric system engine', false, true, '2020-01-08 12:38:18');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (89, 20, 86, 'Cross-platform asymmetric capability', true, false, '2017-10-01 01:23:44');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (90, 51, 60, 'Reduced optimal migration', false, true, '2017-03-27 01:11:21');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (91, 40, 76, 'Multi-channelled discrete local area network', true, true, '2017-10-22 15:45:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (92, 57, 96, 'Diverse analyzing utilisation', false, false, '2017-08-31 15:04:05');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (93, 28, 22, 'Exclusive analyzing emulation', true, false, '2020-08-06 11:19:58');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (94, 79, 98, 'Total discrete knowledge base', true, false, '2020-10-30 10:25:29');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (95, 71, 77, 'Virtual contextually-based open architecture', false, false, '2020-01-14 15:57:25');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (96, 86, 15, 'Decentralized disintermediate functionalities', false, true, '2018-11-02 10:14:49');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (97, 98, 27, 'Digitized mobile challenge', true, true, '2019-11-09 22:23:20');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (98, 33, 74, 'Cross-group grid-enabled task-force', true, false, '2017-03-09 07:36:07');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (99, 36, 61, 'Synergized solution-oriented database', true, true, '2018-12-29 20:40:03');
insert into messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) values (100, 37, 45, 'Profound intermediate functionalities', true, true, '2020-10-19 17:50:20');

create table posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  body TEXT NOT NULL COMMENT "Текст поста",
  user_id INT UNSIGNED NOT NULL COMMENT "Кто опубликовал",
  communities_id INT UNSIGNED NOT NULL COMMENT "В какой группе опубликован пост",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания"
) COMMENT "Посты";

create table likes (
  user_id INT UNSIGNED NOT NULL COMMENT "Кто лайкнул",
  post_id INT UNSIGNED NOT NULL COMMENT "Номер поста"
) COMMENT "Лайки";

create table commentaries (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
    post_id INT UNSIGNED NOT NULL COMMENT "Номер поста",
    user_id INT UNSIGNED NOT NULL COMMENT "Кто опубликовал",
    body VARCHAR(100) NOT NULL COMMENT "Текст комментария",
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания"
)