CREATE TABLE twitter_links (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at datetime NOT NULL,
  twitter_display_url VARCHAR(255) NULL,
  normalized_url VARCHAR(255) NULL
);
CREATE INDEX interaction_created_at_idx ON twitter_links (created_at);