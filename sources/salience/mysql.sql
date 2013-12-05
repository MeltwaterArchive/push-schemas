CREATE TABLE IF NOT EXISTS salience_entities (
  interaction_id text NOT NULL,
  created_at timestamp NOT NULL,
  name text DEFAULT NULL,
  entity_type text DEFAULT NULL,
  sentiment float DEFAULT NULL,
  confidence float DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS salience_topics (
  interaction_id text NOT NULL,
  created_at timestamp DEFAULT NULL,
  name text DEFAULT NULL,
  hits float DEFAULT NULL,
  score float DEFAULT NULL
);
