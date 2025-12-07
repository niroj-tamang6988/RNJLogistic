-- Add approval status column to users table
ALTER TABLE users ADD COLUMN is_approved BOOLEAN DEFAULT FALSE;

-- Update existing users to be approved (for existing data)
UPDATE users SET is_approved = TRUE WHERE role = 'admin';
UPDATE users SET is_approved = TRUE WHERE role IN ('vendor', 'rider');