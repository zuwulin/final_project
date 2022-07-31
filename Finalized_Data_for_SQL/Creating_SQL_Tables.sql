-- Creating tables for GTA_Housing_Dataset
CREATE TABLE GTA_Housing_Dataset (
     Full_Address VARCHAR(140) NOT NULL,
     Bedrooms int NOT NULL,
	Bathrooms int NOT NULL,
     Price int NOT NULL,
     Latitude float NOT NULL,
	Longitude float NOT NULL,
	City_Brampton int NOT NULL,
     City_Markham int NOT NULL,
	City_Mississauga int NOT NULL,
     City_Toronto int NOT NULL,
	City_Vaughan int NOT NULL,
     Home_Type_CONDO int NOT NULL,
	Home_Type_SINGLE_FAMILY int NOT NULL,
     Home_Type_TOWNHOUSE int NOT NULL,
     PRIMARY KEY (Full_Address)
);

-- Creating tables for Listing_Info
CREATE TABLE Listing_Info (
     Listing_Image VARCHAR(600) NOT NULL,
     Listing_URL VARCHAR(600) NOT NULL,
     Full_Address VARCHAR(140) NOT NULL,
	Zipcode VARCHAR(40) NOT NULL,
	FOREIGN KEY (Full_Address) REFERENCES GTA_Housing_Dataset(Full_Address),
     PRIMARY KEY (Listing_URL)
);