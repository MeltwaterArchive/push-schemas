CREATE TABLE IF NOT EXISTS interaction (
  interaction_id text NOT NULL,
  created_at timestamp NOT NULL,
  created_at_unix INTEGER NOT NULL,
  username text DEFAULT NULL,
  is_retweet SMALLINT DEFAULT NULL,
  twitter_lang text DEFAULT NULL,
  first_tag text DEFAULT NULL,
  PRIMARY KEY (interaction_id)
);

CREATE TABLE IF NOT EXISTS raw (
  interaction_id text NOT NULL,
  subscription_id text NOT NULL,
  csdl_hash text NOT NULL,
  csdl_hash_type text NOT NULL,
  created_at timestamp NOT NULL,
  interaction_type text NOT NULL,
  data TEXT NOT NULL,
  PRIMARY KEY (interaction_id, subscription_id)
);

CREATE TABLE IF NOT EXISTS interaction_tags (
  interaction_id text NOT NULL,
  created_at timestamp DEFAULT NULL,
  tag_name text NOT NULL,
  tag_value_float float DEFAULT NULL,
  tag_value_array text DEFAULT NULL,
  PRIMARY KEY (interaction_id, tag_name)
);


CREATE TABLE IF NOT EXISTS hashtags (
  interaction_id text NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  hashtag VARCHAR(255) NULL
);
CREATE INDEX hashtags_interaction_id_idx ON hashtags (interaction_id);
CREATE INDEX hashtags_interaction_type_idx ON hashtags (interaction_type);
CREATE INDEX hashtags_created_at_idx ON hashtags (created_at);

 
CREATE TABLE IF NOT EXISTS mentions (
  interaction_id text NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  mention VARCHAR(255) NULL
);
CREATE INDEX mentions_interaction_id_idx ON mentions (interaction_id);
CREATE INDEX mentions_interaction_type_idx ON mentions (interaction_type);
CREATE INDEX mentions_created_at_idx ON mentions (created_at);
