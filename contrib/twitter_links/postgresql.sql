CREATE TABLE twitter_links (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at timestamp NOT NULL,
  twitter_display_url TEXT NULL,
  normalized_url TEXT NULL
);
CREATE INDEX interaction_created_at_idx ON twitter_links (created_at);