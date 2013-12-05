CREATE TABLE bitly (
	interaction_id VARCHAR(64) PRIMARY KEY NOT NULL,
	created_at DATETIME NOT NULL,
	cname VARCHAR(50),
	url TEXT,
	url_hash VARCHAR(50),
	url_domain TEXT,
	share_hash VARCHAR(50),
	country VARCHAR(50),
	country_code VARCHAR(10),
	latitude DECIMAL,
	longitude DECIMAL,
	city VARCHAR(50),
	region VARCHAR(50),
	region_code VARCHAR(10),
	timezone VARCHAR(50),
	referring_domain TEXT,
	referring_url TEXT,
	user_agent TEXT
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX bitly_created_at ON bitly (created_at);
