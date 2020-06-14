#!/bin/bash
echo "Credits: @B355P"
echo Welcome to Debugify v2.1!
echo "Installing Debugify Please Wait..."
echo "Installing all dependencys"
apt -y --allow-unauthenticated install wget
cd /
echo
echo "Downloading Internal Tools this may take awhile!"
wget http://35.230.4.142/debugify/internal.tar.xz --no-check-certificate
echo "Internal Tools downloaded successfully."
echo
echo "Extracting internal.tar.xz"
tar -xf internal.tar.xz
echo "Extracted successfully!"
echo
echo "Removing Old Traces..."
rm -rf internal.tar.xz
echo "Removed!"
clear
echo "Switching Directory(s)"
cd /System/Library/PrivateFrameworks || exit
echo "Downloading Private Frameworks this may take awhile!"
wget http://35.230.4.142/debugify/privateframeworks.tar.xz --no-check-certificate
echo "Private Frameworks downloaded successfully!"
echo
echo "Extracting privateframeworks.tar.xz"
tar --skip-old-files -xf privateframeworks.tar.xz
echo "Extracted successfully!"
echo
echo "Removing Old Traces..."
rm -rf privateframeworks.tar.xz
echo "Removed!"
echo
echo "Setting permissions..."
chmod 777 -R /AppleInternal/
echo "Set permissions to 777 for all users."
echo
echo "Successfully installed Debugify! Follow @B355P for more debug tweaks"
ldrestart