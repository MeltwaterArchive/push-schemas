CREATE TABLE IF NOT EXISTS salience_content_entities (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  entity_type VARCHAR(255) DEFAULT NULL,
  sentiment FLOAT DEFAULT NULL,
  confidence FLOAT DEFAULT NULL
);
CREATE INDEX salience_content_entities_interaction_id_idx ON salience_content_entities (interaction_id);
CREATE INDEX salience_content_entities_interaction_type_idx ON salience_content_entities (interaction_type);
CREATE INDEX salience_content_entities_created_at_idx ON salience_content_entities (created_at);

CREATE TABLE IF NOT EXISTS salience_content_topics (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  hits FLOAT DEFAULT NULL,
  score FLOAT DEFAULT NULL
);
CREATE INDEX salience_content_topics_interaction_id_idx ON salience_content_topics (interaction_id);
CREATE INDEX salience_content_topics_interaction_type_idx ON salience_content_topics (interaction_type);
CREATE INDEX salience_content_topics_created_at_idx ON salience_content_topics (created_at);

CREATE TABLE IF NOT EXISTS salience_title_entities (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  entity_type VARCHAR(255) DEFAULT NULL,
  sentiment FLOAT DEFAULT NULL,
  confidence FLOAT DEFAULT NULL
);
CREATE INDEX salience_title_entities_interaction_id_idx ON salience_title_entities (interaction_id);
CREATE INDEX salience_title_entities_interaction_type_idx ON salience_title_entities (interaction_type);
CREATE INDEX salience_title_entities_created_at_idx ON salience_title_entities (created_at);

CREATE TABLE IF NOT EXISTS salience_title_topics (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  hits FLOAT DEFAULT NULL,
  score FLOAT DEFAULT NULL
);
CREATE INDEX salience_title_topics_interaction_id_idx ON salience_title_topics (interaction_id);
CREATE INDEX salience_title_topics_interaction_type_idx ON salience_title_topics (interaction_type);
CREATE INDEX salience_title_topics_created_at_idx ON salience_title_topics (created_at);
