#!/bin/bash
read -n 1 -p "Are you sure you want to run this program (y/[a]): " AMSURE
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2
echo Program for searching for repositories
echo Developer: Irina Golovko
echo Listing installed repositories
yum list installed
echo "Enter the repository's name"
read N
yum list $N
if [ $N installed ]
then
yum info $N
else
echo "The repository is not installed"
touch new_repo
echo "Put the configuration info for the repository $N in the file new_repo"
fi
exit
