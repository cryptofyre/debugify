echo Debugify by ShadowFlame#0001 or Fire
echo I was recently banned on 4 accounts recently so discord is the only way to contact me.
echo
echo RUN AS ROOT.
echo Make sure you are jailbroken with checkra1n before continuing. This tool does not officially support unc0ver or etc.
echo
echo DO NOT LET YOUR DEVICE POWER OFF DURING INSTALLATION
echo
read -p "When ready please press [ENTER] to continue."
clear
cd /
echo "Downloading Internal Tools this may take awhile!"
wget https://github.com/iiFir3z/debugify/raw/master/internal.tar.xz
echo "Internal Tools downloaded successfully."
echo
echo "Extracting internal.tar.xz"
tar -xvf internal.tar.xz
echo "Extracted successfully!"
echo
echo "Removing Old Traces..."
rm -rf internal.tar.xz
echo "Removed!"
clear
echo "Switching Directory(s)"
cd /System/Library/PrivateFrameworks
echo "Downloading Private Frameworks this may take awhile!"
wget https://github.com/iiFir3z/debugify/raw/master/privateframeworks.tar.xz
echo "Downloaded successfully!"
echo
echo "Extracting privateframeworks.tar.xz"
tar -xvf --keep-old-files privateframeworks.tar.xz
echo "Extracted successfully!"
echo
echo "Removing Old Traces..."
rm -rf privateframeworks.tar.xz
echo "Removed!"
echo
clear
read -p "Finished successfully! Press [Enter] to run ldrestart to finalize changes."
ldrestart
