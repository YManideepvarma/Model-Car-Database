-- Create tables
DROP TABLE IF EXISTS sales, inventory, customers, cars, makes;

CREATE TABLE makes (
    make_id INT PRIMARY KEY AUTO_INCREMENT,
    make_name VARCHAR(50)
);

CREATE TABLE cars (
    model_id INT PRIMARY KEY AUTO_INCREMENT,
    model_name VARCHAR(100),
    make_id INT,
    year INT,
    price DECIMAL(10,2),
    FOREIGN KEY (make_id) REFERENCES makes(make_id)
);

CREATE TABLE inventory (
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    model_id INT,
    color VARCHAR(30),
    status ENUM('available', 'sold') DEFAULT 'available',
    date_added DATE,
    FOREIGN KEY (model_id) REFERENCES cars(model_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    car_id INT,
    sale_date DATE,
    customer_id INT,
    sale_price DECIMAL(10,2),
    FOREIGN KEY (car_id) REFERENCES inventory(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample data
INSERT INTO makes (make_name) VALUES ('Toyota'), ('Honda'), ('Ford'), ('Tesla'), ('BMW');

INSERT INTO cars (model_name, make_id, year, price) VALUES
('Corolla', 1, 2020, 20000),
('Civic', 2, 2021, 22000),
('Model 3', 4, 2023, 35000),
('Mustang', 3, 2022, 40000),
('X5', 5, 2023, 60000);

INSERT INTO inventory (model_id, color, status, date_added) VALUES
(1, 'Red', 'available', '2024-01-10'),
(2, 'Blue', 'sold', '2024-02-15'),
(3, 'White', 'sold', '2024-03-01'),
(4, 'Black', 'available', '2024-04-20'),
(5, 'Grey', 'sold', '2024-05-05');

INSERT INTO customers (name, email, location) VALUES
('John Doe', 'john@example.com', 'New York'),
('Jane Smith', 'jane@example.com', 'California'),
('Alice Johnson', 'alice@example.com', 'Texas');

INSERT INTO sales (car_id, sale_date, customer_id, sale_price) VALUES
(2, '2024-02-20', 1, 21500),
(3, '2024-03-10', 2, 34000),
(5, '2024-05-10', 3, 58000);
