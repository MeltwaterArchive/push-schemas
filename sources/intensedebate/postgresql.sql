CREATE TABLE IF NOT EXISTS intensedebate (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  author_username VARCHAR(50) DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  title TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  in_reply_to TEXT DEFAULT NULL
);
CREATE INDEX intensedebate_interaction_id_idx ON intensedebate (interaction_id);
CREATE INDEX intensedebate_created_at_idx ON intensedebate (created_at);

CREATE TABLE IF NOT EXISTS intensedebate_article (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  title TEXT DEFAULT NULL,
  link VARCHAR(50) DEFAULT NULL,
  id TEXT DEFAULT NULL,
  author_username VARCHAR(50) DEFAULT NULL,
  author_link TEXT DEFAULT NULL,
  author_id TEXT DEFAULT NULL
);
CREATE INDEX intensedebate_article_interaction_id_idx ON intensedebate_article (interaction_id);
CREATE INDEX intensedebate_article_created_at_idx ON intensedebate_article (created_at);

