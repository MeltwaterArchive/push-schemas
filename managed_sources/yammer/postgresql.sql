CREATE TABLE yammer (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  id VARCHAR(64) DEFAULT NULL,
  type VARCHAR(64) DEFAULT NULL,
  network_id VARCHAR(64) DEFAULT NULL,
  message_type VARCHAR(64) DEFAULT NULL,
  sender_type VARCHAR(64) DEFAULT NULL,
  url TEXT DEFAULT NULL,
  web_url TEXT DEFAULT NULL,
  body_parsed TEXT DEFAULT NULL,
  body_plain TEXT DEFAULT NULL,
  body_rich TEXT DEFAULT NULL,
  client_type VARCHAR(64) DEFAULT NULL,
  client_url TEXT DEFAULT NULL,
  system_message INTEGER DEFAULT NULL,
  direct_message INTEGER DEFAULT NULL,
  content_excerpt TEXT DEFAULT NULL,
  privacy TEXT DEFAULT NULL,
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
  job_title TEXT DEFAULT NULL,
  mugshot_url TEXT DEFAULT NULL,
  mugshot_url_template TEXT DEFAULT NULL,
  url TEXT DEFAULT NULL,
  web_url TEXT DEFAULT NULL,
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
  url TEXT DEFAULT NULL,
  web_url TEXT DEFAULT NULL,
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
  url TEXT DEFAULT NULL,
  web_url TEXT DEFAULT NULL,
  mugshot_url TEXT DEFAULT NULL,
  mugshot_url_template TEXT DEFAULT NULL,
  group_created_at TIMESTAMP DEFAULT NULL
);
CREATE INDEX yammer_group_interaction_id_idx ON yammer_group (interaction_id);
CREATE INDEX yammer_group_created_at_idx ON yammer_group (created_at);
