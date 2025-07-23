#!/bin/bash

# Railway deployment script untuk face recognition
echo "🚀 Starting Hadirku deployment..."

# Update pip dan install build tools
echo "📦 Updating pip and installing build tools..."
python -m pip install --upgrade pip
pip install wheel setuptools

# Install numpy first (dependency untuk dlib)
echo "🔢 Installing numpy..."
pip install numpy==1.21.0

# Install dependencies satu per satu untuk better error handling
echo "📊 Installing core Flask dependencies..."
pip install Flask==2.3.3
pip install Flask-Admin==1.6.1
pip install Flask-Login==0.6.3
pip install Flask-SQLAlchemy==2.5.1
pip install Werkzeug==2.3.7
pip install SQLAlchemy==1.4.50

# Install image processing dependencies
echo "🖼️ Installing image processing libraries..."
pip install Pillow==9.5.0
pip install opencv-python-headless==4.5.5.64

# Install dlib dan face_recognition dengan fallback
echo "🤖 Installing face recognition libraries..."
pip install cmake==3.22.0

# Try to install dlib with different approaches
echo "🔧 Installing dlib..."
pip install dlib==19.22.0 || pip install dlib || echo "Dlib installation failed, continuing..."

# Install face_recognition
echo "👤 Installing face_recognition..."
pip install face-recognition==1.3.0 || pip install face_recognition || echo "Face recognition installation failed"
pip install face-recognition-models==0.3.0 || echo "Face recognition models installation failed"

# Install remaining dependencies
echo "⚙️ Installing remaining dependencies..."
pip install pytz==2023.3
pip install MarkupSafe==2.1.5
pip install gunicorn==20.1.0

echo "✅ Deployment script completed!"
