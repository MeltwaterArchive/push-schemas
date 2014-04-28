CREATE TABLE lexisnexis (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  feedtype VARCHAR(255) DEFAULT NULL,
  language VARCHAR(64) DEFAULT NULL,
  load_date DATETIME DEFAULT NULL,
  docinfo_lnlni VARCHAR(255) DEFAULT NULL,
  source_name VARCHAR(64) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_interaction_id_idx ON lexisnexis (interaction_id);
CREATE INDEX lexisnexis_created_at_idx ON lexisnexis (created_at);
  

CREATE TABLE lexisnexis_article (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  type VARCHAR(255) DEFAULT NULL,
  title VARCHAR(255) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  len INT DEFAULT NULL,
  byline VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_article_interaction_id_idx ON lexisnexis_article (interaction_id);
CREATE INDEX lexisnexis_article_created_at_idx ON lexisnexis_article (created_at);
  

CREATE TABLE lexisnexis_copyright (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  descr VARCHAR(255) DEFAULT NULL,
  year VARCHAR(255) DEFAULT NULL,
  holder_name VARCHAR(64) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_copyright_interaction_id_idx ON lexisnexis_copyright (interaction_id);
CREATE INDEX lexisnexis_copyright_created_at_idx ON lexisnexis_copyright (created_at);
  

CREATE TABLE lexisnexis_indexing_subject (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_subject_interaction_id_idx ON lexisnexis_indexing_subject (interaction_id);
CREATE INDEX lexisnexis_indexing_subject_created_at_idx ON lexisnexis_indexing_subject (created_at);
  

CREATE TABLE lexisnexis_indexing_company (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_company_interaction_id_idx ON lexisnexis_indexing_company (interaction_id);
CREATE INDEX lexisnexis_indexing_company_created_at_idx ON lexisnexis_indexing_company (created_at);
  

CREATE TABLE lexisnexis_indexing_organisation (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_organisation_interaction_id_idx ON lexisnexis_indexing_organisation (interaction_id);
CREATE INDEX lexisnexis_indexing_organisation_created_at_idx ON lexisnexis_indexing_organisation (created_at);
  

CREATE TABLE lexisnexis_indexing_ticker (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_ticker_interaction_id_idx ON lexisnexis_indexing_ticker (interaction_id);
CREATE INDEX lexisnexis_indexing_ticker_created_at_idx ON lexisnexis_indexing_ticker (created_at);
  

CREATE TABLE lexisnexis_indexing_industry (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_industry_interaction_id_idx ON lexisnexis_indexing_industry (interaction_id);
CREATE INDEX lexisnexis_indexing_industry_created_at_idx ON lexisnexis_indexing_industry (created_at);
  

CREATE TABLE lexisnexis_indexing_person (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_person_interaction_id_idx ON lexisnexis_indexing_person (interaction_id);
CREATE INDEX lexisnexis_indexing_person_created_at_idx ON lexisnexis_indexing_person (created_at);
  

CREATE TABLE lexisnexis_indexing_city (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_city_interaction_id_idx ON lexisnexis_indexing_city (interaction_id);
CREATE INDEX lexisnexis_indexing_city_created_at_idx ON lexisnexis_indexing_city (created_at);
  

CREATE TABLE lexisnexis_indexing_state (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_state_interaction_id_idx ON lexisnexis_indexing_state (interaction_id);
CREATE INDEX lexisnexis_indexing_state_created_at_idx ON lexisnexis_indexing_state (created_at);
  

CREATE TABLE lexisnexis_indexing_country (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  term VARCHAR(255) DEFAULT NULL,
  score DOUBLE DEFAULT NULL,
  score_percentage INTEGER DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX lexisnexis_indexing_country_interaction_id_idx ON lexisnexis_indexing_country (interaction_id);
CREATE INDEX lexisnexis_indexing_country_created_at_idx ON lexisnexis_indexing_country (created_at);
