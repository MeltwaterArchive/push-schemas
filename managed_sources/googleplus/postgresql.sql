CREATE TABLE googleplus (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  kind VARCHAR(64) DEFAULT NULL,
  etag VARCHAR(64) DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  title TEXT DEFAULT NULL,
  url TEXT DEFAULT NULL,
  verb VARCHAR(64) DEFAULT NULL,
  type VARCHAR(64) DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL,
  published_at TIMESTAMP DEFAULT NULL,
  provider_title TEXT DEFAULT NULL,
  access_kind VARCHAR(64) DEFAULT NULL,
  access_description TEXT DEFAULT NULL
);
CREATE INDEX googleplus_interaction_id_idx ON googleplus (interaction_id);
CREATE INDEX googleplus_created_at_idx ON googleplus (created_at);
  

CREATE TABLE googleplus_actor (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  display_name VARCHAR(64) DEFAULT NULL,
  url TEXT DEFAULT NULL,
  image_url TEXT DEFAULT NULL
);
CREATE INDEX googleplus_actor_interaction_id_idx ON googleplus_actor (interaction_id);
CREATE INDEX googleplus_actor_created_at_idx ON googleplus_actor (created_at);
  

CREATE TABLE googleplus_object (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  type VARCHAR(64) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  url TEXT DEFAULT NULL,
  replies_total_items INTEGER DEFAULT NULL,
  replies_self_link TEXT DEFAULT NULL,
  plusoners_total_items INTEGER DEFAULT NULL,
  plusoners_self_link TEXT DEFAULT NULL,
  resharers_total_items INTEGER DEFAULT NULL,
  resharers_self_link TEXT DEFAULT NULL
);
CREATE INDEX googleplus_object_interaction_id_idx ON googleplus_object (interaction_id);
CREATE INDEX googleplus_object_created_at_idx ON googleplus_object (created_at)

