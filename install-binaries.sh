#!/bin/bash
# Authour USERMAN7. Purpose of script
# to make installation of binaries easier.
echo "This is a setting up utility for"
echo "Installation of programms in this repo"
# Want to try something better here. Like
# putting ls into var then go like line by line
# to install binary to $PATH or not.
# Right now this is the hard way
echo "Would you like to install chdman,flips,
librespeed-cli,ytcast?"
echo "Y/n ?"
read install
if [ $install == "y" ]; then
	echo "Putting binaries to $PATH"
	chmod +x *
	mv flips chdman librespeed-cli ytcast $PATH
	echo "done"
else
	echo "aborting script."; exit
fi

