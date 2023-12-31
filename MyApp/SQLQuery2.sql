CREATE TABLE users (
    username VARCHAR (15) NOT NULL PRIMARY KEY,
	password VARCHAR (40) NOT NULL,
    email VARCHAR (150) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CHECK (username NOT LIKE '% %' AND password NOT LIKE '% %')
);

INSERT INTO users (username, password, email)
VALUES
('BillGatez', 'testpass', 'ahr@gmail.com')

CREATE TABLE admin_users (
    username VARCHAR (15) NOT NULL PRIMARY KEY,
	password VARCHAR (40) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CHECK (username NOT LIKE '% %' AND password NOT LIKE '% %')
);

INSERT INTO admin_users (username, password)
VALUES
('arjun', 'king')
use Billing_db
CREATE TABLE billings (
    id INT NOT NULL,
	username VARCHAR (15) NOT NULL,
    bill_name VARCHAR (50) NOT NULL,
	service VARCHAR (50) NULL,
	cost DECIMAL (5,2) NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (username, id),
	FOREIGN KEY (username) REFERENCES users(username)

);

