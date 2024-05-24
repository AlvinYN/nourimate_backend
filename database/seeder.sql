-- Structure
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    phoneNumber VARCHAR(255),
    accessToken VARCHAR(255),
    refreshToken VARCHAR(255),
    emailToken VARCHAR(255),
    smsToken VARCHAR(255),
    emailVerified BOOLEAN DEFAULT FALSE,
    phoneVerified BOOLEAN DEFAULT FALSE
);

CREATE TABLE UserDetail (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    dob DATE,
    height INT,
    waistSize INT,
    weight INT,
    gender VARCHAR(50),
    allergen VARCHAR(255),
    disease VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);