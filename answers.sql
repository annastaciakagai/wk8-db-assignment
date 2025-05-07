CREATE DATABASE fishingdb;

use fishingdb;

CREATE TABLE admin(
    admin_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (admin_id)
);
CREATE TABLE bmUnit(
    bmu_id INT AUTO_INCREMENT,
    bmu_name VARCHAR(50) NOT NULL,
    bmu_location VARCHAR(100) NOT NULL,
    boat_id INT NOT NULL,
    admin_id INT NOT NULL,
    fishers_count INT NOT NULL,
    PRIMARY KEY (bmu_id),
    FOREIGN KEY (admin_id) REFERENCES admin(admin_id)
);
CREATE TABLE boats(
    boat_id INT AUTO_INCREMENT,
    boat_status VARCHAR(50) NOT NULL,
    boat_type VARCHAR(50) NOT NULL,
    boat_capacity INT NOT NULL,
    bmu_id INT NOT NULL,
    PRIMARY KEY (boat_id),
    FOREIGN KEY (bmu_id) REFERENCES bmUnit(bmu_id)
);
CREATE TABLE fishers (
    fisher_id INT AUTO_INCREMENT,
    national_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    bmu_id INT NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    gender bool NOT NULL,
    date_of_birth DATE NOT NULL,
    age INT NOT NULL,
    experience_years INT NOT NULL,
    PRIMARY KEY (fisher_id, national_id),
    FOREIGN KEY (bmu_id) REFERENCES bmUnit(bmu_id)
);
