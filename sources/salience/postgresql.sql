CREATE TABLE IF NOT EXISTS salience_entities (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  name TEXT DEFAULT NULL,
  entity_type TEXT DEFAULT NULL,
  sentiment FLOAT DEFAULT NULL,
  confidence FLOAT DEFAULT NULL
);
CREATE INDEX salience_entities_interaction_id_idx ON salience_entities (interaction_id);
CREATE INDEX salience_entities_created_at_idx ON salience_entities (created_at);

CREATE TABLE IF NOT EXISTS salience_topics (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  name TEXT DEFAULT NULL,
  hits FLOAT DEFAULT NULL,
  score FLOAT DEFAULT NULL
);
CREATE INDEX salience_topics_interaction_id_idx ON salience_topics (interaction_id);
CREATE INDEX salience_topics_created_at_idx ON salience_topics (created_at);
