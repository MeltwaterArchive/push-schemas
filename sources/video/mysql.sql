CREATE TABLE IF NOT EXISTS amazon (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  category TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  duration TEXT DEFAULT NULL,
  amazon_id TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL,
  videolink TEXT DEFAULT NULL,
  subtype TEXT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX amazon_interaction_id_idx ON amazon (interaction_id);
CREATE INDEX amazon_created_at_idx ON amazon (created_at);

CREATE TABLE IF NOT EXISTS video_tags (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  tag TEXT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX video_tags_interaction_id_idx ON video_tags (interaction_id);
CREATE INDEX video_tags_created_at_idx ON video_tags (created_at);
