CREATE DATABASE [MessengerApp]

CREATE TABLE users
(
    user_id INT PRIMARY KEY IDENTITY(1,1),
    user_name VARCHAR(50) NOT NULL,
	contact_no VARCHAR(20) UNIQUE NOT NULL

);

CREATE TABLE messages
(
    message_id INT PRIMARY KEY IDENTITY(1,1),
	sent_from_id int NOT NULL,
	sent_to_id int NOT NULL,
	message_content text NULL,
	media_url varchar(50) NULL,
	timestamp timestamp NOT NULL,
    FOREIGN KEY (sent_from_id) REFERENCES users(user_id),
    FOREIGN KEY (sent_to_id) REFERENCES users(user_id)
);

CREATE TABLE users
(
    user_id INT PRIMARY KEY IDENTITY(1,1),
	timestamp timestamp NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)

);



CREATE TABLE Users_Table
(
    user_id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(50) NOT NULL,
	contact_number VARCHAR(20) UNIQUE NOT NULL,
	profile_pics VARCHAR(225) NULL
);

INSERT INTO Users_Table (username, contact_number, profile_pics) 
VALUES 
('omorvictor', '+2347030754169', 'https://mysite.com/img/omorvictor.jpg'),
('vickyblvck', '+2347063296189', 'https://mysite.com/img/vickyblvck.jpg');


INSERT INTO messages (message_id, sent_from_id, sent_to_id, message_content) 
VALUES 
('1', '1', '2', 'Hey bro, what is going on?'),
('2', '2', '1', 'Men!, I am just chilling o, what about you?'),
('3', '1', '2', 'I dey house');

INSERT INTO users (user_id, user_name, contact_no) 
VALUES 
('1', 'omorvictor', '0703075416'),
('2', 'vickyblvck', '0706329518');

INSERT INTO last_seen(user_id) 
VALUES 
('1'),
('2');