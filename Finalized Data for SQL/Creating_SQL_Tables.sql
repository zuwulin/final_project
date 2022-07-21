-- Creating tables for GTA_Housing_Dataset
CREATE TABLE GTA_Housing_Dataset (
     full_address VARCHAR(140) NOT NULL,
     bedrooms int NOT NULL,
	bathrooms int NOT NULL,
     price int NOT NULL,
	Brampton int NOT NULL,
     Markham int NOT NULL,
	Mississauga int NOT NULL,
     Toronto int NOT NULL,
	Vaughan int NOT NULL,
     CONDO int NOT NULL,
	SINGLE_FAMILY int NOT NULL,
     TOWNHOUSE int NOT NULL,
     PRIMARY KEY (full_address)
);

-- Creating tables for Listing_Info
CREATE TABLE Listing_Info (
     listing_url VARCHAR(600) NOT NULL,
	listing_image VARCHAR(600) NOT NULL,
     full_address VARCHAR(140) NOT NULL,
	zipcode VARCHAR(40) NOT NULL,
	latitude float NOT NULL,
	longitude float NOT NULL,
	FOREIGN KEY (full_address) REFERENCES GTA_Housing_Dataset(full_address),
     PRIMARY KEY (listing_image)
);