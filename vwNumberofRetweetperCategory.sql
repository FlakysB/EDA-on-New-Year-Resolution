SELECT tweet_category,
SUM (retweet_count) AS total_retweet_count
FROM `new_year_resolution_project.resolutions`
GROUP BY 1;
