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

CREATE TABLE IF NOT EXISTS hashtags (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  hashtag VARCHAR(255) NULL,
  INDEX hashtags_interaction_id_idx (interaction_id),
  INDEX hashtags_interaction_type_idx (interaction_type),
  INDEX hashtags_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
 
 
CREATE TABLE IF NOT EXISTS mentions (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  mention VARCHAR(255) NULL,
  INDEX mentions_interaction_id_idx (interaction_id),
  INDEX mentions_interaction_type_idx (interaction_type),
  INDEX mentions_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
