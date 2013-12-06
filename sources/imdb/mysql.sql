CREATE TABLE IF NOT EXISTS imdb (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  imdb_id TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX imdb_interaction_id_idx ON imdb (interaction_id);
CREATE INDEX imdb_created_at_idx ON imdb (created_at);
