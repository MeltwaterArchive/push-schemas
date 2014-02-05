CREATE TABLE tumblr (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME NOT NULL,
  tumblr_id VARCHAR(64) NULL,
  body VARCHAR(255) NULL,
  caption VARCHAR(255) NULL,
  post_url VARCHAR(255) NULL,
  post_type VARCHAR(64) NULL,
  from_id VARCHAR(64) NULL,
  from_url VARCHAR(255) NULL,
  from_name VARCHAR(255) NULL,
  from_title VARCHAR(255) NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX tumblr_created_at_idx ON tumblr (created_at);

CREATE TABLE tag_labels (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  label VARCHAR(255) NOT NULL,
  INDEX tag_labels_interaction_id_idx (interaction_id),
  INDEX tag_labels_interaction_type_idx (interaction_type),
  INDEX tag_labels_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE tag_scores (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(64) NOT NULL,
  created_at datetime NOT NULL,
  namespace VARCHAR(255) NOT NULL,
  score float NOT NULL,
  INDEX tag_scores_interaction_id_idx (interaction_id),
  INDEX tag_scores_interaction_type_idx (interaction_type),
  INDEX tag_scores_created_at_idx (created_at)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

/* FOR INFLUENCER SOLUTION */
CREATE VIEW tagged_brand AS 
SELECT tumblr.interaction_id, t.label AS tag
from tumblr 
  inner join tag_labels t on t.interaction_id = tumblr.interaction_id
where t.namespace = 'automotive.brand';

CREATE VIEW tumblr_tagged AS 
select t.*, b.tag as brand
from tumblr t
  inner join tagged_brand b on b.interaction_id = t.interaction_id;

CREATE VIEW `influencers` AS
select 
    tumblr_tagged.from_name AS from_name,
    count(*) AS count
from tumblr_tagged
group by tumblr_tagged.from_name
order by count(*) desc;