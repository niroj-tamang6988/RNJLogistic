-- Add day book table for riders
CREATE TABLE IF NOT EXISTS rider_daybook (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rider_id INT NOT NULL,
    date DATE NOT NULL,
    total_km DECIMAL(10,2) DEFAULT 0,
    parcels_delivered INT DEFAULT 0,
    fuel_cost DECIMAL(10,2) DEFAULT 0,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (rider_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE KEY unique_rider_date (rider_id, date)
);