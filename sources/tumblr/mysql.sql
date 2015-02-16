CREATE TABLE tumblr (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME NOT NULL,
  dialogue_label VARCHAR(255) NULL,
  dialogue_phrase VARCHAR(255) NULL,
  player VARCHAR(255) NULL,
  blogid VARCHAR(255) NULL,
  dest_blogid VARCHAR(255) NULL,
  dest_postid VARCHAR(255) NULL,
  parent_blogid VARCHAR(255) NULL,
  parent_postid VARCHAR(255) NULL,
  root_blogid VARCHAR(255) NULL,
  root_postid VARCHAR(255) NULL,
  source_blogid VARCHAR(255) NULL,
  duration VARCHAR(255) NULL,
  tumblr_id VARCHAR(64) NULL,
  likes_global INTEGER NULL,
  likes_local INTEGER NULL,
  reblogged_global INTEGER NULL,
  description text NULL,
  original_type VARCHAR(64) NULL,
  original_url VARCHAR(255) NULL,
  note_count INT NULL,
  thumbnail_url VARCHAR(255) NULL,
  thumbnail_height VARCHAR(255) NULL,
  thumbnail_width VARCHAR(255) NULL,
  activity VARCHAR(255) NULL,
  album_art VARCHAR(255) NULL,
  answer VARCHAR(255) NULL,
  artist VARCHAR(255) NULL,
  asking_name VARCHAR(64) NULL,
  asking_url VARCHAR(255) NULL,
  audio_url VARCHAR(255) NULL,
  blog_name VARCHAR(64) NULL,
  body VARCHAR(255) NULL,
  caption VARCHAR(255) NULL,
  format VARCHAR(255) NULL,
  image_permalink VARCHAR(255) NULL,
  post_url VARCHAR(255) NULL,
  question VARCHAR(255) NULL,
  reblog_key VARCHAR(255) NULL,
  short_url VARCHAR(255) NULL,
  slug VARCHAR(255) NULL,
  source_html VARCHAR(255) NULL,
  source_title VARCHAR(255) NULL,
  source_url VARCHAR(255) NULL,
  state VARCHAR(255) NULL,
  txt VARCHAR(255) NULL,
  title VARCHAR(255) NULL,
  track_name VARCHAR(64) NULL,
  post_type VARCHAR(64) NULL,
  url VARCHAR(255) NULL,
  video_url VARCHAR(255) NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX tumblr_interaction_id_idx ON tumblr (created_at);
CREATE INDEX tumblr_created_at_idx ON tumblr (created_at);


CREATE TABLE hashtags (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  hashtag VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX hashtags_interaction_id_idx ON hashtags (interaction_id);
CREATE INDEX hashtags_interaction_type_idx ON hashtags (interaction_type);
CREATE INDEX hashtags_created_at_idx ON hashtags (created_at);
