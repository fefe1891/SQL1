playstore=# SELECT * FROM analytics WHERE id = 1880;-- selects all columns from analytics where id is 1880
playstore=# SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01'; -- selects id and app_name from analytics where last_updated is 2018-08-01
playstore=# SELECT category, COUNT(*) FROM analytics GROUP BY category; -- counts number of apps in each category
playstore=# SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5; -- lists top 5 apps with highest number of reviews
playstore=# SELECT app_name, max(reviews) FROM analytics WHERE rating >= 4.8
playstore-# GROUP BY app_name ORDER BY max(reviews) DESC LIMIT 1; -- lists top app with highest number of reviews
playstore=# SELECT app_name, price, rating FROM analytics WHERE RATING < 3 ORDER BY price DESC LIMIT 1; -- lists app with lowest price
playstore=# SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL
playstore-# ORDER BY rating DESC; -- lists apps with lowest rating
playstore=# SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000; -- lists apps with rating less than 3 and more than 10,000 reviews
playstore=# SELECT * FROM analytics WHERE price > 0.1 AND price < 1 ORDER BY reviews DESC LIMIT 10; -- lists apps with price between 0.1 and 1
playstore=# SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics); -- lists app with lowest last_updated
playstore=# SELECT * FROM analytics ORDER BY price DESC LIMIT 1; -- lists app with highest price
playstore=# SELECT SUM(reviews) FROM analytics; -- lists total number of reviews
playstore=# SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) > 300; -- lists number of apps in each category that have more than 300 apps
playstore=# SELECT app_name, reviews, min_installs, (min_installs::float / GREATEST (reviews::float, 1))
playstore-# as ratio FROM analytics WHERE min_installs >= 100000
playstore-# ORDER BY ratio DESC LIMIT 1; -- lists app with highest ratio
playstore=# SELECT category, app_name, MAX(rating) FROM analytics WHERE min_installs >= 50000
playstore-# GROUP BY category, app_name; -- lists category with highest rating
playstore=# SELECT * FROM analytics WHERE app_name ILIKE '%facebook%'; -- lists all apps that contain facebook in app_name
playstore=# SELECT * FROM analytics WHERE array_length(genres, 1) > 1; -- lists apps with more than 1 genre
playstore=# SELECT * FROM analytics WHERE 'Education' = ANY(genres); -- lists apps with 'Education' in genres