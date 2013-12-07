CREATE TABLE tag_labels (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  label VARCHAR(255) NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX tag_labels_interaction_id_idx ON hashtags (interaction_id);
CREATE INDEX tag_labels_interaction_type_idx ON hashtags (interaction_type);
CREATE INDEX tag_labels_created_at_idx ON hashtags (created_at);

CREATE TABLE tag_scores (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  score FLOAT NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX tag_scores_interaction_id_idx ON tag_scores (interaction_id);
CREATE INDEX tag_scores_interaction_type_idx ON tag_scores (interaction_type);
CREATE INDEX tag_scores_created_at_idx ON tag_scores (created_at);
