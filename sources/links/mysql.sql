CREATE TABLE IF NOT EXISTS links (
  interaction_id text NOT NULL,
  created_at timestamp DEFAULT NULL,
  url text DEFAULT NULL,
  title text DEFAULT NULL,
  domain text DEFAULT NULL
);
