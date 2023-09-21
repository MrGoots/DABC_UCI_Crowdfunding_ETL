-- Drop table if exists
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;

-- Create the names table
CREATE TABLE contacts (
	contact_id INT Primary Key,
	category varchar(255) NOT NULL
    first_name varchar(255) NOT NULL
    last_name varchar(255) NOT NULL
    email varchar(255) NOT NULL
);

CREATE TABLE category (
    category_id varchar(255) Primary Key,
    category varchar(255) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(15) Primary Key,
    subcategory VARCHAR(255) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT Primary Key,
    contact_id INT FK - contacts.contact_id
    company_name varchar(255) NOT NULL,
    details varchar(255) NOT NULL,
    goal int NOT NULL,
    pledged int NOT NULL,
    outcome varchar(255) NOT NULL,
    backers_count int NOT NULL,
    country varchar(3) NOT NULL,
    currency varchar(3) NOT NULL,
    launched_date datetime NOT NULL,
    target_date datetime NOT NULL,
    category_id varchar(10)  NOT NULL,FK >- category.category_id
    subcategory_id varchar(15)  NOT NULL,FK >- subcategory.subcategory_id
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);