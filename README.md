# Delivery Management System

A complete delivery management system with three user roles: Vendor, Admin, and Rider.

## Features

### Vendor
- Place new parcels
- View parcel statistics (total, delivered, not delivered, in progress)
- Track all placed parcels

### Admin
- View all parcels from all vendors
- Assign riders to parcels
- Monitor overall system statistics

### Rider
- View assigned parcels
- Update delivery status (delivered/not delivered)
- Add comments for delivery attempts

## Setup Instructions

### 1. Database Setup
1. Start XAMPP and ensure MySQL is running
2. Open phpMyAdmin or MySQL command line
3. Run the SQL script: `database/schema.sql`

### 2. Backend Setup
```bash
cd backend
npm install
npm start
```
Server will run on http://localhost:5000

### 3. Frontend Setup
```bash
cd frontend
npm install
npm start
```
Frontend will run on http://localhost:3000

## Default Login Credentials
- **Admin**: admin@dms.com / password

## API Endpoints

### Authentication
- POST `/api/register` - Register new user
- POST `/api/login` - User login

### Parcels
- GET `/api/parcels` - Get parcels (filtered by role)
- POST `/api/parcels` - Create new parcel (vendor only)
- PUT `/api/parcels/:id/assign` - Assign rider (admin only)
- PUT `/api/parcels/:id/delivery` - Update delivery status (rider only)

### Others
- GET `/api/riders` - Get all riders
- GET `/api/stats` - Get parcel statistics

## Technology Stack
- **Backend**: Node.js, Express.js, MySQL, JWT Authentication
- **Frontend**: React.js, Axios
- **Database**: MySQL