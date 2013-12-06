CREATE TABLE IF NOT EXISTS salience_content_entities (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  name TEXT DEFAULT NULL,
  entity_type TEXT DEFAULT NULL,
  label FLOAT DEFAULT NULL,
  about FLOAT DEFAULT NULL,
  sentiment FLOAT DEFAULT NULL,
  confidence FLOAT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX salience_content_entities_interaction_id_idx ON salience_content_entities (interaction_id);
CREATE INDEX salience_content_entities_created_at_idx ON salience_content_entities (created_at);

CREATE TABLE IF NOT EXISTS salience_content_topics (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  name TEXT DEFAULT NULL,
  hits FLOAT DEFAULT NULL,
  score FLOAT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX salience_content_topics_interaction_id_idx ON salience_content_topics (interaction_id);
CREATE INDEX salience_content_topics_created_at_idx ON salience_content_topics (created_at);

CREATE TABLE IF NOT EXISTS salience_title_entities (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  name TEXT DEFAULT NULL,
  entity_type TEXT DEFAULT NULL,
  label FLOAT DEFAULT NULL,
  about FLOAT DEFAULT NULL,
  sentiment FLOAT DEFAULT NULL,
  confidence FLOAT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX salience_title_entities_interaction_id_idx ON salience_title_entities (interaction_id);
CREATE INDEX salience_title_entities_created_at_idx ON salience_title_entities (created_at);

CREATE TABLE IF NOT EXISTS salience_title_topics (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  name TEXT DEFAULT NULL,
  hits FLOAT DEFAULT NULL,
  score FLOAT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX salience_title_topics_interaction_id_idx ON salience_title_topics (interaction_id);
CREATE INDEX salience_title_topics_created_at_idx ON salience_title_topics (created_at);
