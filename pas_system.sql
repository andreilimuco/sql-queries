CREATE DATABASE pas_system;
USE pas_system;

CREATE TABLE customer_accounts(
id INT NOT NULL AUTO_INCREMENT,
account_no VARCHAR(4) NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

DROP TABLE customer_accounts;

SELECT * FROM customer_accounts ORDER BY account_no DESC LIMIT 1;

CREATE TABLE policies(
id INT NOT NULL AUTO_INCREMENT,
policy_no VARCHAR(6) NOT NULL,
effective_date DATE NOT NULL,
expiration_date DATE NOT NULL,
policy_premium DOUBLE NOT NULL,
PRIMARY KEY (id)
);

DROP TABLE policies;

INSERT INTO policies VALUES ('123456', '3679', '2022-06-30', '2022-12-30', 123);


CREATE TABLE policyholders(
id INT NOT NULL AUTO_INCREMENT,
account_no VARCHAR(4) NOT NULL,
policy_no VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
birth_date DATE NOT NULL,
address VARCHAR(255) NOT NULL,
drivers_license VARCHAR(255) NOT NULL,
drivers_license_issued DATE NOT NULL,
PRIMARY KEY (id)
);

DROP TABLE policyholders;

CREATE TABLE vehicles(
policy_no INT NOT NULL,
make VARCHAR(255) NOT NULL,
model VARCHAR(255) NOT NULL,
year INT NOT NULL,
type VARCHAR(255) NOT NULL,
fuel_type VARCHAR(255) NOT NULL,
purchase_price DOUBLE NOT NULL,
color VARCHAR(255) NOT NULL,
premium_charged DOUBLE NOT NULL,
PRIMARY KEY(policy_no)
);

DROP TABLE vehicles;

CREATE TABLE vehicles(
id INT NOT NULL AUTO_INCREMENT,
policy_no INT NOT NULL,
make VARCHAR(255) NOT NULL,
model VARCHAR(255) NOT NULL,
year INT NOT NULL,
type VARCHAR(255) NOT NULL,
fuel_type VARCHAR(255) NOT NULL,
purchase_price DOUBLE NOT NULL,
color VARCHAR(255) NOT NULL,
premium_charged DOUBLE NOT NULL,
PRIMARY KEY(id)
);

DROP TABLE vehicles;

CREATE TABLE claims(
id INT NOT NULL AUTO_INCREMENT,
claim_no VARCHAR(6) NOT NULL,
policy_no INT NOT NULL,
accident_date DATE NOT NULL,
accident_address VARCHAR(255) NOT NULL,
accident_description VARCHAR(255) NOT NULL,
damage_description VARCHAR(255) NOT NULL,
repair_cost DOUBLE NOT NULL,
PRIMARY KEY(id)
);

DROP TABLE claims;

SELECT * FROM customer_accounts LEFT JOIN policies ON customer_accounts.policy_id = policies.id;


INSERT INTO customer_accounts_trial (first_name,last_name,address) VALUES ('Regem','Martin','Laguna');


SELECT * FROM customer_accounts;