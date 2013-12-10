CREATE TABLE subscription (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  interaction_created_at datetime NOT NULL,
  subscription_id VARCHAR(64) NOT NULL,
  subscription_hash VARCHAR(64) NOT NULL,
  subscription_hash_type VARCHAR(64) NOT NULL,
  subscription_inserted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (interaction_id, subscription_id),
  INDEX subscription_interaction_created_at_idx (interaction_created_at),
  INDEX subscription_subscription_id_idx (subscription_id),
  INDEX subscription_subscription_hash_idx (subscription_hash),
  INDEX subscription_subscription_hash_type_idx (subscription_hash_type)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;