Drop table category;
Drop table video_CA;
Drop table video_US;
Drop table video_category_CA;
Drop table video_category_US;

CREATE TABLE category(	
category_title varchar,
category_id int PRIMARY KEY NOT NULL 	
);


CREATE TABLE video_CA(	
video_id varchar NOT NULL,
title varchar PRIMARY KEY NOT NULL,	
category_id int,
publish_datetime varchar,
views int,
likes int,
dislikes int,	
comments int,
FOREIGN KEY (category_id) REFERENCES category(category_id)	
);

CREATE TABLE video_US(	
video_id varchar NOT NULL,
title varchar PRIMARY KEY NOT NULL,	
category_id int,
publish_datetime varchar,
views int,
likes int,
dislikes int,	
comments int,
FOREIGN KEY (category_id) REFERENCES category(category_id)	
);


CREATE TABLE video_category_CA(
video_id varchar,
title varchar PRIMARY KEY,
category_id int,
publish_datetime varchar,
views int,
likes int,
dislikes int,
comments int,
category_title varchar,	
country varchar);

CREATE TABLE video_category_US(
video_id varchar,
title varchar PRIMARY KEY,
category_id int,
publish_datetime varchar,
views int,
likes int,
dislikes int,
comments int,
category_title varchar,	
country varchar);

SELECT *
FROM video_CA;

SELECT *
FROM video_US;


SELECT *
FROM category;

SELECT * 
FROM video_category_CA;

SELECT * 
FROM video_category_US;


