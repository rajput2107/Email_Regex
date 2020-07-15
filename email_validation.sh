#! /bin/bash -x
export LC_COLLATE=C

read -p "Enter First name: " Fname
read -p "Enter Last name: " Lname
read -p "Enter Email: " email

Fname_Pattern="^[A-Z][a-z]{2,}$"
Lname_Pattern="^[A-Z][a-z]{2,}$"
email_Pattern="^[A-Za-z0-9]+([_+-.][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$"

if [[ $Fname =~ $Fname_Pattern ]] && [[ $Lname =~ $Lname_Pattern ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
	echo "Please Enter name Starting with Capital Letter & more than 3 characters"
fi

if [[ $email =~ $email_Pattern ]]
then
	echo "Valid Email"
else
	echo "Invalid Email"
fi
