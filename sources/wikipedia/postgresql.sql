CREATE TABLE wikipedia (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  author_contributions VARCHAR(255) NULL,
  author_link VARCHAR(255) NULL,
  author_talk VARCHAR(255) NULL,
  author_username VARCHAR(64) NULL,
  body VARCHAR(255) NULL,
  wikipedia_id VARCHAR(64) NULL,
  pageid VARCHAR(255) NULL,
  parentid VARCHAR(255) NULL,
  previousid VARCHAR(255) NULL,
  ns INTEGER NULL,
  namespace VARCHAR(255) NULL,
  newlen INTEGER NULL,
  oldlen INTEGER NULL,
  title VARCHAR(255) NULL,
  subtype VARCHAR(255) NULL,
  diff_from VARCHAR(255) NULL,
  diff_to VARCHAR(255) NULL,
  htmldiff VARCHAR(255) NULL,
);
CREATE INDEX wikipedia_created_at_idx ON wikipedia (created_at);

CREATE TABLE wikipedia_categories (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  category VARCHAR(255) NULL
);
CREATE INDEX wikipedia_categories_interaction_id_idx ON wikipedia_categories (interaction_id);
CREATE INDEX wikipedia_categories_created_at_idx ON wikipedia_categories (created_at);


CREATE TABLE wikipedia_externallinks (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  link VARCHAR(255) NULL
);
CREATE INDEX wikipedia_externallinks_interaction_id_idx ON wikipedia_externallinks (interaction_id);
CREATE INDEX wikipedia_externallinks_created_at_idx ON wikipedia_externallinks (created_at);


CREATE TABLE wikipedia_images (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  image VARCHAR(255) NULL
);
CREATE INDEX wikipedia_images_interaction_id_idx ON wikipedia_images (interaction_id);
CREATE INDEX wikipedia_images_created_at_idx ON wikipedia_images (created_at);


CREATE TABLE wikipedia_diff_added (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  added VARCHAR(255) NULL
);
CREATE INDEX wikipedia_diff_added_interaction_id_idx ON wikipedia_diff_added (interaction_id);
CREATE INDEX wikipedia_diff_added_created_at_idx ON wikipedia_diff_added (created_at);


CREATE TABLE wikipedia_diff_removed (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  removed VARCHAR(255) NULL,
  INDEX wikipedia_diff_removed_interaction_id_idx (interaction_id),
  INDEX wikipedia_diff_removed_created_at_idx (created_at)
);
CREATE INDEX wikipedia_diff_removed_interaction_id_idx ON wikipedia_diff_removed (interaction_id);
CREATE INDEX wikipedia_diff_removed_created_at_idx ON wikipedia_diff_removed (created_at);
