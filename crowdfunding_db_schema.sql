CREATE TABLE contact (
  contact_id int not null,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  PRIMARY KEY (contact_id)
  );
  
SELECT * FROM contact
  
CREATE TABLE categories (
  category_id varchar not null,
  category varchar(50),
  PRIMARY KEY (category_id)
  );

SELECT * FROM categories

CREATE TABLE subcategories (
  subcategory_id varchar not null,
  subcategory varchar(50),
  PRIMARY KEY (subcategory_id)
  );
  
SELECT * FROM subcategories


 CREATE TABLE campaign (
   cf_id int not null,
   contact_id int,
   company_name varchar,
   description varchar,
   goal float,
   pledged float,
   outcome varchar(50),
   backers_count int,
   country varchar(10),
   currency varchar(10),
   launched_date date,
   end_date date,
   category_id varchar,
   subcategory_id varchar,
   PRIMARY KEY (cf_id),
   FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
   FOREIGN KEY (category_id) REFERENCES categories(category_id),
   FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
 );
 
 SELECT * FROM campaign