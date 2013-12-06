CREATE TABLE IF NOT EXISTS topix (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_location TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  topix_id TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL,
  subtype TEXT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX topix_interaction_id_idx ON topix (interaction_id);
CREATE INDEX topix_created_at_idx ON topix (created_at);
