CREATE TABLE bitly (
	id VARCHAR(64) NOT NULL,
	created_at DATETIME NOT NULL,
	cname VARCHAR(50),
	url TEXT,
	url_hash VARCHAR(50),
	url_domain TEXT,
	share_hash VARCHAR(50),
	country VARCHAR(50),
	country_code VARCHAR(10),
	latitude DOUBLE,
	longitude DOUBLE,
	city VARCHAR(50),
	region VARCHAR(50),
	region_code VARCHAR(10),
	timezone VARCHAR(50),
	referring_domain TEXT,
	referring_url TEXT,
	user_agent TEXT,
	PRIMARY KEY (id),
	INDEX created_at (created_at)
);

