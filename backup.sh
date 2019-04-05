#!/bin/bash

clear
a=`whoami`
echo "-----------------------------------------------------------------"
echo "                 Welcome :$a                                     "
echo "-----------------------------------------------------------------"
echo -en '\n\n'
read -p 'Please enter directory name to be backed up : ' dir_name1
read -p 'Please enter the directory name where tar file should be kept : ' dir_name2
tar -cvf ${dir_name2}/${USER}_backup.tar ${dir_name1} &> /dev/null
echo "BACKED UP FINISHED SUCCESSFULLY"
echo "-----------------------------------------------------------------"
