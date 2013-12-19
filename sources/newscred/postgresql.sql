CREATE TABLE newscred (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP NOT NULL,
  article_category TEXT DEFAULT NULL,
  article_content TEXT DEFAULT NULL,
  article_domain TEXT DEFAULT NULL,
  article_is_fulltext TEXT DEFAULT NULL,
  article_link TEXT DEFAULT NULL,
  article_title TEXT DEFAULT NULL,
  video_caption TEXT DEFAULT NULL,
  video_category TEXT DEFAULT NULL,
  video_domain TEXT DEFAULT NULL,
  video_embed TEXT DEFAULT NULL,
  video_link TEXT DEFAULT NULL,
  video_thumbnail TEXT DEFAULT NULL,
  video_title TEXT DEFAULT NULL,
  newscred_id VARCHAR(64) DEFAULT NULL,
  image_caption TEXT DEFAULT NULL,
  image_links_large TEXT DEFAULT NULL,
  image_links_small TEXT DEFAULT NULL,
  image_height TEXT DEFAULT NULL,
  image_width TEXT DEFAULT NULL,
  source_circulation TEXT DEFAULT NULL,
  source_company_type VARCHAR(64) DEFAULT NULL,
  source_country VARCHAR(64) DEFAULT NULL,
  source_domain TEXT DEFAULT NULL,
  source_founded TEXT DEFAULT NULL,
  source_frequency TEXT DEFAULT NULL,
  source_id VARCHAR(64) DEFAULT NULL,
  source_link TEXT DEFAULT NULL,
  source_name VARCHAR(64) DEFAULT NULL,
  source_owner TEXT DEFAULT NULL,
  source_thumbnail TEXT DEFAULT NULL,
  subtype TEXT DEFAULT NULL,
  updated DATETIME DEFAULT NULL,
  modified_at DATETIME DEFAULT NULL,
  published_at DATETIME DEFAULT NULL
);
CREATE INDEX newscred_created_at_idx ON newscred (created_at);


CREATE TABLE newscred_authors (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  author TEXT DEFAULT NULL
);
CREATE INDEX newscred_authors_interaction_id_idx ON newscred_authors (interaction_id);
CREATE INDEX newscred_authors_created_at_idx ON newscred_authors (created_at);
