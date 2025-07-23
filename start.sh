#!/bin/bash

echo "🚀 Starting Hadirku Face Recognition App..."

# Install requirements
echo "📦 Installing dependencies..."
pip install -r requirements-replit.txt

# Create necessary directories
echo "📁 Creating directories..."
mkdir -p static/captures
mkdir -p instance

# Run the Flask app
echo "🌐 Starting Flask server..."
python app.py
