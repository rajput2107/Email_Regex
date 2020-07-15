#! /bin/bash -x
export LC_COLLATE=C

read -p "Enter First name: " Fname

Fname_Pattern="^[A-Z][a-z]{2,}$"
if [[ $Fname =~ $Fname_Pattern ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
	echo "Please Enter name Starting with Capital Letter & more than 3 characters"
fi
