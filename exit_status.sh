#it will run only for sudo or root user ....
#!/bin/bash

read -p " Enter the name of the user to be created : " u
# edit to "sudo useradd" if your not root user
useradd $u &> /dev/null

if [ $? -eq 0 ]; then
	echo "User $u is successfully created.."
elif [ $? -eq 4 ]; then
	echo "User with UID already exit...."
elif [ $? -eq 9 ]; then
	echo "User with same username already exit"
else
	echo " User cannot be created . Some error occur..."
fi	
