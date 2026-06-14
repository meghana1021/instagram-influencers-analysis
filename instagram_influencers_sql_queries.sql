
-- Top Instagram Influencers Analysis Project - 10 SQL Queries
-- Table: instagram_influencers (rank, channel_info, influence_score,
--   posts, followers, avg_likes, 60_day_eng_rate, new_post_avg_like,
--   total_likes, country, followers_numeric, avg_likes_numeric,
--   new_post_avg_like_numeric, total_likes_numeric)

CREATE DATABASE instagram_influencers_db;

CREATE TABLE top_instagram_influencers_data (
    `rank` INT,
    channel_info VARCHAR(255),
    influence_score INT,
    posts VARCHAR(20),
    followers VARCHAR(20),
    avg_likes VARCHAR(20),
    `60_day_eng_rate` VARCHAR(20),
    new_post_avg_like VARCHAR(20),
    total_likes VARCHAR(20),
    country VARCHAR(100),
    followers_numeric BIGINT,
    avg_likes_numeric BIGINT,
    new_post_avg_like_numeric BIGINT,
    total_likes_numeric BIGINT
);
SELECT count(*) FROM top_instagram_influencers_data;
DROP TABLE IF exists top_instagram_influencers_data;

-- 1. Top 10 influencers by follower count
SELECT channel_info, country, followers_numeric
FROM top_instagram_influencers_data
ORDER BY followers_numeric DESC
LIMIT 10;

-- 2. Top 10 influencers by influence score
SELECT channel_info, country, influence_score
FROM top_instagram_influencers_data
ORDER BY influence_score DESC
LIMIT 10;

-- 3. Number of influencers per country
SELECT country, COUNT(*) AS num_influencers
FROM top_instagram_influencers_data
GROUP BY country
ORDER BY num_influencers DESC;

-- 4. Average followers and influence score by country (top 10 countries)
SELECT country,
       COUNT(*) AS num_influencers,
       ROUND(AVG(followers_numeric),0) AS avg_followers,
       ROUND(AVG(influence_score),2) AS avg_influence_score
FROM top_instagram_influencers_data
GROUP BY country
ORDER BY num_influencers DESC
LIMIT 10;

-- 5. Top 10 influencers by average likes
SELECT channel_info, country, avg_likes_numeric
FROM top_instagram_influencers_data
ORDER BY avg_likes_numeric DESC
LIMIT 10;

-- 6. Top 10 influencers by total likes
SELECT channel_info, country, total_likes_numeric
FROM top_instagram_influencers_data
ORDER BY total_likes_numeric DESC
LIMIT 10;

-- 7. Engagement rate vs follower count (top 10 highest engagement)
SELECT channel_info, country, followers_numeric, `60_day_eng_rate`
FROM top_instagram_influencers_data
ORDER BY CAST(REPLACE(`60_day_eng_rate`, '%', '') AS DECIMAL(5,2)) DESC
LIMIT 10;

-- 8. Average likes per post ratio (avg_likes / followers) - top 10
SELECT channel_info, country,
       ROUND(avg_likes_numeric / followers_numeric, 4) AS likes_to_followers_ratio
FROM top_instagram_influencers_data
WHERE followers_numeric > 0
ORDER BY likes_to_followers_ratio DESC
LIMIT 10;

-- 9. Influencers with highest post counts
SELECT channel_info, country, posts, followers_numeric
FROM top_instagram_influencers_data
ORDER BY CAST(REPLACE(posts, 'k', '') AS DECIMAL(10,2)) DESC
LIMIT 10;

-- 10. Country-wise total influence (sum of followers) ranking
SELECT country, SUM(followers_numeric) AS total_followers, COUNT(*) AS num_influencers
FROM top_instagram_influencers_data
GROUP BY country
ORDER BY total_followers DESC
LIMIT 10;
