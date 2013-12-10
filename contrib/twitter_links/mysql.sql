CREATE TABLE twitter (
  interaction_id VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  twitter_display_url VARCHAR(255) NULL,
  normalized_url VARCHAR(255) NULL,
  PRIMARY KEY (interaction_id),
  INDEX interaction_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;