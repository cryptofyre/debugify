# Thanks @_bplank for the asset hosting!

echo Debugify by @B355P also known as Fire
echo I was recently banned on 4 accounts recently so Discord and Telegram are the only ways to contact me.
echo
echo Make sure you are jailbroken with checkra1n before continuing. This tool does not officially support unc0ver or etc.
echo
echo DO NOT LET YOUR DEVICE POWER OFF DURING INSTALLATION
echo
echo "Thanks @_bplank for hosting the file assets!"
clear
echo "Installing dependency"
apt-get -y install wget
cd /
echo
echo "Downloading Internal Tools this may take awhile!"
wget https://brandonplank.org/internal/internal.tar.xz --no-check-certificate
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
cd /System/Library/PrivateFrameworks
echo "Downloading Private Frameworks this may take awhile!"
wget https://brandonplank.org/internal/privateframeworks.tar.xz --no-check-certificate
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
