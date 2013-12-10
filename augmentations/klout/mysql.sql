CREATE TABLE IF NOT EXISTS klout (
  interaction_id VARCHAR(64) PRIMARY KEY,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  amplification INTEGER DEFAULT NULL,
  class TEXT DEFAULT NULL,
  network DECIMAL DEFAULT NULL,
  score DECIMAL DEFAULT NULL,
  slope DECIMAL DEFAULT NULL,
  true_reach INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX klout_interaction_id_idx ON klout (interaction_id);
CREATE INDEX klout_interaction_type_idx ON klout (interaction_type);
CREATE INDEX klout_created_at_idx ON klout (created_at);

CREATE TABLE IF NOT EXISTS klout_topics (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  topic VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX klout_topics_interaction_id_idx ON klout_topics (interaction_id);
CREATE INDEX klout_topics_interaction_type_idx ON klout_topics (interaction_type);
CREATE INDEX klout_topics_created_at_idx ON klout_topics (created_at);
CREATE INDEX klout_topics_topic_idx ON klout_topics (topic);
