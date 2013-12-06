CREATE TABLE IF NOT EXISTS amazon (
  interaction_id VARCHAR(64) PRIMARY KEY NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_age INTEGER DEFAULT NULL,
  author_gender TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_location TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  amazon_id TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL,
  subtype TEXT DEFAULT NULL
);
CREATE INDEX amazon_interaction_id_idx ON amazon (interaction_id);
CREATE INDEX amazon_created_at_idx ON amazon (created_at);
