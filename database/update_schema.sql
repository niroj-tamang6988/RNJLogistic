USE dms;

-- Update the parcels table to fix column names and constraints
ALTER TABLE parcels 
ADD COLUMN assigned_rider_id INT NULL,
ADD COLUMN rider_comment TEXT NULL,
ADD COLUMN cod_amount DECIMAL(10,2) DEFAULT 0,
ADD COLUMN address TEXT NULL;

-- Update existing data
UPDATE parcels SET address = recipient_address WHERE address IS NULL;
UPDATE parcels SET assigned_rider_id = rider_id WHERE assigned_rider_id IS NULL;

-- Add foreign key for assigned_rider_id
ALTER TABLE parcels ADD FOREIGN KEY (assigned_rider_id) REFERENCES users(id);

-- Update status enum to ensure it supports the values we're using
ALTER TABLE parcels MODIFY COLUMN status ENUM('pending', 'placed', 'assigned', 'delivered', 'not_delivered') DEFAULT 'pending';