CREATE TABLE IF NOT EXISTS imdb (
  interaction_id VARCHAR(64) PRIMARY KEY NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  imdb_id TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL
);
CREATE INDEX imdb_interaction_id_idx ON imdb (interaction_id);
CREATE INDEX imdb_created_at_idx ON imdb (created_at);
