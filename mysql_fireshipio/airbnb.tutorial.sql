-- Stephanie Vargas Villarini --- fireship.io tutorial

-- @block
-- Create users table
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)
);

-- @block
-- Insert data into table
INSERT INTO users (email, bio, country)

VALUES
    ('testuser@gmail.com','I am the best!', 'US'),
    ('testuser1@gmail.com','I am the best1!', 'US'),
    ('testuser2@gmail.com','I am the best2!', 'MD'),
    ('testuser3@gmail.com','I am the best3!', 'PR');

-- @block
-- Retrieve/Query data from table 
SELECT email,id FROM users
WHERE country = 'US'
AND id > 1
AND email LIKE 't%'
ORDER BY id DESC
LIMIT 2;

-- @block
-- INDEX --- Lookup table basically [READ SPEEDS] --- better performance on searches and reads
-- It make things simpler for lookups, retrieval and reading of emails, but updating and writing 
-- in the table will take more time, in addition of additional memory usage
CREATE INDEX email_index ON Users(email);

-- @block
-- Create rooms table
CREATE TABLE Rooms(
      id INT AUTO_INCREMENT,
      street VARCHAR(255),
      owner_id INT NOT NULL,
      PRIMARY KEY(id),
      FOREIGN KEY(owner_id) REFERENCES Users(id)
);

-- @block
-- Insert data into table
INSERT INTO rooms (street, owner_id)

VALUES
    ('SJU street', 1),
    ('BWI street', 1),
    ('COLORADO street', 1);

-- @block
-- Practicing Join concept --- left, right, inner and full outer join
SELECT
    Users.id AS user_id,
    Rooms.id AS room_id,
    email,
    street
FROM Users
RIGHT JOIN Rooms
ON Rooms.owner_id = Users.id;

-- @block
-- Create bookings table
CREATE TABLE Bookings(
      id INT AUTO_INCREMENT,
      guest_id INT NOT NULL,
      room_id INT NOT NULL,
      check_in DATETIME,
      PRIMARY KEY(id),
      FOREIGN KEY(guest_id) REFERENCES Users(id),
      FOREIGN KEY(room_id) REFERENCES Rooms(id)
);

-- Delete table or database use the DROP TABLE ... or DROP DATABASE ...