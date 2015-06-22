CREATE TABLE headhunters(
	name varchar(40)  COLLATE utf8_general_ci NOT NULL,
	address varchar(80)  COLLATE utf8_general_ci NOT NULL,
	billNo varchar(30)  COLLATE utf8_general_ci NOT NULL,
	availablePositions int,
	occupiedPositions int,
	PRIMARY KEY(name)
);

CREATE TABLE customer(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(40)  COLLATE utf8_general_ci NOT NULL,
	address varchar(40)  COLLATE utf8_general_ci NOT NULL,
	phone varchar(12)  COLLATE utf8_general_ci NOT NULL,
	email varchar(40)  COLLATE utf8_general_ci NOT NULL,
	price float,
	billNo varchar(30)  COLLATE utf8_general_ci NOT NULL,
	creditCardType varchar(10)  COLLATE utf8_general_ci NOT NULL,
	creditCardNo varchar(30)  COLLATE utf8_general_ci NOT NULL,
	creditCardCode varchar(10)  COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE company(
	id int NOT NULL,
	discount float,
	FOREIGN KEY (id) REFERENCES customer(id),
	PRIMARY KEY(id)
);

CREATE TABLE individual(
	id int NOT NULL,
	job varchar(40)  COLLATE utf8_general_ci NOT NULL,
	unemployed boolean NOT NULL,
	FOREIGN KEY (id) REFERENCES customer(id),
	PRIMARY KEY(id)
);

CREATE TABLE inidividualStudies(
	id int NOT NULL,
	diploma varchar(40)  COLLATE utf8_general_ci NOT NULL,
	FOREIGN KEY (id) REFERENCES individual(id)
);

CREATE TABLE inidividualForeignLanguages(
	id int NOT NULL,
	foreignLanguage varchar(40)  COLLATE utf8_general_ci NOT NULL,
	FOREIGN KEY (id) REFERENCES individual(id)
);

CREATE TABLE inidividualSkills(
	id int NOT NULL,
	skill varchar(40)  COLLATE utf8_general_ci NOT NULL,
	FOREIGN KEY (id) REFERENCES individual(id)
);

CREATE TABLE jobPosition(
	code varchar(10)  COLLATE utf8_general_ci NOT NULL,
	description varchar(50)  COLLATE utf8_general_ci NOT NULL,
	city varchar(10)  COLLATE utf8_general_ci NOT NULL,
	work_hours varchar(10)  COLLATE utf8_general_ci,
	salary float,
	available boolean NOT NULL,
	PRIMARY KEY(code)
);

CREATE TABLE jobPositionSkills(
	code varchar(10)  COLLATE utf8_general_ci NOT NULL,
	skill varchar(40)  COLLATE utf8_general_ci NOT NULL,
	FOREIGN KEY (code) REFERENCES jobPosition(code)
);

CREATE TABLE jobPositionStudies(
	code varchar(10)  COLLATE utf8_general_ci NOT NULL,
	diploma varchar(40)  COLLATE utf8_general_ci NOT NULL,
	FOREIGN KEY (code) REFERENCES jobPosition(code)
);

CREATE TABLE jobPositionForeignLanguages(
	code varchar(10)  COLLATE utf8_general_ci NOT NULL,
	foreignLanguage varchar(40)  COLLATE utf8_general_ci NOT NULL,
	FOREIGN KEY (code) REFERENCES jobPosition(code)
);

CREATE TABLE isOffered(
	companyId int NOT NULL,
	jobCode varchar(10)  COLLATE utf8_general_ci NOT NULL,
	name varchar(40)  COLLATE utf8_general_ci NOT NULL,
	deadline date,
	FOREIGN KEY (companyId) REFERENCES company(id),
	FOREIGN KEY (jobCode) REFERENCES jobPosition(code),
	FOREIGN KEY (name) REFERENCES headhunters(name)
);

CREATE TABLE isRequested(
	individualId int NOT NULL,
	name varchar(40)  COLLATE utf8_general_ci NOT NULL,
	availableFrom date,
	FOREIGN KEY (individualId) REFERENCES individual(id),
	FOREIGN KEY (name) REFERENCES headhunters(name)
);

CREATE TABLE skills(
	id int NOT NULL,
	skill varchar(40)  COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE professions(
	id int NOT NULL,
	profession varchar(40)  COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY(id)
);
