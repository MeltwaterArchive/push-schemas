CREATE TABLE IF NOT EXISTS twitter (
  interaction_id VARCHAR(64) PRIMARY KEY,
  interaction_type VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  author_username VARCHAR(64) DEFAULT NULL,
  author_language VARCHAR(64) DEFAULT NULL,
  source VARCHAR(64) DEFAULT NULL,
  interaction_link TEXT  DEFAULT NULL,
  followers_count INT DEFAULT NULL,
  user_description TEXT DEFAULT NULL,
  user_timezone VARCHAR(64) DEFAULT NULL,
  user_location VARCHAR(64) DEFAULT NULL,
  twitter_place_country VARCHAR(64) DEFAULT NULL,
  verified INT DEFAULT NULL,
  twitter_id VARCHAR(64) DEFAULT NULL,
  geo_latitude DOUBLE DEFAULT NULL,
  geo_longitude DOUBLE DEFAULT NULL,
  content TEXT DEFAULT NULL,
  twitter_lang VARCHAR(64) DEFAULT NULL,
  is_retweet INTEGER DEFAULT NULL,
  twitter_retweeted_id VARCHAR(64) DEFAULT NULL,
  retweeted_author_screen_name VARCHAR(64) DEFAULT NULL,
  retweet_count INT DEFAULT NULL
);
CREATE INDEX twitter_interaction_type_idx ON twitter (interaction_type);
CREATE INDEX twitter_created_at_idx ON twitter (created_at);


CREATE TABLE IF NOT EXISTS links (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  url TEXT  DEFAULT NULL,
  title TEXT  DEFAULT NULL,
  domain TEXT  DEFAULT NULL,
  normalized_url TEXT  DEFAULT NULL
);
CREATE INDEX links_interaction_id_idx ON links (interaction_id);
CREATE INDEX links_interaction_type_idx ON links (interaction_type);
CREATE INDEX links_created_at_idx ON links (created_at);


CREATE TABLE IF NOT EXISTS links_meta (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  charset VARCHAR(50) DEFAULT NULL,
  content_type VARCHAR(50) DEFAULT NULL,
  description TEXT  DEFAULT NULL,
  lang VARCHAR(50) DEFAULT NULL
);
CREATE INDEX links_meta_interaction_id_idx ON links_meta (interaction_id);
CREATE INDEX links_meta_interaction_type_idx ON links_meta (interaction_type);
CREATE INDEX links_meta_created_at_idx ON links_meta (created_at);


CREATE TABLE IF NOT EXISTS tag (
	interaction_id VARCHAR(64) NOT NULL,
	interaction_type VARCHAR(64) NOT NULL,
	created_at TIMESTAMP NOT NULL,
	namespace TEXT  NOT NULL,
	score FLOAT NOT NULL,
	label TEXT NOT NULL
);
CREATE INDEX tag_interaction_id_idx ON tag (interaction_id);
CREATE INDEX tag_interaction_type_idx ON tag (interaction_type);
CREATE INDEX tag_created_at_idx ON tag (created_at);
