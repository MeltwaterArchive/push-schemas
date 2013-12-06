CREATE TABLE IF NOT EXISTS youtube (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  category TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  youtube_id TEXT DEFAULT NULL,
  duration TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL,
  videolink TEXT DEFAULT NULL,
  subtype TEXT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX youtube_interaction_id_idx ON youtube (interaction_id);
CREATE INDEX youtube_created_at_idx ON youtube (created_at);


CREATE TABLE IF NOT EXISTS youtube_tags (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  tag TEXT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX youtube_tags_interaction_id_idx ON youtube_tags (interaction_id);
CREATE INDEX youtube_tags_created_at_idx ON youtube_tags (created_at);
