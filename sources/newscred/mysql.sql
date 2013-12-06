
CREATE TABLE newscred (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME NOT NULL,
  article_category VARCHAR(255) DEFAULT NULL,
  article_content TEXT DEFAULT NULL,
  article_domain VARCHAR(255) DEFAULT NULL,
  article_is_fulltext VARCHAR(255) DEFAULT NULL,
  article_link VARCHAR(255) DEFAULT NULL,
  article_title VARCHAR(255) DEFAULT NULL,
  video_caption VARCHAR(255) DEFAULT NULL,
  video_category VARCHAR(255) DEFAULT NULL,
  video_domain VARCHAR(255) DEFAULT NULL,
  video_embed VARCHAR(255) DEFAULT NULL,
  video_link VARCHAR(255) DEFAULT NULL,
  video_thumbnail VARCHAR(255) DEFAULT NULL,
  video_title VARCHAR(255) DEFAULT NULL,
  newscred_id VARCHAR(64) DEFAULT NULL,
  image_caption VARCHAR(255) DEFAULT NULL,
  image_links_large VARCHAR(255) DEFAULT NULL,
  image_links_small VARCHAR(255) DEFAULT NULL,
  image_height VARCHAR(255) DEFAULT NULL,
  image_width VARCHAR(255) DEFAULT NULL,
  source_circulation VARCHAR(255) DEFAULT NULL,
  source_company_type VARCHAR(64) DEFAULT NULL,
  source_country VARCHAR(64) DEFAULT NULL,
  source_domain VARCHAR(255) DEFAULT NULL,
  source_founded VARCHAR(255) DEFAULT NULL,
  source_frequency VARCHAR(255) DEFAULT NULL,
  source_id VARCHAR(64) DEFAULT NULL,
  source_link VARCHAR(255) DEFAULT NULL,
  source_name VARCHAR(64) DEFAULT NULL,
  source_owner VARCHAR(255) DEFAULT NULL,
  source_thumbnail VARCHAR(255) DEFAULT NULL,
  subtype VARCHAR(255) DEFAULT NULL,
  updated DATETIME DEFAULT NULL,
  modified_at DATETIME DEFAULT NULL,
  published_at DATETIME DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX newscred_created_at_idx ON newscred (created_at);


CREATE TABLE newscred_authors (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  author VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX newscred_authors_interaction_id_idx ON newscred_authors (interaction_id);
CREATE INDEX newscred_authors_created_at_idx ON newscred_authors (created_at);