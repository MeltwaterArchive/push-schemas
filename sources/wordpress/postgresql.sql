CREATE TABLE IF NOT EXISTS wordpress (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  title VARCHAR(255) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  summary TEXT DEFAULT NULL,
  permalink VARCHAR(255) DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL,
  published_at TIMESTAMP DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  in_reply_to VARCHAR(255) DEFAULT NULL,
  comment_id VARCHAR(255) DEFAULT NULL  
);
CREATE INDEX wordpress_interaction_id_idx ON wordpress (interaction_id);
CREATE INDEX wordpress_created_at_idx ON wordpress (created_at);

CREATE TABLE IF NOT EXISTS wordpress_author (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  id VARCHAR(255) DEFAULT NULL,
  username VARCHAR(255) DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL
);
CREATE INDEX wordpress_author_interaction_id_idx ON wordpress_author (interaction_id);
CREATE INDEX wordpress_author_created_at_idx ON wordpress_author (created_at);

CREATE TABLE IF NOT EXISTS wordpress_blog (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  summary TEXT DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  domain VARCHAR(255) DEFAULT NULL,
  feed VARCHAR(255) DEFAULT NULL,
  lang VARCHAR(50) DEFAULT NULL,
  id VARCHAR(255) DEFAULT NULL,
  blog_id VARCHAR(255) DEFAULT NULL
);
CREATE INDEX wordpress_blog_interaction_id_idx ON wordpress_blog (interaction_id);
CREATE INDEX wordpress_blog_created_at_idx ON wordpress_blog (created_at);

CREATE TABLE IF NOT EXISTS wordpress_article (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  title VARCHAR(255) DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  blog_id VARCHAR(255) DEFAULT NULL,
  post_id VARCHAR(255) DEFAULT NULL
);
CREATE INDEX wordpress_article_interaction_id_idx ON wordpress_article (interaction_id);
CREATE INDEX wordpress_article_created_at_idx ON wordpress_article (created_at);
