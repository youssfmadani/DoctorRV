-- Création de la base de données
create DATABASE onlinehospital;
USE onlinehospital;

-- Table des spécialistes
CREATE TABLE specialist (
    id INT AUTO_INCREMENT PRIMARY KEY,
    spec_name VARCHAR(100) UNIQUE NOT NULL
);

-- Table des médecins
CREATE TABLE doctor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    qualification VARCHAR(255) NOT NULL,
    specialist_id INT NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    mobno VARCHAR(20) UNIQUE NOT NULL,
    FOREIGN KEY (specialist_id) REFERENCES specialist(id) ON DELETE CASCADE
);

-- Table des rendez-vous
CREATE TABLE appointment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    age INT NOT NULL,
    appointment_date DATE NOT NULL,
    email VARCHAR(255) NOT NULL,
    phno VARCHAR(20) NOT NULL,
    diseases TEXT NOT NULL,
    specialist_id INT NOT NULL,
    address TEXT NOT NULL,
    FOREIGN KEY (specialist_id) REFERENCES specialist(id) ON DELETE CASCADE
);

-- Table des utilisateurs
CREATE TABLE user_dtls (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insérer les spécialités médicales
INSERT INTO specialist (spec_name) VALUES
('Cardiologie'),
('Dermatologie'),
('Neurologie'),
('Pédiatrie'),
('Orthopédie'),
('Ophtalmologie'),
('Gynécologie'),
('Radiologie'),
('Psychiatrie'),
('Médecine générale');
