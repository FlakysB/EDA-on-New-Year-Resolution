WITH
  al AS (
  SELECT
    DATE(tweet_created) AS tweetDate,
    TIME(tweet_created) AS tweetTime,
    -- TIME_TRUNC(TIME(tweet_created), HOUR) AS tweetHour,
    -- EXTRACT(HOUR FROM tweet_created),
    CASE
      WHEN EXTRACT(MINUTE FROM tweet_created) > 30 THEN EXTRACT(HOUR FROM tweet_created) + 1
      ELSE EXTRACT(HOUR FROM tweet_created)
    END AS hour,
    tweet_text
  FROM
    `new_year_resolution_project.resolutions`
  )

SELECT
  hour,
  COUNT(tweet_text) AS numberOfTweet
FROM
  al
GROUP BY 1;
