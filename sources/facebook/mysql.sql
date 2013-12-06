CREATE TABLE facebook (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME NOT NULL,
  application VARCHAR(255) DEFAULT NULL,
  author_avatar VARCHAR(255) DEFAULT NULL,
  author_link VARCHAR(255) DEFAULT NULL,
  author_name VARCHAR(64) DEFAULT NULL,
  author_id VARCHAR(64) DEFAULT NULL,
  caption VARCHAR(255) DEFAULT NULL,
  icon VARCHAR(255) DEFAULT NULL,
  post_id VARCHAR(64) DEFAULT NULL,
  post_type VARCHAR(64) DEFAULT NULL,
  likes_count INT DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  message VARCHAR(255) DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL,
  picture VARCHAR(255) DEFAULT NULL,
  source VARCHAR(64) DEFAULT NULL,
  story VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX facebook_created_at_idx ON facebook (created_at);


CREATE TABLE facebook_likes (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX facebook_likes_interaction_id_idx ON facebook_likes (interaction_id);
CREATE INDEX facebook_likes_created_at_idx ON facebook_likes (created_at);


CREATE TABLE facebook_to (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX facebook_to_interaction_id_idx ON facebook_to (interaction_id);
CREATE INDEX facebook_to_created_at_idx ON facebook_to (created_at);