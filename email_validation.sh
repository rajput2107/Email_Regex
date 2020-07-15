#! /bin/bash
export LC_COLLATE=C

#Inputs
read -p "Enter First name: " fname
read -p "Enter Last name: " lname
read -p "Enter Email: " email
read -p "Enter Mobile:" mobile
read -p "Enter Password: " password


#Matching Patterns
fname_Pattern="^[A-Z][a-z]{2,}$"
lname_Pattern="^[A-Z][a-z]{2,}$"
email_Pattern="^[A-Za-z0-9]+([_+-.][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$"
mobile_Pattern="^[+][1-9]{1,3}[ ]{1}[1-9][0-9]{9}$"
pass_Pattern="^.{8,}"
special="^[a-zA-Z0-9]*[!@#$%^&*.]{1}[a-zA-Z0-9]*$"


#First and Last name Validation
if [[ $fname =~ $fname_Pattern ]] && [[ $lname =~ $lname_Pattern ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
	echo "Please Enter name Starting with Capital Letter & more than 3 characters"
fi


#Email Validation
if [[ $email =~ $email_Pattern ]]
then
	echo "Valid Email"
else
	echo "Invalid Email"
fi


#Mobile Validation
if [[ $mobile =~ $mobile_Pattern ]]
then
        echo "Valid Mobile"
else
        echo "Invalid Mobile"
fi


#Password Validation
if [[ $password =~ $pass_Pattern ]] && [[ $password =~ $special ]]
then
        status=`echo $password | grep "[A-Z]" | grep "[0-9]" | grep -E "[!@#$%^&*]"`
        if [[ $? -ne 0 ]]
        then
                echo "Password must contain one uppercase & one number"
        else
		echo "Valid Password"
	fi

else
        echo "Invalid Password"
fi

