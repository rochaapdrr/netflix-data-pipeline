--------------------------------------------------------
-- 1) DIM TABLE: dim_movies
--------------------------------------------------------

CREATE OR REPLACE TABLE netflix-pipeline-rochaapdr.netflix_analytical.dim_movies AS
SELECT
  SAFE_CAST(movieId AS INT64) AS movie_Id,
  CAST(title AS STRING) AS title,
  CAST(genres as STRING) AS genres,
  SAFE_CAST(REGEXP_EXTRACT(CAST(title AS STRING), r'\((\d{4})\)\a*$') AS
  INT64) AS release_year
  FROM netflix-pipeline-rochaapdr.netflix_raw.raw_movies;
