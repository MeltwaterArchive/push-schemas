CREATE TABLE IF NOT EXISTS interaction (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  created_at_unix INTEGER NOT NULL,
  username VARCHAR(255) DEFAULT NULL,
  is_retweet SMALLINT DEFAULT NULL,
  twitter_lang VARCHAR(50) DEFAULT NULL,
  first_tag VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (interaction_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX interaction_interaction_type_idx ON interaction (interaction_type);
CREATE INDEX interaction_created_at_idx ON interaction (created_at);

CREATE TABLE IF NOT EXISTS raw (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  subscription_id VARCHAR(64) NOT NULL,
  csdl_hash VARCHAR(64) NOT NULL,
  csdl_hash_type VARCHAR(50) NOT NULL,
  created_at timestamp NOT NULL,
  data TEXT NOT NULL,
  PRIMARY KEY (interaction_id, subscription_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX raw_interaction_id_idx ON raw (interaction_id);
CREATE INDEX raw_interaction_type_idx ON raw (interaction_type);
CREATE INDEX raw_created_at_idx ON raw (created_at);

CREATE TABLE IF NOT EXISTS hashtags (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  hashtag VARCHAR(255) NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX hashtags_interaction_id_idx ON hashtags (interaction_id);
CREATE INDEX hashtags_interaction_type_idx ON hashtags (interaction_type);
CREATE INDEX hashtags_created_at_idx ON hashtags (created_at);

CREATE TABLE IF NOT EXISTS mentions (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  mention VARCHAR(255) NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX mentions_interaction_id_idx ON mentions (interaction_id);
CREATE INDEX mentions_interaction_type_idx ON mentions (interaction_type);
CREATE INDEX mentions_created_at_idx ON mentions (created_at);
