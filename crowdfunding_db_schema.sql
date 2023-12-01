--creating contacts
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
	email VARCHAR (150) NOT NULL,
	primary key (contact_id)
);
--creating category table
CREATE TABLE category (
    category_id VARCHAR(150) NOT NULL,
	category VARCHAR(150) NOT NULL,
	primary key (category)
);

-- creating subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(150) NOT NULL,
	subcategory VARCHAR(150) NOT NULL,
	primary key (subcategory)
);
--creating campaign
CREATE TABLE campaign (
	cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (300)  NOT NULL,
    goal  float NOT NULL,
    pledged float NOT NULL,
    outcome varchar (300) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category varchar (300)  NOT NULL,
    subcategory varchar (300)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category) references category(category),
	foreign key (subcategory) references subcategory(subcategory)
);

SELECT * FROM subcategory
SELECT * FROM category
SELECT * FROM contacts
SELECT * FROM campaign



