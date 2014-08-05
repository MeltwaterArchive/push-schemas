CREATE TABLE IF NOT EXISTS instagram (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  created_time VARCHAR(50) DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  caption TEXT DEFAULT NULL,
  location_id VARCHAR(64) DEFAULT NULL,
  location_name VARCHAR(64) DEFAULT NULL,
  latitude DOUBLE DEFAULT NULL,
  longitude DOUBLE DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX instagram_interaction_id_idx ON instagram (interaction_id);
CREATE INDEX instagram_created_at_idx ON instagram (created_at);

CREATE TABLE IF NOT EXISTS instagram_tags (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  tag VARCHAR(50) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX instagram_tags_interaction_id_idx ON instagram_tags (interaction_id);
CREATE INDEX instagram_tags_created_at_idx ON instagram_tags (created_at);
CREATE INDEX instagram_tags_tag_idx ON instagram_tags (tag);

CREATE TABLE IF NOT EXISTS instagram_from (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  id VARCHAR(255) DEFAULT NULL,
  username VARCHAR(50) DEFAULT NULL,
  full_name VARCHAR(50) DEFAULT NULL,
  bio VARCHAR(255) DEFAULT NULL,
  website VARCHAR(255) DEFAULT NULL,
  profile_picture VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX instagram_from_interaction_id_idx ON instagram_from (interaction_id);
CREATE INDEX instagram_from_created_at_idx ON instagram_from (created_at);

CREATE TABLE IF NOT EXISTS instagram_images (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  low_resolution_url VARCHAR(255) DEFAULT NULL,
  low_resolution_width INTEGER DEFAULT NULL,
  low_resolution_height INTEGER DEFAULT NULL,
  thumbnail_resolution_url VARCHAR(255) DEFAULT NULL,
  thumbnail_resolution_width INTEGER DEFAULT NULL,
  thumbnail_resolution_height INTEGER DEFAULT NULL,
  standard_resolution_url VARCHAR(255) DEFAULT NULL,
  standard_resolution_width INTEGER DEFAULT NULL,
  standard_resolution_height INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX instagram_images_interaction_id_idx ON instagram_images (interaction_id);
CREATE INDEX instagram_images_created_at_idx ON instagram_images (created_at);

CREATE TABLE IF NOT EXISTS instagram_media (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  username VARCHAR(50) DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  caption TEXT DEFAULT NULL,
  filter VARCHAR(50) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL,
  video VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX instagram_media_interaction_id_idx ON instagram_media (interaction_id);
CREATE INDEX instagram_media_created_at_idx ON instagram_media (created_at);

CREATE TABLE IF NOT EXISTS instagram_media_tags (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  tag VARCHAR(50) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX instagram_media_tags_interaction_id_idx ON instagram_media_tags (interaction_id);
CREATE INDEX instagram_media_tags_created_at_idx ON instagram_media_tags (created_at);
CREATE INDEX instagram_media_tags_tag_idx ON instagram_media_tags (tag);


