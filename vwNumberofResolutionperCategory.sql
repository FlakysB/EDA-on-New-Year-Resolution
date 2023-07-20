SELECT tweet_category,
COUNT(*) AS number_of_resolutions
 FROM 
 `project1-393211.new_year_resolution_project.resolutions`
 GROUP BY 1;
