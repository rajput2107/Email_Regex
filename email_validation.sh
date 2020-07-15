#! /bin/bash -x
export LC_COLLATE=C

read -p "Enter First name: " Fname
read -p "Enter Last name: " Lname

Fname_Pattern="^[A-Z][a-z]{2,}$"
Lname_Pattern="^[A-Z][a-z]{2,}$"

if [[ $Fname =~ $Fname_Pattern ]] && [[ $Lname =~ $Lname_Pattern ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
	echo "Please Enter name Starting with Capital Letter & more than 3 characters"
fi
