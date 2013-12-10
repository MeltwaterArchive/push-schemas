CREATE TABLE IF NOT EXISTS subscription (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  interaction_created_at TIMESTAMP DEFAULT NULL,
  subscription_id VARCHAR(64) NOT NULL,
  subscription_hash VARCHAR(64) NOT NULL,
  subscription_hash_type VARCHAR(64) NOT NULL,
  subscription_inserted_at timestamp DEFAULT current_timestamp,
  PRIMARY KEY(interaction_id, subscription_id)
);
CREATE INDEX subscription_interaction_created_at_idx ON subscription (interaction_id);
CREATE INDEX subscription_subscription_id_idx ON subscription (subscription_id);
CREATE INDEX subscription_subscription_hash_idx ON subscription (subscription_hash);
CREATE INDEX subscription_subscription_hash_type_idx ON subscription (subscription_hash_type);