CREATE DATABASE vk;
USE vk;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";

CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя",
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  city VARCHAR(130) COMMENT "Город проживания",
  country VARCHAR(130) COMMENT "Страна проживания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили";

CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  is_important BOOLEAN COMMENT "Признак важности",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки"
) COMMENT "Сообщения";

CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
  friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
  friendship_status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус (текущее состояние) отношений",
  requested_at DATETIME DEFAULT NOW() COMMENT "Время отправления приглашения дружить",
  confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица дружбы";

CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Статусы дружбы";

CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Группы";

CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";

CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил файл",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
  size INT NOT NULL COMMENT "Размер файла",
  metadata JSON COMMENT "Метаданные файла",
  media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";

INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (1,"Amity","Long","ligula.Donec@aliquameros.ca","0845 46 40","11-10-18","02-12-16"),(2,"Fiona","Valencia","mi.lacinia.mattis@loremlorem.com","(01824) 93160","01-05-16","25-01-20"),(3,"Graham","Mcclain","consectetuer.cursus@ametloremsemper.net","(01007) 145146","05-02-16","28-11-20"),(4,"Drew","Lyons","Proin.ultrices.Duis@maurisipsumporta.ca","(020) 1353 3286","16-01-20","02-03-19"),(5,"Willa","Osborn","tincidunt.orci@NullafacilisiSed.com","(016977) 0219","25-05-20","14-04-18"),(6,"Heidi","Payne","pede.nec.ante@non.co.uk","0923 692 2627","10-11-15","19-03-19"),(7,"Raja","Tyler","vitae.diam@eleifend.edu","(016977) 4378","11-06-19","10-01-18"),(8,"Signe","Flowers","fermentum.risus.at@convallisdolor.com","0500 957262","27-04-19","29-04-16"),(9,"Sara","Delgado","elit.Etiam.laoreet@egestaslacinia.net","(016977) 1942","13-10-15","19-09-18"),(10,"Candace","Preston","Sed.congue@malesuadaid.co.uk","055 0616 8198","19-05-19","26-03-20");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (11,"Bert","Hunt","adipiscing@adipiscingelitEtiam.com","0882 156 7822","17-03-17","27-09-18"),(12,"Griffin","Adams","posuere@eleifendnec.net","0800 1111","24-03-19","16-09-17"),(13,"Gil","Sanchez","risus.In@massaVestibulumaccumsan.com","070 7625 2026","01-04-19","14-09-16"),(14,"Slade","Alvarez","tellus.lorem.eu@urna.net","0926 810 2040","23-10-18","03-04-20"),(15,"Orlando","Dillon","velit.Aliquam@fermentum.edu","0800 691 2390","17-10-16","20-05-18"),(16,"Shafira","Burch","lobortis@NulladignissimMaecenas.org","0833 123 7370","10-04-20","23-10-15"),(17,"Uriel","Talley","lorem@condimentumDonecat.co.uk","0836 518 2115","06-07-17","09-09-17"),(18,"Griffith","Bell","lobortis.quis@faucibus.edu","(016977) 8682","23-07-16","08-01-16"),(19,"Larissa","Perkins","pellentesque@placerataugue.com","0364 499 6349","10-02-19","18-10-15"),(20,"Jaime","Merritt","parturient.montes.nascetur@mus.edu","(021) 7870 4100","21-10-15","27-12-17");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (21,"Yvette","Carroll","turpis.nec.mauris@neque.net","0801 1111","30-08-18","04-10-18"),(22,"Barry","Delacruz","gravida.mauris@sedpede.edu","0800 454 3865","28-07-17","27-08-16"),(23,"Dieter","Dyer","ac@dignissim.net","(0151) 416 2876","09-08-18","29-06-19"),(24,"Zena","Salas","eu.eleifend.nec@maurisSuspendisse.edu","055 8474 0163","12-03-19","12-09-20"),(25,"Conan","Owens","scelerisque.neque@arcuMorbisit.com","070 8950 5494","08-09-16","17-09-16"),(26,"Macaulay","English","magna.Sed.eu@Etiamligula.co.uk","0800 053414","20-05-16","05-11-20"),(27,"Moana","Kirkland","Etiam@Cumsociis.co.uk","056 9624 9609","10-01-21","27-10-18"),(28,"Brett","Ware","aliquam.enim.nec@et.ca","(01622) 07241","10-09-20","15-05-18"),(29,"Wyatt","Mcgowan","sapien.imperdiet.ornare@vehicula.ca","0867 339 2752","15-12-18","31-01-18"),(30,"Basil","Casey","Nunc.lectus@sit.ca","070 6942 6879","30-10-17","20-12-18");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (31,"Palmer","Ryan","eget.nisi.dictum@ligula.com","(010157) 21302","21-07-19","14-09-20"),(32,"Dominic","Garcia","lacus@pedeultrices.org","(010606) 33170","03-12-19","26-04-17"),(33,"Kelsie","Taylor","augue.eu@lorem.net","0800 1231","05-04-20","14-01-19"),(34,"Declan","Burke","Nullam.nisl@ligulaconsectetuerrhoncus.ca","07549 837398","21-06-17","12-10-18"),(35,"Kelly","Mccullough","posuere@eutemporerat.ca","055 6935 2719","12-12-17","07-11-15"),(36,"Chastity","Terry","sed.pede.nec@netuset.edu","(0161) 921 1767","22-11-17","06-03-18"),(37,"Callum","Garcia","lobortis.tellus.justo@liberoProinsed.co.uk","0800 532782","16-06-16","24-08-18"),(38,"Amir","Willis","nunc@Sedmalesuadaaugue.net","0500 815864","21-05-20","05-10-17"),(39,"Justine","Sampson","aliquet@insodales.net","(028) 9578 6882","12-04-19","27-08-17"),(40,"Chloe","Summers","lectus@mollis.ca","055 9282 7045","30-11-15","10-11-19");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (41,"Demetria","Elliott","quis.diam@lectus.com","(010482) 75933","22-02-17","19-06-19"),(42,"Fleur","Walls","sollicitudin.orci.sem@Seddiamlorem.edu","0845 46 44","28-02-19","15-03-20"),(43,"Freya","Mcknight","nascetur@sedconsequat.ca","0800 104 3415","03-11-16","15-07-18"),(44,"Destiny","Rasmussen","Fusce.mollis@Nunc.net","(01935) 013066","20-05-18","26-09-20"),(45,"Jael","Ford","egestas.Aliquam@afeugiattellus.ca","(0110) 010 6957","02-03-16","27-05-19"),(46,"Evangeline","Morgan","blandit.congue.In@variusultricesmauris.org","(016977) 0968","14-11-20","02-01-16"),(47,"Sylvia","Kennedy","malesuada@congue.net","(01340) 322554","10-11-17","23-12-15"),(48,"Kylie","Spence","Aenean.gravida@duiFusce.edu","0879 1111","12-04-17","03-05-17"),(49,"Tiger","Vaughn","egestas@Nam.org","076 8313 3012","17-05-16","06-01-18"),(50,"Simon","Strong","felis.eget@etpede.ca","0500 065212","07-08-17","11-03-18");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (51,"Colt","Robinson","Fusce.aliquam@necenim.edu","(0116) 511 4758","09-04-17","15-01-20"),(52,"Breanna","Edwards","sit.amet.orci@consectetueradipiscingelit.ca","0500 770071","18-12-18","11-09-20"),(53,"Florence","Holden","arcu@Maurisblanditenim.edu","0820 465 9833","16-09-18","08-06-17"),(54,"Conan","Garner","cubilia@ac.co.uk","(026) 4431 1290","18-03-19","04-11-15"),(55,"Ivana","Craig","lorem.luctus.ut@ultricies.org","056 2575 3561","07-12-18","08-02-17"),(56,"Irma","Donaldson","Aliquam.gravida.mauris@DonecfringillaDonec.com","055 5970 0538","31-03-16","07-11-15"),(57,"Leandra","Gonzalez","luctus.Curabitur@varius.co.uk","0382 342 0015","13-02-20","03-02-16"),(58,"Hunter","Weber","mattis.semper@nunc.org","0567 1111","25-09-17","04-12-15"),(59,"Derek","Glover","Vivamus.nibh.dolor@Aenean.ca","055 6398 6010","27-12-20","25-01-16"),(60,"Fallon","West","nascetur@erosNam.net","(01758) 066128","25-08-19","17-02-20");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (61,"Elaine","Norman","ridiculus.mus@auctor.edu","070 3419 1919","12-12-16","18-06-20"),(62,"Edan","Webb","risus.In@faucibus.co.uk","(01603) 14514","23-12-19","20-03-17"),(63,"Tanek","Forbes","orci.sem.eget@loremauctor.org","076 4259 1814","06-07-20","27-11-17"),(64,"Noah","Soto","nec.imperdiet.nec@eu.org","0845 46 47","05-01-17","15-03-18"),(65,"Veronica","Fowler","gravida.sagittis@malesuada.co.uk","07736 974876","15-06-18","27-09-19"),(66,"Thomas","Goodwin","et@CuraeDonectincidunt.edu","(01877) 84318","13-07-20","24-10-18"),(67,"Piper","Browning","erat@elementumat.ca","07624 113627","10-12-20","13-04-16"),(68,"Amir","Keith","Maecenas.ornare.egestas@porttitorvulputate.net","0800 7788","03-12-16","10-09-19"),(69,"Chaim","Henson","fringilla.porttitor.vulputate@Fusce.net","0845 46 48","10-06-17","10-01-21"),(70,"Thor","Booth","vel@acfermentumvel.net","0845 46 45","09-09-18","18-05-16");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (71,"Yoko","Grant","et.euismod.et@sollicitudinamalesuada.edu","(0181) 129 2006","12-02-17","10-02-20"),(72,"Macon","Daniel","Sed@faucibus.net","(0114) 564 2180","05-09-19","02-04-18"),(73,"Harper","Stevens","dolor.nonummy@enim.net","056 4632 0031","07-02-20","19-08-17"),(74,"Keegan","Robertson","mauris@dolor.net","0348 786 3124","05-10-18","04-04-16"),(75,"Angelica","Tanner","hymenaeos@convallis.ca","(0113) 754 2285","25-08-17","26-10-20"),(76,"Caleb","Hull","In@dignissimmagnaa.ca","0308 647 9090","07-04-20","02-06-20"),(77,"Cheyenne","Schneider","erat@Donec.org","07041 690550","21-08-19","13-06-18"),(78,"Cherokee","Rowland","diam@eratsemper.org","(01416) 643052","27-08-16","18-06-20"),(79,"Zenia","Quinn","feugiat.Sed@hendreritaarcu.net","(0171) 404 6710","08-01-21","24-01-19"),(80,"Tyler","Griffin","mus.Proin@hendrerit.edu","0800 559 4265","17-08-19","26-08-18");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (81,"Felicia","Welch","In.scelerisque.scelerisque@Loremipsumdolor.com","(01219) 54393","02-07-17","08-02-21"),(82,"Eden","Combs","at.auctor@fermentummetus.ca","(0117) 263 4155","21-11-16","27-09-17"),(83,"Rowan","Medina","tempor.augue.ac@pede.net","0800 9898","10-01-17","18-10-20"),(84,"Noah","Pena","sodales.elit.erat@necmaurisblandit.com","(026) 9381 8345","05-05-17","25-09-17"),(85,"Chandler","Rose","a@nonlacinia.org","0845 46 42","10-02-21","02-01-19"),(86,"Daphne","Anderson","at.pretium.aliquet@Phasellus.net","(01348) 455297","12-03-20","20-03-18"),(87,"Tate","Clay","vitae.odio.sagittis@Aeneansed.co.uk","07624 290029","18-09-16","01-05-18"),(88,"Kiona","Keith","euismod.ac.fermentum@cursusdiamat.co.uk","076 6187 0853","19-05-19","25-05-17"),(89,"Madonna","Good","justo@arcuVivamus.com","(0111) 918 0784","02-03-19","27-08-17"),(90,"Chandler","Harper","cursus@dolor.net","076 1004 7599","22-03-16","06-11-15");
INSERT INTO vk.users (id,first_name,last_name,email,phone,created_at,updated_at) VALUES (91,"Ria","Chandler","eu.elit@dictum.co.uk","(016977) 7154","28-06-18","05-01-19"),(92,"Ivana","Terry","Suspendisse.dui.Fusce@inceptos.co.uk","(0111) 110 2005","31-12-18","05-05-19"),(93,"Sybill","Rogers","Quisque.ac@gravidasagittis.org","0845 46 95","13-08-20","21-02-18"),(94,"Jasmine","Parks","ultricies.sem.magna@dui.edu","0812 462 4168","02-09-19","09-10-17"),(95,"Brody","Christian","Duis.sit.amet@facilisisSuspendisse.com","(015139) 60996","06-01-20","06-11-20"),(96,"Kevin","Carpenter","sed.hendrerit@nonquamPellentesque.edu","070 3263 1684","21-06-18","20-03-16"),(97,"Dale","William","Quisque.tincidunt.pede@magnisdisparturient.ca","0845 46 46","23-10-20","11-11-16"),(98,"Hu","Santos","Phasellus.at@pedeac.net","0800 201892","22-12-20","29-10-16"),(99,"Victoria","Richard","dictum.eleifend@blanditenimconsequat.co.uk","(0101) 037 1977","30-12-18","28-08-17"),(100,"Brady","Whitaker","non.ante.bibendum@euismodenim.ca","0980 1111","25-10-19","09-01-16");

INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (72,"F","1982-12-25","Chhindwara","Sri Lanka","19-06-19","20-01-18"),(64,"M","1977-12-15","Kitimat","Reunion","22-12-18","08-12-15"),(84,"F","1986-07-07","Haverhill","Benin","01-07-17","06-11-16"),(47,"M","1979-03-16","Ramara","Bermuda","16-09-17","19-06-18"),(1,"M","1976-12-24","Belford Roxo","Papua New Guinea","08-02-18","20-07-20"),(26,"M","2000-04-04","Rionero in Vulture","Greece","05-12-16","22-01-16"),(73,"F","2002-05-09","Lamorteau","Marshall Islands","10-08-18","20-09-17"),(70,"F","1986-08-13","Bear","Israel","06-10-15","15-03-18"),(37,"F","1981-05-31","Balvano","Virgin Islands, British","17-05-18","06-12-16"),(20,"F","1986-10-27","Linton","Brunei","09-06-18","27-01-21");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (2,"F","1998-07-14","Leominster","French Southern Territories","11-05-20","05-12-17"),(23,"F","1984-02-16","Kooigem","Fiji","17-11-15","02-01-16"),(44,"M","1971-08-21","Gorbea","Laos","30-12-16","02-04-18"),(29,"M","1993-06-11","Livorno","Senegal","17-04-16","16-08-17"),(69,"F","1985-06-24","Seogwipo","Sint Maarten","01-01-16","06-05-18"),(25,"F","1971-11-29","Kolhapur","Burkina Faso","04-02-19","13-03-20"),(54,"F","1988-10-18","Hexham","Wallis and Futuna","11-08-18","20-03-20"),(5,"F","1987-07-22","Machilipatnam","Vanuatu","07-08-18","21-01-18"),(90,"M","1973-11-25","Musakhel","Zimbabwe","07-09-18","13-07-19"),(55,"M","1971-04-14","Lavacherie","Saint Pierre and Miquelon","15-08-17","30-05-17");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (56,"F","1979-07-11","High Wycombe","Burkina Faso","25-09-19","30-01-18"),(77,"F","1994-11-28","Athus","Comoros","13-06-18","06-01-21"),(61,"M","1989-01-31","Ballarat","Curaçao","06-10-15","08-05-18"),(76,"M","1976-04-28","Coupar Angus","Saint Pierre and Miquelon","07-12-20","26-07-20"),(4,"M","1988-12-08","Rochester","Bangladesh","11-02-17","19-11-15"),(27,"M","1984-06-25","Arzano","Holy See (Vatican City State)","22-08-18","31-05-18"),(19,"M","1996-02-26","Gyeongju","Saint Pierre and Miquelon","12-12-17","14-06-19"),(10,"M","1990-09-08","Ransart","Spain","27-01-20","10-04-20"),(67,"M","1983-06-05","Garzón","India","02-02-16","14-12-18"),(16,"F","1983-03-30","SŽlange","Northern Mariana Islands","24-01-21","01-05-20");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (33,"M","1986-08-08","Yamuna Nagar","Guinea","19-06-18","23-11-20"),(28,"F","1979-02-23","Boignee","Chile","18-06-17","06-02-18"),(97,"F","1987-12-18","Comblain-Fairon","Taiwan","29-01-19","12-05-16"),(42,"F","2001-11-30","Taunton","Dominican Republic","16-02-16","17-10-19"),(21,"M","2004-08-30","Wismar","Denmark","12-06-20","22-05-20"),(98,"M","1984-06-04","Delmenhorst","Benin","07-06-17","13-05-16"),(36,"M","1971-02-28","Ambon","Austria","17-11-16","03-09-16"),(63,"F","1973-09-03","Dollard-des-Ormeaux","Grenada","16-06-19","30-01-19"),(53,"M","1999-03-23","Dehradun","Swaziland","02-06-18","28-03-17"),(35,"F","1983-02-02","La Salle","Trinidad and Tobago","08-09-18","13-07-18");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (82,"M","1970-12-06","La Matap�dia","Ukraine","10-11-15","30-12-16"),(60,"M","1997-02-14","Portsmouth","Norfolk Island","08-04-19","11-04-19"),(65,"M","1993-03-13","Mauá","United Kingdom (Great Britain)","18-04-20","05-12-16"),(74,"M","2001-07-28","Nieuwkapelle","Curaçao","30-04-16","16-02-20"),(32,"M","1994-07-17","Skegness","Tanzania","07-12-19","29-07-19"),(45,"M","2004-08-09","Greater Hobart","Saudi Arabia","19-01-17","10-03-17"),(12,"M","2003-10-21","Tiruchirapalli","Malta","27-09-19","23-06-17"),(51,"M","1999-02-21","Alsemberg","Faroe Islands","15-12-17","28-12-15"),(71,"F","1996-02-29","St. Clears","Moldova","10-06-19","07-07-17"),(57,"M","1975-12-10","Afşin","Malawi","04-03-19","27-07-19");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (41,"M","1975-03-22","Recoleta","Turkey","29-07-17","07-01-21"),(80,"F","1986-01-03","Aieta","Mauritania","12-10-19","21-02-17"),(83,"F","1991-10-01","Ollagüe","Lebanon","13-05-17","28-11-17"),(30,"M","1995-06-07","Owerri","Suriname","25-04-17","20-02-18"),(24,"F","1973-05-01","Magangué","Burundi","26-10-18","10-11-20"),(75,"F","1976-03-07","Darlington","Croatia","21-04-18","05-03-20"),(31,"M","2004-02-12","Biesme-sous-Thuin","Saudi Arabia","17-06-17","09-11-17"),(89,"F","1983-08-01","Iowa City","Botswana","05-02-19","15-12-20"),(66,"M","1988-02-22","Leugnies","Peru","21-09-19","19-09-19"),(39,"M","1991-12-06","Avelgem","Chile","28-07-19","03-09-17");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (78,"F","1994-02-15","Beervelde","Japan","02-01-17","24-01-21"),(87,"M","1972-01-29","Rodez","Saint Barthélemy","07-07-20","20-07-18"),(68,"F","1973-05-18","Piła","Laos","26-06-17","01-12-20"),(3,"F","1986-04-21","Landenne","Mali","02-03-17","06-09-19"),(88,"F","1998-03-31","Pitt Meadows","Netherlands","30-10-15","14-02-20"),(9,"F","1973-02-05","Bollnäs","United Kingdom (Great Britain)","07-02-16","04-11-19"),(86,"M","1994-02-10","Berlare","Portugal","24-06-17","08-06-18"),(58,"M","1987-03-14","Acquasparta","Guinea-Bissau","21-04-16","16-12-15"),(11,"M","1979-05-23","The Hague","Palestine, State of","05-01-21","09-08-17"),(46,"F","1981-07-05","Independence","Niue","21-06-18","14-08-17");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (17,"M","1989-04-10","West Valley City","Congo, the Democratic Republic of the","31-07-20","01-06-18"),(94,"F","1999-08-01","Loupoigne","Venezuela","29-09-17","12-11-18"),(34,"M","1975-06-03","Manoppello","Saint Barthélemy","07-04-16","04-10-18"),(81,"M","1995-04-10","St. Albert","Poland","13-08-18","01-09-16"),(100,"F","1981-01-12","Kent","Comoros","27-05-18","20-08-16"),(22,"M","1983-05-06","Neyveli","Montenegro","08-12-16","24-12-17"),(40,"F","1979-08-11","Santu Lussurgiu","Montserrat","05-12-19","15-05-18"),(15,"M","1998-12-16","María Elena","Korea, North","06-03-16","24-12-17"),(99,"F","1985-07-28","Banda Aceh","Iceland","20-01-19","05-05-20"),(7,"F","1999-12-01","Mexicali","Honduras","13-07-19","06-05-16");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (49,"F","1980-01-02","Mustafakemalpaşa","Congo, the Democratic Republic of the","13-04-18","04-02-16"),(48,"M","2003-07-14","Jumet","Poland","03-10-17","08-06-20"),(43,"M","1998-08-21","San Juan de Dios","Turkmenistan","08-12-17","24-11-16"),(14,"M","1981-01-29","San Valentino in Abruzzo Citeriore","Paraguay","20-12-19","17-11-16"),(92,"F","1990-09-15","LaSalle","Gambia","08-12-15","01-03-20"),(6,"F","1976-03-16","San Juan de la Costa","Gabon","23-12-17","11-03-18"),(38,"F","1976-01-20","Marystown","Chad","25-08-16","11-02-18"),(18,"M","1979-01-19","Montemesola","Samoa","21-06-19","28-12-19"),(91,"F","1998-10-11","Taldom","Saint Vincent and The Grenadines","27-05-20","20-08-20"),(8,"F","1996-03-06","Vitrival","Haiti","12-02-17","10-07-17");
INSERT INTO vk.profiles (user_id,gender,birthday,city,country,created_at,updated_at) VALUES (95,"M","1988-04-08","Buckingham","Belize","11-11-19","04-09-16"),(59,"M","1972-05-27","Warwick","Iceland","04-11-15","25-09-19"),(13,"M","1999-09-25","Putignano","Philippines","22-05-18","16-01-18"),(50,"F","2000-12-10","Rixensart","Kyrgyzstan","02-03-18","06-08-17"),(96,"F","2004-08-29","Bastia","Djibouti","17-01-18","28-03-18"),(79,"M","1972-11-13","High Level","Georgia","10-10-19","25-09-18"),(62,"F","1970-06-11","Floriffoux","Thailand","05-07-18","20-10-16"),(93,"F","1998-03-09","Lodhran","Cambodia","22-12-16","23-12-20"),(85,"F","2000-02-02","Launceston","United States","31-03-16","03-12-20"),(52,"M","1992-11-15","Samsun","Mali","30-03-17","15-01-21");

insert into vk.media_types (name) values ('audio'),('video'),('image');

insert into vk.media (id, user_id, filename, size, metadata, media_type_id) values (1, 88, 'https://businessweek.com/condimentum/neque/sapien.png', 59357, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (2, 27, 'https://webs.com/turpis/nec/euismod/scelerisque/quam/turpis.mp3', 336073, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (3, 70, 'http://joomla.org/nulla/sed/vel/enim/sit/amet/nunc.mpeg', 120662, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (4, 24, 'http://cnn.com/erat/nulla/tempus/vivamus/in/felis/eu.mpeg', 612155, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (5, 89, 'https://nationalgeographic.com/hac/habitasse/platea/dictumst/morbi/vestibulum/velit.mp3', 976024, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (6, 86, 'http://livejournal.com/in/porttitor/pede/justo/eu.mp3', 643681, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (7, 64, 'https://sfgate.com/tortor/sollicitudin.mpeg', 310287, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (8, 31, 'http://sphinn.com/risus/praesent.mpeg', 803693, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (9, 52, 'https://nih.gov/in/quam/fringilla/rhoncus/mauris/enim.png', 947962, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (10, 10, 'http://unblog.fr/at/dolor.mp3', 866436, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (11, 63, 'http://google.nl/nibh/in/hac/habitasse.mpeg', 762437, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (12, 86, 'https://devhub.com/non/mauris/morbi/non.png', 315346, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (13, 35, 'https://redcross.org/non/quam/nec/dui/luctus.mpeg', 514142, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (14, 8, 'http://netvibes.com/id/justo/sit/amet.mpeg', 914371, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (15, 63, 'http://yahoo.com/habitasse/platea/dictumst/morbi/vestibulum.mpeg', 999905, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (16, 51, 'https://marketwatch.com/nunc/commodo/placerat/praesent/blandit.mpeg', 99811, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (17, 21, 'http://cnet.com/neque/duis/bibendum/morbi.mpeg', 141482, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (18, 44, 'https://typepad.com/nec/nisi/vulputate/nonummy.avi', 809448, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (19, 87, 'http://about.me/elit/proin.mp3', 551489, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (20, 66, 'https://si.edu/sapien.mp3', 37891, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (21, 67, 'https://si.edu/sapien123.mp3', 33891, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (22, 89, 'https://eventbrite.com/nullam/sit/amet.png', 980430, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (23, 35, 'https://cafepress.com/mi.png', 988651, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (24, 31, 'http://mozilla.com/convallis/tortor.png', 434931, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (25, 7, 'http://businessinsider.com/ac/leo/pellentesque/ultrices/mattis/odio/donec.mp3', 504186, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (26, 69, 'http://yale.edu/ultrices/enim/lorem/ipsum/dolor/sit/amet.mp3', 126403, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (27, 49, 'https://apple.com/ut/tellus/nulla/ut/erat/id.mp3', 462808, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (28, 55, 'https://fda.gov/eu/interdum/eu/tincidunt/in/leo/maecenas.png', 241414, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (29, 88, 'https://ox.ac.uk/risus/auctor/sed.png', 350800, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (30, 20, 'http://lycos.com/id.mpeg', 501222, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (31, 97, 'http://epa.gov/morbi/sem/mauris.png', 179264, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (32, 27, 'http://about.me/venenatis.mpeg', 527392, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (33, 54, 'https://joomla.org/id/luctus.png', 761101, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (34, 82, 'https://livejournal.com/ridiculus/mus/vivamus.png', 405631, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (35, 73, 'https://sphinn.com/massa/quis/augue/luctus.png', 682369, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (36, 65, 'https://latimes.com/suspendisse/accumsan/tortor/quis.mpeg', 663401, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (37, 98, 'http://ibm.com/quam/a/odio/in.mp3', 960441, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (38, 100, 'http://toplist.cz/sapien/iaculis/congue/vivamus/metus/arcu.mpeg', 874730, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (39, 16, 'http://nifty.com/elementum/in/hac/habitasse/platea.mp3', 426349, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (40, 56, 'https://reverbnation.com/lectus/suspendisse/potenti/in/eleifend/quam.mpeg', 349634, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (41, 53, 'https://xrea.com/sed/tincidunt/eu/felis/fusce/posuere.mpeg', 347389, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (42, 80, 'https://shop-pro.jp/neque/vestibulum/eget/vulputate/ut/ultrices.jpg', 300319, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (43, 85, 'http://abc.net.au/maecenas/rhoncus111.mpeg', 650481, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (44, 88, 'https://nsw.gov.au/amet/consectetuer/adipiscing/elit/proin/interdum/mauris.mp3', 550477, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (45, 79, 'http://cpanel.net/in/hac/habitasse/platea.mpeg', 503416, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (46, 85, 'http://abc.net.au/maecenas/rhoncus.mpeg', 699481, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (47, 67, 'http://ebay.co.uk/vestibulum/eget.mp3', 394104, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (48, 92, 'https://nymag.com/leo/odio.avi', 583114, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (49, 86, 'https://shop-pro.jp/id/justo/sit/amet/sapien/dignissim.jpg', 788415, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (50, 1, 'http://1688.com/elit/proin.mp3', 633847, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (51, 37, 'https://surveymonkey.com/platea/dictumst/etiam.mp3', 152546, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (52, 47, 'https://surveymonkey.com/platea/dictumst/etiam12.mp3', 15546, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (53, 17, 'https://surveymonkey.com/platea/dictumst/etiam333.mp3', 15460, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (54, 78, 'https://ovh.net/odio/porttitor/id/consequat/in/consequat/ut.avi', 188927, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (55, 33, 'http://wisc.edu/ante.jpg', 647122, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (56, 23, 'https://amazon.de/penatibus/et/magnis/dis/parturient.jpg', 65353, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (57, 6, 'https://psu.edu/curabitur/gravida/nisi/at/nibh/in.jpg', 447087, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (58, 92, 'http://rambler.ru/faucibus/accumsan/odio/curabitur/convallis/duis/consequat.avi', 548343, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (59, 47, 'http://boston.com/odio/odio/elementum/eu/interdum.jpg', 791549, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (60, 55, 'http://imdb.com/orci/eget/orci.mp3', 603519, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (61, 25, 'http://reverbnation.com/molestie/nibh.jpg', 547325, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (62, 100, 'https://paypal.com/magna/at/nunc/commodo/placerat.mp3', 613108, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (63, 79, 'http://answers.com/aliquam.jpg', 114597, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (64, 25, 'http://typepad.com/id/justo/sit.jpg', 732221, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (65, 45, 'https://networksolutions.com/a.mp3', 804278, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (66, 73, 'http://hhs.gov/amet/sapien/dignissim/vestibulum/vestibulum/ante/ipsum.mp3', 863008, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (67, 36, 'https://google.com.hk/blandit/nam.avi', 183136, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (68, 68, 'http://com.com/sed/justo/pellentesque/viverra/pede/ac/diam.mp3', 241096, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (69, 45, 'http://psu.edu/suscipit/nulla/elit/ac/nulla.jpg', 703937, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (70, 6, 'http://unc.edu/nec/euismod.mp3', 451781, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (71, 46, 'http://alibaba.com/eget/nunc/donec.jpg', 982170, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (72, 29, 'http://hatena.ne.jp/donec/semper/sapien/a/libero/nam.jpg', 642506, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (73, 23, 'https://friendfeed.com/mattis/nibh/ligula.jpg', 170488, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (74, 41, 'http://tamu.edu/id.mp3', 562174, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (75, 39, 'http://cbc.ca/lobortis/vel/dapibus/at/diam/nam/tristique.png', 48574, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (76, 90, 'http://marketwatch.com/nibh/in/hac/habitasse/platea.mp3', 468983, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (77, 91, 'http://marketwatch.com/nibh/in/hac/habitasse/platea222.mp3', 46983, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (78, 100, 'https://amazonaws.com/amet/eros/suspendisse.mp3', 890020, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (79, 49, 'https://businesswire.com/libero/quis.mp3', 888444, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (80, 72, 'http://issuu.com/ullamcorper/augue/a/suscipit/nulla/elit.png', 692639, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (81, 33, 'http://irs.gov/tellus/in/sagittis/dui/vel/nisl/duis.mp3', 433284, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (82, 40, 'https://sciencedaily.com/vulputate/ut/ultrices/vel/augue.png', 820144, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (83, 11, 'http://cbslocal.com/a.avi', 318336, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (84, 92, 'https://miibeian.gov.cn/blandit/non/interdum/in/ante/vestibulum/ante.jpg', 784960, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (85, 50, 'https://ed.gov/vivamus/in/felis/eu/sapien/cursus.mp3', 386620, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (86, 92, 'https://multiply.com/velit/nec/nisi/vulputate/nonummy/maecenas/tincidunt.avi', 383150, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (87, 92, 'https://cmu.edu/purus/eu/magna/vulputate/luctus.mp3', 556923, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (88, 90, 'https://mit.edu/arcu/adipiscing/molestie.jpg', 237832, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (89, 44, 'https://addtoany.com/pede/libero/quis/orci.mp3', 350126, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (90, 2, 'http://cornell.edu/nisl/nunc/nisl.mp3', 102392, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (91, 46, 'https://netlog.com/quam/turpis.jpg', 764997, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id ) values (92, 73, 'http://hostgator.com/sapien.mpeg', 34337, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (93, 100, 'http://hibu.com/vulputate/ut/ultrices/vel/augue/vestibulum.mp3', 621734, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (94, 28, 'https://deliciousdays.com/mattis/egestas/metus/aenean/fermentum/donec/ut.png', 473343, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (95, 56, 'https://nbcnews.com/integer/ac/neque/duis/bibendum.avi', 252192, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (96, 87, 'https://clickbank.net/tortor.mp3', 789940, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (97, 58, 'http://ameblo.jp/et/ultrices/posuere/cubilia/curae/donec/pharetra.mp3', 26961, '[{}]', 1);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (98, 34, 'http://slate.com/quisque/ut.avi', 299257, '[{}]', 2);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (99, 20, 'http://pen.io/magna/vulputate/luctus/cum/sociis/natoque.jpg', 797838, '[{}]', 3);
insert into vk.media (id, user_id, filename, size, metadata, media_type_id  ) values (100, 8, 'https://taobao.com/felis/donec/semper/sapien/a/libero.mp3', 352535, '[{}]', 1);

update vk.media set metadata = concat('{"owner":"',(select concat(first_name, ' ', last_name) from vk.users where vk.media.user_id = vk.users.id), '"}') where id > 0;

alter table vk.friendship drop column  requested_at;

insert into vk.friendship_statuses (name) values ('Requested'), ('Confirmed'), ('Rejected');

insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (55, 7, 1, '2021-01-03');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (98, 49, 3, '2018-04-18');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (91, 40, 3, '2015-09-29');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (83, 74, 2, '2019-03-12');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (42, 20, 3, '2019-04-10');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (93, 19, 2, '2020-12-20');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (72, 24, 2, '2018-12-28');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (9, 35, 2, '2016-06-01');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (32, 90, 1, '2019-02-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (85, 52, 2, '2017-05-31');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (42, 42, 1, '2019-07-04');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (79, 66, 2, '2020-11-13');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (63, 36, 2, '2018-06-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (78, 70, 2, '2017-03-08');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (49, 77, 3, '2018-07-24');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (54, 34, 2, '2019-02-14');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (77, 50, 2, '2018-06-02');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (81, 29, 3, '2017-03-20');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (53, 56, 1, '2020-01-31');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (92, 97, 1, '2018-03-09');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (79, 95, 1, '2015-02-21');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (62, 77, 2, '2017-03-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (41, 29, 1, '2018-06-17');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (31, 21, 3, '2017-11-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (97, 49, 1, '2019-10-16');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (69, 29, 1, '2017-04-20');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (58, 35, 3, '2017-01-22');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (9, 9, 2, '2017-02-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (50, 21, 3, '2015-05-14');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (5, 49, 1, '2017-11-02');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (90, 72, 3, '2018-05-16');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (9, 43, 1, '2020-05-26');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (28, 67, 3, '2019-08-15');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (79, 54, 1, '2015-03-19');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (28, 63, 2, '2016-08-12');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (96, 40, 2, '2016-07-10');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (98, 39, 3, '2016-11-14');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (93, 1, 1, '2018-10-17');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (39, 35, 2, '2020-11-19');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (45, 39, 2, '2019-06-03');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (33, 65, 2, '2017-05-17');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (41, 85, 3, '2019-09-08');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (89, 32, 3, '2019-05-12');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (78, 79, 1, '2015-06-17');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (54, 8, 1, '2017-07-25');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (33, 24, 1, '2020-08-12');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (68, 98, 3, '2019-07-24');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (45, 25, 3, '2019-05-05');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (46, 13, 3, '2017-08-15');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (36, 71, 3, '2020-09-20');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (57, 25, 1, '2016-11-28');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (17, 70, 1, '2020-09-09');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (55, 50, 3, '2020-06-16');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (69, 63, 3, '2015-12-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (93, 5, 2, '2020-02-24');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (39, 1, 2, '2016-12-15');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (59, 32, 2, '2020-04-12');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (25, 11, 1, '2019-12-24');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (9, 10, 3, '2020-01-29');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (43, 50, 2, '2018-09-07');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (48, 51, 2, '2016-01-01');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (14, 85, 1, '2016-04-29');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (86, 83, 3, '2018-08-04');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (39, 40, 2, '2018-07-09');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (9, 33, 1, '2018-05-28');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (79, 64, 2, '2018-08-07');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (98, 69, 1, '2017-05-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (69, 72, 3, '2016-06-07');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (97, 53, 2, '2021-01-21');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (18, 12, 1, '2017-09-26');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (61, 73, 3, '2018-09-16');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (4, 73, 3, '2019-01-25');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (79, 97, 2, '2017-01-11');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (53, 29, 1, '2016-01-10');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (39, 12, 3, '2017-01-21');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (3, 25, 2, '2017-04-04');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (14, 41, 1, '2017-10-23');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (15, 39, 1, '2016-09-06');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (36, 67, 1, '2016-05-16');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (68, 89, 2, '2017-09-29');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (85, 25, 1, '2019-12-15');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (30, 2, 2, '2015-08-06');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (47, 41, 1, '2018-07-18');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (72, 83, 2, '2020-11-25');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (11, 15, 3, '2020-06-22');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (17, 64, 3, '2020-10-04');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (22, 17, 2, '2016-01-10');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (74, 26, 2, '2018-05-15');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (81, 35, 2, '2016-06-22');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (35, 42, 1, '2020-12-25');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (77, 57, 1, '2015-10-10');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (1, 7, 2, '2018-05-16');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (79, 19, 3, '2019-12-02');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (35, 48, 2, '2019-03-08');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (40, 75, 2, '2016-02-18');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (39, 32, 3, '2018-04-21');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (17, 36, 1, '2018-04-08');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (6, 74, 2, '2015-12-25');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (88, 48, 3, '2016-06-02');
insert into vk.friendship (user_id, friend_id, friendship_status_id, confirmed_at) values (53, 52, 3, '2019-11-01');

alter table vk.communities add column owner_id INT UNSIGNED NOT NULL AFTER id;

insert into vk.communities (id, owner_id, name) values (1, 46, 'Schamberger, Swaniawski and Morar');
insert into vk.communities (id, owner_id, name) values (2, 88, 'Gleason-Cronin');
insert into vk.communities (id, owner_id, name) values (3, 66, 'Kuhic Inc');
insert into vk.communities (id, owner_id, name) values (4, 10, 'Hilpert Group');
insert into vk.communities (id, owner_id, name) values (5, 96, 'Jacobs-Jenkins');
insert into vk.communities (id, owner_id, name) values (6, 27, 'Abbott-Johns');
insert into vk.communities (id, owner_id, name) values (7, 45, 'Marvin-Blick');
insert into vk.communities (id, owner_id, name) values (8, 64, 'Gutkowski Group');
insert into vk.communities (id, owner_id, name) values (9, 89, 'Dicki LLC');
insert into vk.communities (id, owner_id, name) values (10, 59, 'Hessel, Monahan and Abbott');
insert into vk.communities (id, owner_id, name) values (11, 47, 'Nolan, Langworth and Dooley');
insert into vk.communities (id, owner_id, name) values (12, 37, 'Schmeler, Olson and Hoppe');
insert into vk.communities (id, owner_id, name) values (13, 86, 'Schulist-Zieme');
insert into vk.communities (id, owner_id, name) values (14, 98, 'Ernser-Kling');
insert into vk.communities (id, owner_id, name) values (15, 60, 'Mills and Sons');
insert into vk.communities (id, owner_id, name) values (16, 14, 'Bartoletti, Hand and Dickinson');
insert into vk.communities (id, owner_id, name) values (17, 89, 'Boehm Group');
insert into vk.communities (id, owner_id, name) values (18, 62, 'Klein, Howell and Parisian');
insert into vk.communities (id, owner_id, name) values (19, 44, 'Boyer, Goldner and Bernhard');
insert into vk.communities (id, owner_id, name) values (20, 79, 'Cremin, Johnson and Baumbach');

insert into vk.communities_users (community_id, user_id, created_at) values (9, 49, '2015-05-13 01:11:13');
insert into vk.communities_users (community_id, user_id, created_at) values (15, 27, '2017-09-13 07:53:45');
insert into vk.communities_users (community_id, user_id, created_at) values (3, 44, '2018-06-06 11:24:05');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 7, '2019-12-28 21:16:05');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 91, '2016-05-25 01:40:05');
insert into vk.communities_users (community_id, user_id, created_at) values (16, 52, '2016-07-13 20:10:18');
insert into vk.communities_users (community_id, user_id, created_at) values (8, 13, '2020-01-02 23:03:37');
insert into vk.communities_users (community_id, user_id, created_at) values (14, 7, '2020-01-04 14:58:21');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 97, '2015-02-23 16:53:33');
insert into vk.communities_users (community_id, user_id, created_at) values (14, 5, '2020-03-01 10:48:50');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 95, '2015-11-27 01:05:03');
insert into vk.communities_users (community_id, user_id, created_at) values (3, 93, '2019-05-13 18:00:25');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 83, '2018-09-28 19:54:39');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 80, '2018-02-16 07:32:21');
insert into vk.communities_users (community_id, user_id, created_at) values (15, 51, '2019-01-13 01:18:55');
insert into vk.communities_users (community_id, user_id, created_at) values (13, 44, '2016-10-14 21:34:10');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 97, '2020-09-05 19:42:20');
insert into vk.communities_users (community_id, user_id, created_at) values (11, 81, '2020-10-18 21:54:06');
insert into vk.communities_users (community_id, user_id, created_at) values (1, 64, '2018-12-25 00:57:34');
insert into vk.communities_users (community_id, user_id, created_at) values (4, 25, '2020-11-07 20:14:56');
insert into vk.communities_users (community_id, user_id, created_at) values (15, 77, '2020-01-31 20:27:31');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 67, '2015-08-20 10:47:17');
insert into vk.communities_users (community_id, user_id, created_at) values (7, 50, '2016-12-24 16:43:49');
insert into vk.communities_users (community_id, user_id, created_at) values (4, 49, '2020-06-27 01:06:22');
insert into vk.communities_users (community_id, user_id, created_at) values (16, 54, '2020-08-06 19:43:22');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 58, '2020-12-04 05:46:28');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 41, '2017-05-02 19:12:31');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 55, '2019-09-23 03:25:52');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 3, '2016-12-12 02:31:50');
insert into vk.communities_users (community_id, user_id, created_at) values (7, 46, '2016-04-28 07:12:42');
insert into vk.communities_users (community_id, user_id, created_at) values (16, 50, '2017-01-09 19:00:00');
insert into vk.communities_users (community_id, user_id, created_at) values (8, 67, '2015-12-28 22:35:08');
insert into vk.communities_users (community_id, user_id, created_at) values (19, 16, '2016-03-05 15:43:23');
insert into vk.communities_users (community_id, user_id, created_at) values (6, 21, '2015-10-12 21:19:17');
insert into vk.communities_users (community_id, user_id, created_at) values (1, 81, '2016-07-07 13:41:04');
insert into vk.communities_users (community_id, user_id, created_at) values (17, 40, '2015-11-24 17:39:32');
insert into vk.communities_users (community_id, user_id, created_at) values (15, 31, '2016-10-11 23:25:33');
insert into vk.communities_users (community_id, user_id, created_at) values (1, 44, '2015-06-27 10:19:19');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 12, '2017-08-02 18:09:54');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 81, '2015-09-05 11:59:07');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 67, '2018-10-08 03:19:11');
insert into vk.communities_users (community_id, user_id, created_at) values (2, 60, '2019-04-08 18:36:30');
insert into vk.communities_users (community_id, user_id, created_at) values (2, 75, '2019-12-30 06:12:58');
insert into vk.communities_users (community_id, user_id, created_at) values (12, 75, '2015-04-27 23:04:32');
insert into vk.communities_users (community_id, user_id, created_at) values (6, 65, '2015-11-01 05:21:54');
insert into vk.communities_users (community_id, user_id, created_at) values (17, 55, '2019-08-19 02:44:09');
insert into vk.communities_users (community_id, user_id, created_at) values (2, 59, '2020-04-21 05:53:25');
insert into vk.communities_users (community_id, user_id, created_at) values (7, 27, '2016-03-13 05:01:04');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 29, '2020-05-30 08:58:16');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 98, '2017-02-13 19:10:28');
insert into vk.communities_users (community_id, user_id, created_at) values (16, 89, '2017-06-05 15:21:13');
insert into vk.communities_users (community_id, user_id, created_at) values (3, 29, '2016-12-11 05:43:10');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 45, '2018-11-19 04:23:21');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 50, '2018-10-16 05:22:40');
insert into vk.communities_users (community_id, user_id, created_at) values (8, 74, '2020-08-24 23:37:49');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 18, '2016-11-06 08:35:46');
insert into vk.communities_users (community_id, user_id, created_at) values (11, 25, '2018-04-18 12:26:59');
insert into vk.communities_users (community_id, user_id, created_at) values (11, 76, '2020-09-06 00:27:27');
insert into vk.communities_users (community_id, user_id, created_at) values (4, 35, '2018-04-06 15:05:53');
insert into vk.communities_users (community_id, user_id, created_at) values (3, 9, '2020-12-15 04:08:18');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 93, '2021-02-04 03:13:41');
insert into vk.communities_users (community_id, user_id, created_at) values (17, 19, '2018-06-22 14:15:41');
insert into vk.communities_users (community_id, user_id, created_at) values (13, 28, '2019-12-05 02:08:56');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 27, '2016-09-12 00:06:55');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 54, '2020-09-04 01:15:38');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 94, '2020-11-08 10:15:15');
insert into vk.communities_users (community_id, user_id, created_at) values (9, 44, '2016-11-20 08:41:14');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 92, '2018-11-07 13:07:44');
insert into vk.communities_users (community_id, user_id, created_at) values (9, 7, '2020-05-12 09:03:56');
insert into vk.communities_users (community_id, user_id, created_at) values (4, 15, '2019-10-08 22:20:14');
insert into vk.communities_users (community_id, user_id, created_at) values (9, 82, '2016-12-06 01:20:35');
insert into vk.communities_users (community_id, user_id, created_at) values (3, 50, '2016-01-13 07:25:50');
insert into vk.communities_users (community_id, user_id, created_at) values (11, 99, '2019-04-18 17:16:58');
insert into vk.communities_users (community_id, user_id, created_at) values (1, 42, '2016-12-02 23:35:01');
insert into vk.communities_users (community_id, user_id, created_at) values (15, 83, '2015-10-01 00:15:02');
insert into vk.communities_users (community_id, user_id, created_at) values (4, 33, '2018-04-07 08:41:55');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 53, '2018-03-22 11:27:21');
insert into vk.communities_users (community_id, user_id, created_at) values (14, 46, '2016-09-16 06:04:40');
insert into vk.communities_users (community_id, user_id, created_at) values (17, 77, '2016-10-30 07:42:01');
insert into vk.communities_users (community_id, user_id, created_at) values (11, 64, '2020-09-14 20:07:53');
insert into vk.communities_users (community_id, user_id, created_at) values (17, 84, '2019-09-20 06:55:12');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 87, '2017-10-29 23:02:40');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 6, '2017-11-15 16:09:01');
insert into vk.communities_users (community_id, user_id, created_at) values (16, 55, '2019-05-10 08:53:05');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 43, '2018-11-29 22:03:42');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 34, '2020-03-22 19:42:27');
insert into vk.communities_users (community_id, user_id, created_at) values (10, 13, '2016-05-27 23:17:22');
insert into vk.communities_users (community_id, user_id, created_at) values (15, 57, '2016-12-25 04:41:28');
insert into vk.communities_users (community_id, user_id, created_at) values (11, 74, '2018-08-19 00:00:05');
insert into vk.communities_users (community_id, user_id, created_at) values (14, 8, '2019-07-29 16:35:57');
insert into vk.communities_users (community_id, user_id, created_at) values (12, 9, '2017-09-23 00:05:32');
insert into vk.communities_users (community_id, user_id, created_at) values (18, 84, '2019-04-11 20:58:18');
insert into vk.communities_users (community_id, user_id, created_at) values (17, 59, '2019-12-10 11:01:44');
insert into vk.communities_users (community_id, user_id, created_at) values (2, 43, '2018-10-08 01:52:34');
insert into vk.communities_users (community_id, user_id, created_at) values (5, 23, '2016-01-08 23:35:28');
insert into vk.communities_users (community_id, user_id, created_at) values (9, 47, '2020-06-09 01:33:30');
insert into vk.communities_users (community_id, user_id, created_at) values (7, 69, '2019-04-08 18:13:28');
insert into vk.communities_users (community_id, user_id, created_at) values (7, 18, '2019-03-23 19:23:40');
insert into vk.communities_users (community_id, user_id, created_at) values (4, 29, '2018-02-03 16:24:59');
insert into vk.communities_users (community_id, user_id, created_at) values (20, 50, '2015-12-15 13:51:24');

update vk.communities set created_at = (SELECT FROM_UNIXTIME(ROUND((RAND() * (UNIX_TIMESTAMP('2021-02-14')-UNIX_TIMESTAMP('2015-01-01')))+UNIX_TIMESTAMP('2015-01-01')))) where id > 0;
SELECT FROM_UNIXTIME(ROUND((RAND() * (UNIX_TIMESTAMP('2021-14-02')-UNIX_TIMESTAMP('2015-01-01')))+UNIX_TIMESTAMP('2015-01-01')));
