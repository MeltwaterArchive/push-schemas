CREATE TABLE IF NOT EXISTS blog (
  interaction_id VARCHAR(64) PRIMARY KEY NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  blog_id TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL,
  post_created_at TIMESTAMP DEFAULT NULL,
  post_title TEXT DEFAULT NULL,
  post_uri TEXT DEFAULT NULL,
  subtype TEXT DEFAULT NULL
);
CREATE INDEX blog_interaction_id_idx ON blog (interaction_id);
CREATE INDEX blog_created_at_idx ON blog (created_at);
