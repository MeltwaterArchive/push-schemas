CREATE TABLE demographic (
  interaction_id VARCHAR(64) PRIMARY KEY,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  age_range_start VARCHAR(255) DEFAULT NULL,
  age_range_end VARCHAR(255) DEFAULT NULL,
  first_language VARCHAR(64) DEFAULT NULL,
  gender VARCHAR(64) DEFAULT NULL,
  city VARCHAR(255) DEFAULT NULL,
  country VARCHAR(64) DEFAULT NULL,
  us_state VARCHAR(255) DEFAULT NULL,
  sex VARCHAR(255) DEFAULT NULL,
  relationship VARCHAR(255) DEFAULT NULL,
  work VARCHAR(255) DEFAULT NULL,
  twitter_accounts_categories VARCHAR(255) DEFAULT NULL,
  twitter_activity VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_interaction_id_idx ON demographic (interaction_id);
CREATE INDEX demographic_interaction_type_idx ON demographic (interaction_type);
CREATE INDEX demographic_created_at_idx ON demographic (created_at);


CREATE TABLE demographic_likes_and_interests (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  interest VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_likes_and_interests_interaction_id_idx ON demographic_likes_and_interests (interaction_id);
CREATE INDEX demographic_likes_and_interests_interaction_type_idx ON demographic_likes_and_interests (interaction_type);
CREATE INDEX demographic_likes_and_interests_created_at_idx ON demographic_likes_and_interests (created_at);


CREATE TABLE demographic_twitter_accounts_categories (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  category VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_twitter_accounts_categories_interaction_id_idx ON demographic_twitter_accounts_categories (interaction_id);
CREATE INDEX demographic_twitter_accounts_categories_interaction_type_idx ON demographic_twitter_accounts_categories (interaction_type);
CREATE INDEX demographic_twitter_accounts_categories_created_at_idx ON demographic_twitter_accounts_categories (created_at);


CREATE TABLE demographic_twitter_accounts_large (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  account VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_twitter_accounts_large_interaction_id_idx ON demographic_twitter_accounts_large (interaction_id);
CREATE INDEX demographic_twitter_accounts_large_interaction_type_idx ON demographic_twitter_accounts_large (interaction_type);
CREATE INDEX demographic_twitter_accounts_large_created_at_idx ON demographic_twitter_accounts_large (created_at);


CREATE TABLE demographic_dressed_by (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  brand VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_dressed_by_interaction_id_idx ON demographic_dressed_by (interaction_id);
CREATE INDEX demographic_dressed_by_interaction_type_idx ON demographic_dressed_by (interaction_type);
CREATE INDEX demographic_dressed_by_created_at_idx ON demographic_dressed_by (created_at);


CREATE TABLE demographic_eat_drink_at (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  place VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_eat_drink_at_interaction_id_idx ON demographic_eat_drink_at (interaction_id);
CREATE INDEX demographic_eat_drink_at_interaction_type_idx ON demographic_eat_drink_at (interaction_type);
CREATE INDEX demographic_eat_drink_at_created_at_idx ON demographic_eat_drink_at (created_at);


CREATE TABLE demographic_shop_at (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  shop VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_shop_at_interaction_id_idx ON demographic_shop_at (interaction_id);
CREATE INDEX demographic_shop_at_interaction_type_idx ON demographic_shop_at (interaction_type);
CREATE INDEX demographic_shop_at_created_at_idx ON demographic_shop_at (created_at);


CREATE TABLE demographic_professions (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  profession VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_professions_interaction_id_idx ON demographic_professions (interaction_id);
CREATE INDEX demographic_professions_interaction_type_idx ON demographic_professions (interaction_type);
CREATE INDEX demographic_professions_created_at_idx ON demographic_professions (created_at);


CREATE TABLE demographic_services (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  service VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX demographic_services_interaction_id_idx ON demographic_services (interaction_id);
CREATE INDEX demographic_services_interaction_type_idx ON demographic_services (interaction_type);
CREATE INDEX demographic_services_created_at_idx ON demographic_services (created_at);
