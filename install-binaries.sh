#!/bin/bash
# Authour USERMAN7. Purpose of script
# to make installation of binaries easier.

 IFS=',' read -r -a fields < .conf
 for i in "${!fields[@]}"; do
     eval "parse$i='${fields[$i]}'"
     done

echo "This is a setting up utility for"
echo "Installation of programms in this repo"
# Want to try something better here. Like
# putting ls into var then go like line by line
# to install binary to $PATH or not.
# Right now this is the hard way

echo "Would you like to install chdman,flips,
librespeed-cli,ytcast?"
echo "Y/n ?"
read -r install
if [ $install == "Y" ]; then
	chmod +x *
	for i in "${!fields[@]}"; do
		mv ${fields[$i]} /data/data/com.termux/files/usr/bin
	done
elif [ $install == "y" ]; then
	chmod +x *
	for i in "${!fields[@]}"; do
		mv ${fields[$i]} /data/data/com.termux/files/usr/bin
	done
elif [ $install == "N" ]; then
	echo "Whould you like to select which binaries you want to install?"
	echo "Y/n ?"
	read -r install2
	if [ $install2 == "Y" ]; then
	       for i in "${!fields[@]}"; do
			echo "Would you like to install ${fields[$i]}? (Y/n)"
			read -r install3
			case "$install3" in
			 [Yy])
				 mv "${fields[$i]}" /data/data/com.termux/files/usr/bin || {
					 echo "Failed to move binary: ${fields[$i]}"
					 exit 1
				 }
				 ;;
			 [Nn])
				 echo "Skipping ${fields[$i]}"
				 ;;
			      *)
				 echo "Invalid input. Skipping ${fields[$i]}"
			        ;;
			esac
		done		
	elif [ $install2 == "y" ]; then
		for i in "${!fields[@]}"; do
			echo "Would you like to install ${fields[$i]}? (Y/n)"
			read -r install3
			case "$install3" in
			 [Yy])
				 mv "${fields[$i]}" /data/data/com.termux/files/usr/bin || {
					 echo "Failed to move binary: ${fields[$i]}"
					 exit 1
				 }
				 ;;
			 [Nn])
				 echo "Skipping ${fields[$i]}"
				 ;;
			      *)
				 echo "Invalid input. Skipping ${fields[$i]}"
			        ;;
			esac
		done
	else
		echo "Exit!"; exit 
	fi		
elif [ $install == "n" ]; then
	echo "Whould you like to select which binaries you want to install?"
	echo "Y/n ?"
	read -r install2
	if [ $install2 == "Y" ]; then
	       for i in "${!fields[@]}"; do
			echo "Would you like to install ${fields[$i]}? (Y/n)"
			read -r install3
			case "$install3" in
			 [Yy])
				 mv "${fields[$i]}" /data/data/com.termux/files/usr/bin || {
					 echo "Failed to move binary: ${fields[$i]}"
					 exit 1
				 }
				 ;;
			 [Nn])
				 echo "Skipping ${fields[$i]}"
				 ;;
			      *)
				 echo "Invalid input. Skipping ${fields[$i]}"
			        ;;
			esac
		done		
	elif [ $install2 == "y" ]; then
		for i in "${!fields[@]}"; do
			echo "Would you like to install ${fields[$i]}? (Y/n)"
			read -r install3
			case "$install3" in
			 [Yy])
				 mv "${fields[$i]}" /data/data/com.termux/files/usr/bin || {
					 echo "Failed to move binary: ${fields[$i]}"
					 exit 1
				 }
				 ;;
			 [Nn])
				 echo "Skipping ${fields[$i]}"
				 ;;
			      *)
				 echo "Invalid input. Skipping ${fields[$i]}"
			        ;;
			esac
		done
	else
		echo "Exit!"; exit 
	fi	
else
       echo "Exiting!"; exit 1
fi

#read install
#if [ $install == "y" ]; then
#	echo "Putting binaries to $PATH"
#	chmod +x *
#	mv flips chdman librespeed-cli ytcast /data/data/com.termux/files/usr/bin
#	echo "done"
#else
#	echo "aborting script."; exit
#fi

