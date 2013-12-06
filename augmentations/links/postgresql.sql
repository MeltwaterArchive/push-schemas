CREATE TABLE IF NOT EXISTS links (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  url TEXT DEFAULT NULL,
  title TEXT DEFAULT NULL,
  hops TEXT[] DEFAULT NULL,
  domain TEXT DEFAULT NULL
);
CREATE INDEX links_interaction_id_idx ON links (interaction_id);
CREATE INDEX links_created_at_idx ON links (created_at);
