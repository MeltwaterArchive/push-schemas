CREATE TABLE IF NOT EXISTS facebook_page (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  id VARCHAR(255) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  link TEXT DEFAULT NULL,
  icon VARCHAR(255) DEFAULT NULL,
  message TEXT DEFAULT NULL,
  description TEXT DEFAULT NULL,
  picture TEXT DEFAULT NULL,
  like_count INTEGER DEFAULT NULL
);
CREATE INDEX facebook_page_interaction_id_idx ON facebook_page (interaction_id);
CREATE INDEX facebook_page_created_at_idx ON facebook_page (created_at);


CREATE TABLE IF NOT EXISTS facebook_page_from (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL
);
CREATE INDEX facebook_page_from_interaction_id_idx ON facebook_page_from (interaction_id);
CREATE INDEX facebook_page_from_created_at_idx ON facebook_page_from (created_at);


CREATE TABLE IF NOT EXISTS facebook_page_page (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  username VARCHAR(50) DEFAULT NULL,
  category VARCHAR(50) DEFAULT NULL,
  link TEXT DEFAULT NULL
);
CREATE INDEX facebook_page_page_interaction_id_idx ON facebook_page_page (interaction_id);
CREATE INDEX facebook_page_page_created_at_idx ON facebook_page_page (created_at);


CREATE TABLE IF NOT EXISTS facebook_page_post (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  link TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  post_created_at TIMESTAMP DEFAULT NULL
);
CREATE INDEX facebook_page_post_interaction_id_idx ON facebook_page_post (interaction_id);
CREATE INDEX facebook_page_post_created_at_idx ON facebook_page_post (created_at);


CREATE TABLE IF NOT EXISTS facebook_page_to (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  category VARCHAR(255) DEFAULT NULL
);
CREATE INDEX facebook_page_to_interaction_id_idx ON facebook_page_to (interaction_id);
CREATE INDEX facebook_page_to_created_at_idx ON facebook_page_to (created_at);


CREATE TABLE IF NOT EXISTS facebook_page_properties (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  text TEXT DEFAULT NULL
);
CREATE INDEX facebook_page_properties_interaction_id_idx ON facebook_page_properties (interaction_id);
CREATE INDEX facebook_page_properties_created_at_idx ON facebook_page_properties (created_at);


CREATE TABLE IF NOT EXISTS facebook_page_message_tags (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  text_offset INTEGER DEFAULT NULL,
  length INTEGER DEFAULT NULL
);
CREATE INDEX facebook_page_message_tags_interaction_id_idx ON facebook_page_message_tags (interaction_id);
CREATE INDEX facebook_page_message_tags_created_at_idx ON facebook_page_message_tags (created_at);
