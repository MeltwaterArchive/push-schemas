-- twitter_bitly_lite

CREATE TABLE interaction (
  interaction_id VARCHAR(64) PRIMARY KEY,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
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
  geo_latitude double precision NULL,
  geo_longitude double precision NULL,
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
  links_title_first VARCHAR(255) NULL
);
CREATE INDEX interaction_interaction_type_idx ON interaction (interaction_type);
CREATE INDEX interaction_created_at_idx ON interaction (created_at);


CREATE TABLE hashtags (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  hashtag VARCHAR(255) NULL
);
CREATE INDEX hashtags_interaction_id_idx ON hashtags (interaction_id);
CREATE INDEX hashtags_interaction_type_idx ON hashtags (interaction_type);
CREATE INDEX hashtags_created_at_idx ON hashtags (created_at);


CREATE TABLE mentions (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  mention VARCHAR(255) NULL
);
CREATE INDEX mentions_interaction_id_idx ON mentions (interaction_id);
CREATE INDEX mentions_interaction_type_idx ON mentions (interaction_type);
CREATE INDEX mentions_created_at_idx ON mentions (created_at);


CREATE TABLE links (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  author_username VARCHAR(64) NULL,
  url VARCHAR(255) NULL,
  title VARCHAR(255) NULL,
  domain VARCHAR(255) NULL
);
CREATE INDEX links_interaction_id_idx ON links (interaction_id);
CREATE INDEX links_interaction_type_idx ON links (interaction_type);
CREATE INDEX links_created_at_idx ON links (created_at);


CREATE TABLE salience_entities (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  name VARCHAR(64) NOT NULL,
  entity_type VARCHAR(64) NOT NULL,
  sentiment INT NULL
);
CREATE INDEX salience_entities_interaction_id_idx ON salience_entities (interaction_id);
CREATE INDEX salience_entities_interaction_type_idx ON salience_entities (interaction_type);
CREATE INDEX salience_entities_created_at_idx ON salience_entities (created_at);


CREATE TABLE salience_topics (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  name VARCHAR(64) NOT NULL,
  score double precision NULL
);
CREATE INDEX salience_topics_interaction_id_idx ON salience_topics (interaction_id);
CREATE INDEX salience_topics_interaction_type_idx ON salience_topics (interaction_type);
CREATE INDEX salience_topics_created_at_idx ON salience_topics (created_at);


CREATE TABLE tag_labels (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  label VARCHAR(255) NOT NULL
);
CREATE INDEX tag_labels_interaction_id_idx ON tag_labels (interaction_id);
CREATE INDEX tag_labels_interaction_type_idx ON tag_labels (interaction_type);
CREATE INDEX tag_labels_created_at_idx ON tag_labels (created_at);


CREATE TABLE tag_scores (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  score float NOT NULL
);
CREATE INDEX tag_scores_interaction_id_idx ON tag_scores (interaction_id);
CREATE INDEX tag_scores_interaction_type_idx ON tag_scores (interaction_type);
CREATE INDEX tag_scores_created_at_idx ON tag_scores (created_at);


CREATE TABLE old_tags (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at timestamp NOT NULL,
  label VARCHAR(255) NOT NULL
);
CREATE INDEX old_tags_interaction_id_idx ON old_tags (interaction_id);
CREATE INDEX old_tags_interaction_type_idx ON old_tags (interaction_type);
CREATE INDEX old_tags_created_at_idx ON old_tags (created_at);


CREATE TABLE raw (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at timestamp NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  subscription_id VARCHAR(64) NOT NULL,
  task_hash VARCHAR(64) NULL,
  task_type VARCHAR(64) NULL,
  data text NULL
);
CREATE INDEX raw_created_at_idx ON raw (interaction_type);
CREATE INDEX raw_interaction_type_idx ON raw (created_at);
