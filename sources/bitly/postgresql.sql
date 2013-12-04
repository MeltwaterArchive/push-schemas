CREATE TABLE bitly (
	id VARCHAR(64) PRIMARY KEY NOT NULL,
	created_at TIMESTAMP NOT NULL,
	cname VARCHAR(50) NOT NULL,
	url TEXT NOT NULL,
	url_hash VARCHAR(50) NOT NULL,
	url_domain TEXT NOT NULL,
	share_hash VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	country_code VARCHAR(10) NOT NULL,
	latitude DECIMAL NOT NULL,
	longitude DECIMAL NOT NULL,
	city VARCHAR(50) NOT NULL,
	region VARCHAR(50) NOT NULL,
	region_code VARCHAR(10) NOT NULL,
	referring_domain TEXT NOT NULL,
	referring_url TEXT NOT NULL,
	user_agent TEXT NOT NULL
);
CREATE INDEX bitly_created_at ON bitly (created_at);

