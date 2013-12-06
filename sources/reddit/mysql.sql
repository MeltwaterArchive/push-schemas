CREATE TABLE IF NOT EXISTS reddit (
  interaction_id VARCHAR(64) PRIMARY KEY NOT NULL,
  created_at DATETIME DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  reddit_id TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX reddit_interaction_id_idx ON reddit (interaction_id);
CREATE INDEX reddit_created_at_idx ON reddit (created_at);
