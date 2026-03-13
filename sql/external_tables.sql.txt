------------------------------
-- MOVIES

CREATE OR REPLACE EXTERNAL TABLE netflix-pipeline-rochaapdr.netflix_raw.raw_movies
(
  movieId STRING,
  title STRING,
  genres STRING
)

OPTIONS (
  format = 'CSV',
  uris = ['gs://rochaapdr-netflix-data/bronze/movies.csv'],
  skip_leading_rows = 1,
  allow_quoted_newlines = TRUE,
  allow_jagged_rows = TRUE
);



------------------------------
-- USER RATING HISTORY

CREATE OR REPLACE EXTERNAL TABLE netflix-pipeline-rochaapdr.netflix_raw.raw_user_rating_history
(
  userId STRING,
  movieId STRING,
  rating STRING,
  tstamp STRING
)

OPTIONS (
  format = 'CSV',
  uris = ['gs://rochaapdr-netflix-data/bronze/user_rating_history.csv'],
  skip_leading_rows = 1,
  allow_quoted_newlines = TRUE,
  allow_jagged_rows = TRUE
);



------------------------------
-- MOVIE ELICITATION SET

CREATE OR REPLACE EXTERNAL TABLE netflix-pipeline-rochaapdr.netflix_raw.raw_movie_elicitation_set
(
  movieId STRING,
  month_idx STRING,
  source STRING,
  tstamp STRING
)

OPTIONS (
  format = 'CSV',
  uris = ['gs://rochaapdr-netflix-data/bronze/movie_elicitation_set.csv'],
  skip_leading_rows = 1,
  allow_quoted_newlines = TRUE,
  allow_jagged_rows = TRUE
);



-- RAW BELIEF DATA

CREATE OR REPLACE EXTERNAL TABLE netflix-pipeline-rochaapdr.netflix_raw.raw_belief_data
(
  userId STRING,
  movieId STRING,
  isSeen STRING,
  whatchDate STRING,
  userElicitRating STRING,
  userPredictRating STRING,
  userCertainty STRING,
  tstamp STRING,
  source STRING,
  systemPredictRating STRING,
  systemCertainty STRING,
  systemConfidence STRING

)

OPTIONS (
  format = 'CSV',
  uris = ['gs://rochaapdr-netflix-data/bronze/belief_data.csv'],
  skip_leading_rows = 1,
  allow_quoted_newlines = TRUE,
  allow_jagged_rows = TRUE
);



------------------------------
-- RATINGS FOR ADDITIONAL USERS

CREATE OR REPLACE EXTERNAL TABLE netflix-pipeline-rochaapdr.netflix_raw.raw_ratings_for_additional_users
(
  userId STRING,
  movieId STRING,
  rating STRING,
  tstamp STRING
)

OPTIONS (
  format = 'CSV',
  uris = ['gs://rochaapdr-netflix-data/bronze/ratings_for_additional_users.csv'],
  skip_leading_rows = 1,
  allow_quoted_newlines = TRUE,
  allow_jagged_rows = TRUE
);



------------------------------
-- USER RECOMMENDATION HISTORY

CREATE OR REPLACE EXTERNAL TABLE netflix-pipeline-rochaapdr.netflix_raw.raw_user_recommendation_history
(
  userId STRING,
  movieId STRING,
  predictRating STRING,
  tstamp STRING
)

OPTIONS (
  format = 'CSV',
  uris = ['gs://rochaapdr-netflix-data/bronze/user_recommendation_history.csv'],
  skip_leading_rows = 1,
  allow_quoted_newlines = TRUE,
  allow_jagged_rows = TRUE
);

