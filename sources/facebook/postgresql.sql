CREATE TABLE facebook (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP NOT NULL,
  application VARCHAR(255) DEFAULT NULL,
  author_avatar TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_name VARCHAR(64) DEFAULT NULL,
  author_id VARCHAR(64) DEFAULT NULL,
  caption TEXT DEFAULT NULL,
  icon TEXT DEFAULT NULL,
  post_id VARCHAR(64) DEFAULT NULL,
  post_type VARCHAR(64) DEFAULT NULL,
  likes_count INT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  message TEXT DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL,
  picture TEXT DEFAULT NULL,
  source VARCHAR(64) DEFAULT NULL,
  story TEXT DEFAULT NULL
);
CREATE INDEX facebook_created_at_idx ON facebook (created_at);


CREATE TABLE facebook_likes (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL
);
CREATE INDEX facebook_likes_interaction_id_idx ON facebook_likes (interaction_id);
CREATE INDEX facebook_likes_created_at_idx ON facebook_likes (created_at);


CREATE TABLE facebook_to (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL
);
CREATE INDEX facebook_to_interaction_id_idx ON facebook_to (interaction_id);
CREATE INDEX facebook_to_created_at_idx ON facebook_to (created_at);