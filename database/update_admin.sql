USE dms;

-- Update admin credentials
UPDATE users SET 
    name = 'Niroj',
    email = 'niroj@gmail.com',
    password = '$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUBfQFFoaa'
WHERE role = 'admin';