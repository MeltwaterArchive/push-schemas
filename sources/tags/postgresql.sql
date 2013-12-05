CREATE TABLE tag_labels (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  label VARCHAR(255) NOT NULL
);
CREATE INDEX tag_labels_interaction_id_idx ON HASHTAGS (INTERACTION_ID);
CREATE INDEX tag_labels_interaction_type_idx ON HASHTAGS (INTERACTION_TYPE);
CREATE INDEX tag_labels_created_at_idx ON HASHTAGS (CREATED_AT);

CREATE TABLE tag_scores (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  score FLOAT NOT NULL
);
CREATE INDEX tag_scores_interaction_id_idx ON tag_scores (interaction_id);
CREATE INDEX tag_scores_interaction_type_idx ON tag_scores (interaction_type);
CREATE INDEX tag_scores_created_at_idx ON tag_scores (created_at);
