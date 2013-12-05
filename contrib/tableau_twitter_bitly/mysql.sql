-- twitter_bitly_lite

CREATE TABLE interaction (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  author_username VARCHAR(64) NULL,
  author_language VARCHAR(64) NULL,
  source VARCHAR(64) NULL,
  interaction_link VARCHAR(255) NULL,
  followers_count INT NULL,
  klout_score INT NULL,
  gender VARCHAR(64) NULL,
  user_description text NULL,
  user_timezone VARCHAR(64) NULL,
  user_location VARCHAR(64) NULL,
  twitter_place_country VARCHAR(64) NULL,
  demographic_country VARCHAR(64) NULL,
  demographic_us_state VARCHAR(64) NULL,
  demographic_city VARCHAR(64) NULL,
  verified INT NULL,
  twitter_id VARCHAR(64) NULL,
  geo_latitude DOUBLE NULL,
  geo_longitude DOUBLE NULL,
  content text NULL,
  content_sentiment INT NULL,
  language VARCHAR(64) NULL,
  language_confidence INT NULL,
  twitter_lang VARCHAR(64) NULL,
  is_retweet integer NULL,
  twitter_retweeted_id VARCHAR(64) NULL,
  retweeted_author_screen_name VARCHAR(64) NULL,
  retweet_count INT NULL,
  bitly_country VARCHAR(64) NULL,
  bitly_geo_region VARCHAR(255) NULL,
  bitly_geo_city VARCHAR(255) NULL,
  bitly_cname VARCHAR(64) NULL,
  bitly_referring_url VARCHAR(255) NULL,
  bitly_referring_domain VARCHAR(255) NULL,
  bitly_url_hash VARCHAR(64) NULL,
  bitly_share_hash VARCHAR(64) NULL,
  bitly_url VARCHAR(255) NULL,
  links_url_first VARCHAR(255) NULL,
  links_title_first VARCHAR(255) NULL,
  PRIMARY KEY (interaction_id),
  INDEX interaction_interaction_type_idx (interaction_type),
  INDEX interaction_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE hashtags (
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


CREATE TABLE mentions (
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


CREATE TABLE links (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  author_username VARCHAR(64) NULL,
  url VARCHAR(255) NULL,
  title VARCHAR(255) NULL,
  domain VARCHAR(255) NULL,
  INDEX links_interaction_id_idx (interaction_id),
  INDEX links_interaction_type_idx (interaction_type),
  INDEX links_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE salience_entities (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  name VARCHAR(64) NOT NULL,
  entity_type VARCHAR(64) NOT NULL,
  sentiment INT NULL,
  INDEX salience_entities_interaction_id_idx (interaction_id),
  INDEX salience_entities_interaction_type_idx (interaction_type),
  INDEX salience_entities_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE salience_topics (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  name VARCHAR(64) NOT NULL,
  score DOUBLE NULL,
  INDEX salience_topics_interaction_id_idx (interaction_id),
  INDEX salience_topics_interaction_type_idx (interaction_type),
  INDEX salience_topics_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE tag_labels (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  label VARCHAR(255) NOT NULL,
  INDEX tag_labels_interaction_id_idx (interaction_id),
  INDEX tag_labels_interaction_type_idx (interaction_type),
  INDEX tag_labels_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE tag_scores (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  score float NOT NULL,
  INDEX tag_scores_interaction_id_idx (interaction_id),
  INDEX tag_scores_interaction_type_idx (interaction_type),
  INDEX tag_scores_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE old_tags (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  label VARCHAR(255) NOT NULL,
  INDEX old_tags_interaction_id_idx (interaction_id),
  INDEX old_tags_interaction_type_idx (interaction_type),
  INDEX old_tags_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE raw (
  interaction_id VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  subscription_id VARCHAR(64) NOT NULL,
  task_hash VARCHAR(64) NULL,
  task_type VARCHAR(64) NULL,
  data text NULL,
  PRIMARY KEY raw_interaction_id_idx (interaction_id),
  INDEX raw_created_at_idx (created_at),
  INDEX raw_interaction_type_idx (interaction_type)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
