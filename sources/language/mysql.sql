CREATE TABLE IF NOT EXISTS language (
  interaction_id VARCHAR(64) PRIMARY KEY,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  language VARCHAR(5) DEFAULT NULL,
  confidence DECIMAL DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX language_interaction_id_idx ON language (interaction_id);
CREATE INDEX language_interaction_type_idx ON language (interaction_type);
CREATE INDEX language_created_at_idx ON language (created_at);
