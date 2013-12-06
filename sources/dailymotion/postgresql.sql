CREATE TABLE IF NOT EXISTS dailymotion (
  interaction_id VARCHAR(64) PRIMARY KEY NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  author_name TEXT DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_url TEXT DEFAULT NULL,
  category TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  dailymotion_id TEXT DEFAULT NULL,
  duration TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL,
  videolink TEXT DEFAULT NULL,
  subtype TEXT DEFAULT NULL
);
CREATE INDEX dailymotion_interaction_id_idx ON dailymotion (interaction_id);
CREATE INDEX dailymotion_created_at_idx ON dailymotion (created_at);

CREATE TABLE IF NOT EXISTS dailymotion_tags (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  tag TEXT DEFAULT NULL
);
CREATE INDEX dailymotion_tags_interaction_id_idx ON dailymotion_tags (interaction_id);
CREATE INDEX dailymotion_tags_created_at_idx ON dailymotion_tags (created_at);
