# Deployment Guide

## Prerequisites
- GitHub account
- Render/Vercel/Railway account

## Step 1: Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git push -u origin main
```

## Step 2: Deploy Backend (Render)
1. Go to https://render.com
2. Click "New +" → "Web Service"
3. Connect your GitHub repository
4. Configure:
   - Name: dms-backend
   - Root Directory: backend
   - Build Command: `npm install`
   - Start Command: `npm start`
5. Add Environment Variables:
   - DB_HOST
   - DB_USER
   - DB_PASSWORD
   - DB_NAME
   - JWT_SECRET
   - PORT=5001
6. Deploy

## Step 3: Deploy Frontend (Vercel)
1. Go to https://vercel.com
2. Import your GitHub repository
3. Configure:
   - Root Directory: frontend
   - Build Command: `npm run build`
   - Output Directory: build
4. Add Environment Variable:
   - REACT_APP_API_URL=https://your-backend-url.onrender.com
5. Deploy

## Step 4: Database
- Use Render PostgreSQL (free) or
- Use external MySQL hosting (PlanetScale, Railway)
- Import schema.sql to your database

## Alternative: Deploy Both on Render
- Deploy backend as Web Service
- Deploy frontend as Static Site
- Add MySQL database from Render
