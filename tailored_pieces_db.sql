
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
