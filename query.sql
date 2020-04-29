/*SOME QUERIES THAT CAN BE RUN*/

Select v.title, c.category_id, c.category_title, v.views
from video_CA as v 
join category as c
on v.category_id = c.category_id;

Drop view category_video_title;

CREATE VIEW category_video_title AS
SELECT v.title, c.category_id, c.category_title, v.views, v.likes, v.dislikes, v.comments
FROM video_CA as v
JOIN category as c
on v.category_id = c.category_id;

SELECT *
FROM category_video_title;

SELECT * 
FROM video_category_ca;

SELECT category_title,sum(views) as sum_views,sum(likes) as sum_likes
from category_video_title
group by category_title
order by sum_views desc;

SELECT * 
FROM video_category_CA
where category_title='Entertainment'
order by views desc
LIMIT 2;



#mostviews 

SELECT v.video_id, v.title, v.category_id, c.category_title, v.views, v.likes, v.dislikes, v.comments
FROM video_US AS v
INNER JOIN category AS c ON
v.category_id = c.category_id
ORDER BY v.views DESC;

#mostlikes
SELECT v.video_id, v.title, v.category_id, c.category_title, v.views, v.likes, v.dislikes, v.comments
FROM video_US AS v
INNER JOIN category AS c ON
v.category_id = c.category_id
ORDER BY v.likes DESC;

#mostdislikes
SELECT v.video_id, v.title, v.category_id, c.category_title, v.views, v.likes, v.dislikes, v.comments
FROM video_US AS v
INNER JOIN category AS c ON
v.category_id = c.category_id
ORDER BY v.dislikes DESC;


#mostcomments
SELECT v.video_id, v.title, v.category_id, c.category_title, v.views, v.likes, v.dislikes, v.comments
FROM video_US AS v
INNER JOIN category AS c ON
v.category_id = c.category_id
ORDER BY v.comments DESC;

#categorytypecount
SELECT c.category_title, COUNT(c.category_title) AS "Category Count"
FROM category AS c 
INNER JOIN video_US AS v ON v.category_id = c.category_id
GROUP BY c.category_title
ORDER BY "Category Count" DESC;


SELECT c.category_title, SUM(v.views) AS "Total Views Count"
FROM category AS c 
INNER JOIN video_US AS v ON v.category_id = c.category_id
GROUP BY c.category_title
ORDER BY "Total Views Count" DESC;

SELECT c.category_title, SUM(v.likes) AS "Total Likes Count"
FROM category AS c 
INNER JOIN video_US AS v ON v.category_id = c.category_id
GROUP BY c.category_title
ORDER BY "Total Likes Count" DESC;


SELECT c.category_title, SUM(v.dislikes) AS "Total Dislikes Count"
FROM category AS c 
INNER JOIN video_US AS v ON v.category_id = c.category_id
GROUP BY c.category_title
ORDER BY "Total Dislikes Count" DESC;


SELECT c.category_title, SUM(v.comments) AS "Total Comments Count"
FROM category AS c 
INNER JOIN video_US AS v ON v.category_id = c.category_id
GROUP BY c.category_title
ORDER BY "Total Comments Count" DESC;


