CREATE TABLE yammer (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  type VARCHAR(64) DEFAULT NULL,
  network_id VARCHAR(64) DEFAULT NULL,
  message_type VARCHAR(64) DEFAULT NULL,
  sender_type VARCHAR(64) DEFAULT NULL,
  url VARCHAR(255) DEFAULT NULL,
  web_url VARCHAR(255) DEFAULT NULL,
  body_parsed TEXT DEFAULT NULL,
  body_plain TEXT DEFAULT NULL,
  body_rich TEXT DEFAULT NULL,
  client_type VARCHAR(64) DEFAULT NULL,
  client_url VARCHAR(255) DEFAULT NULL,
  system_message INTEGER DEFAULT NULL,
  direct_message INTEGER DEFAULT NULL,
  content_excerpt VARCHAR(255) DEFAULT NULL,
  privacy VARCHAR(255) DEFAULT NULL,
  liked_by INTEGER DEFAULT NULL
);
CREATE INDEX yammer_interaction_id_idx ON yammer (interaction_id);
CREATE INDEX yammer_created_at_idx ON yammer (created_at);
  

CREATE TABLE yammer_sender (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  type VARCHAR(64) DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL,
  state VARCHAR(64) DEFAULT NULL,
  full_name VARCHAR(64) DEFAULT NULL,
  job_title VARCHAR(255) DEFAULT NULL,
  mugshot_url VARCHAR(255) DEFAULT NULL,
  mugshot_url_template VARCHAR(255) DEFAULT NULL,
  url VARCHAR(255) DEFAULT NULL,
  web_url VARCHAR(255) DEFAULT NULL,
  activated_at TIMESTAMP DEFAULT NULL,
  stats_following INTEGER DEFAULT NULL,
  stats_followers INTEGER DEFAULT NULL,
  stats_updates INTEGER DEFAULT NULL
);
CREATE INDEX yammer_sender_interaction_id_idx ON yammer_sender (interaction_id);
CREATE INDEX yammer_sender_created_at_idx ON yammer_sender (created_at);
  

CREATE TABLE yammer_thread (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  url VARCHAR(255) DEFAULT NULL,
  web_url VARCHAR(255) DEFAULT NULL,
  thread_starter_id VARCHAR(64) DEFAULT NULL,
  group_id VARCHAR(64) DEFAULT NULL,
  privacy VARCHAR(50) DEFAULT NULL,
  direct_message INTEGER DEFAULT NULL,
  has_attachements INTEGER DEFAULT NULL,
  stats_updates INTEGER DEFAULT NULL,
  stats_shares INTEGER DEFAULT NULL,
  stats_latest_reply_id VARCHAR(64) DEFAULT NULL,
  stats_latest_reply_at TIMESTAMP DEFAULT NULL
);
CREATE INDEX yammer_thread_interaction_id_idx ON yammer_thread (interaction_id);
CREATE INDEX yammer_thread_created_at_idx ON yammer_thread (created_at);
  

CREATE TABLE yammer_group (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  type VARCHAR(50) DEFAULT NULL,
  id VARCHAR(64) DEFAULT NULL,
  full_name VARCHAR(64) DEFAULT NULL,
  name VARCHAR(64) DEFAULT NULL,
  privacy VARCHAR(50) DEFAULT NULL,
  url VARCHAR(255) DEFAULT NULL,
  web_url VARCHAR(255) DEFAULT NULL,
  mugshot_url VARCHAR(255) DEFAULT NULL,
  mugshot_url_template VARCHAR(255) DEFAULT NULL,
  group_created_at TIMESTAMP DEFAULT NULL
);
CREATE INDEX yammer_group_interaction_id_idx ON yammer_group (interaction_id);
CREATE INDEX yammer_group_created_at_idx ON yammer_group (created_at);
