SELECT
tweet_state,
COUNT(tweet_text) AS number_of_tweet
FROM
`new_year_resolution_project.resolutions`
GROUP BY 1
