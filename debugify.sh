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
echo "Installing gawk"
apt-get install gawk
echo "Installed gawk"
echo
echo "Downloading Internal Tools this may take awhile!"
fileid="1npGYS9OKuaFNWDR1z7NCtKkn65r5buRA"
filename="internal.tar.xz"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
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
fileid="1mmvUY7yRHy4JGg4-Fec3Vqq_V0uk0Ybt"
filename="privateframeworks.tar.xz"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
echo "Private Frameworks downloaded successfully!"
echo
echo "Extracting privateframeworks.tar.xz"
tar --skip-old-files -xvf privateframeworks.tar.xz
echo "Extracted successfully!"
echo
echo "Removing Old Traces..."
rm -rf privateframeworks.tar.xz
echo "Removed!"
echo
clear
read -p "Finished successfully! Press [Enter] to run ldrestart to finalize changes."
ldrestart
