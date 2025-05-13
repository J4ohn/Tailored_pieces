
-- Tailoring Business Database Schema

-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address TEXT
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    due_date DATE,
    status VARCHAR(50),
    total_price DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Garments Table
CREATE TABLE Garments (
    garment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    type VARCHAR(50),
    fabric VARCHAR(100),
    style_notes TEXT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Measurements Table
CREATE TABLE Measurements (
    measurement_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    garment_type VARCHAR(50),
    chest DECIMAL(5,2),
    waist DECIMAL(5,2),
    hips DECIMAL(5,2),
    inseam DECIMAL(5,2),
    length DECIMAL(5,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Materials Table
CREATE TABLE Materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    quantity DECIMAL(10,2),
    unit_price DECIMAL(10,2),
    supplier VARCHAR(100)
);

-- Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    method VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
-- Insert Customers
INSERT INTO Customers (name, phone, email, address) VALUES
('John Mbayahi', '1234567890', 'J.mbayahi@gmail.com', '123 johnstone St'),
('Marion Nansibo', '2345678901', 'marion.n@gmail.com', '456 wampewo Ave'),
('Gorette Wanambisi', '3456789012', 'Gorette@gmail.com', '789 kyaggwe Rd');

-- Insert Orders
INSERT INTO Orders (customer_id, order_date, due_date, status, total_price) VALUES
(1, '2025-05-01', '2025-05-15', 'Pending', 150.00),
(2, '2025-05-02', '2025-05-16', 'Completed', 200.00),
(3, '2025-05-03', '2025-05-17', 'In Progress', 180.00);

-- Insert Garments
INSERT INTO Garments (order_id, type, fabric, style_notes, price) VALUES
(1, 'Suit', 'Wool', 'Classic fit, navy blue', 150.00),
(2, 'Dress', 'Silk', 'Evening gown, red', 200.00),
(3, 'Shirt', 'Cotton', 'Formal, white with blue stripes', 80.00);

-- Insert Measurements
INSERT INTO Measurements (customer_id, garment_type, chest, waist, hips, inseam, length) VALUES
(1, 'Suit', 38.5, 32.0, 40.0, 30.0, 42.0),
(2, 'Dress', 34.0, 28.0, 36.0, 29.0, 40.0),
(3, 'Shirt', 40.0, 34.0, 42.0, 31.0, 41.0);

-- Insert Materials
INSERT INTO Materials (name, quantity, unit_price, supplier) VALUES
('Wool Fabric', 50.0, 10.00, 'ABC Textiles'),
('Silk Fabric', 30.0, 15.00, 'Luxury Silks'),
('Cotton Fabric', 100.0, 5.00, 'Everyday Cottons');

-- Insert Payments
INSERT INTO Payments (order_id, amount, payment_date, method) VALUES
(1, 75.00, '2025-05-02', 'Cash'),
(2, 200.00, '2025-05-03', 'Credit Card'),
(3, 90.00, '2025-05-04', 'Mobile Money');

