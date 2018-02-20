CREATE TABLE IF NOT EXISTS links (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  url TEXT DEFAULT NULL,
  title VARCHAR(255) DEFAULT NULL,
  domain VARCHAR(255) DEFAULT NULL,
  normalized_url TEXT DEFAULT NULL,
  hops TEXT[] DEFAULT NULL
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
  description TEXT DEFAULT NULL,
  lang VARCHAR(50) DEFAULT NULL,
  keywords TEXT[] DEFAULT NULL
);
CREATE INDEX links_meta_interaction_id_idx ON links_meta (interaction_id);
CREATE INDEX links_meta_interaction_type_idx ON links_meta (interaction_type);
CREATE INDEX links_meta_created_at_idx ON links_meta (created_at);


CREATE TABLE IF NOT EXISTS links_meta_opengraph (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  title TEXT DEFAULT NULL,
  url TEXTDEFAULT NULL,
  image TEXT DEFAULT NULL,
  description TEXT DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  site_name VARCHAR(255) DEFAULT NULL
);
CREATE INDEX links_meta_opengraph_interaction_id_idx ON links_meta_opengraph (interaction_id);
CREATE INDEX links_meta_opengraph_interaction_type_idx ON links_meta_opengraph (interaction_type);
CREATE INDEX links_meta_opengraph_created_at_idx ON links_meta_opengraph (created_at);


CREATE TABLE IF NOT EXISTS links_meta_twitter (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  title TEXT DEFAULT NULL,
  url TEXT DEFAULT NULL,
  description TEXT DEFAULT NULL,
  card VARCHAR(50) DEFAULT NULL,
  site VARCHAR(255) DEFAULT NULL,
  creator VARCHAR(50) DEFAULT NULL,
  image TEXT DEFAULT NULL,
  player TEXT DEFAULT NULL,
  player_width INTEGER DEFAULT NULL,
  player_height INTEGER DEFAULT NULL,
  player_stream TEXT DEFAULT NULL,
  player_stream_content_type TEXT DEFAULT NULL
);
CREATE INDEX links_meta_twitter_interaction_id_idx ON links_meta_twitter (interaction_id);
CREATE INDEX links_meta_twitter_interaction_type_idx ON links_meta_twitter (interaction_type);
CREATE INDEX links_meta_twitter_created_at_idx ON links_meta_twitter (created_at);
