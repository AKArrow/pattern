#!/bin/bash -x
name="^[A-Z]{1}[a-z]{2,}$"
mobile="^[9]{1}[1]{1}[[:space:]][0-9]{10}$"
email="^[0-9A-Za-z]+@[0-9A-Za-z]+[.][a-zA-Z]{2,4}$"
pass="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
echo "Input Your First Name"
read fn
if [[ $fn =~ $name ]]
then
	echo "Input Your Last Name"
	read ln
	if [[ $ln =~ $name ]]
	then
		echo "Input Your Email Id"
		read eid
		if [[ $eid =~ $email ]]
		then
			echo "Input Your Mobile Number"
			read mn
			if [[ $mn =~ $mobile ]]
			then
				echo "Input Your Password:"
				read ps
				if [[ $ps =~ $pass ]]
				then
					echo "Matching"
				else
					echo "Not Matching"
				fi
			else
				echo "Not Matching"
			fi
		else
			echo "Not Matching"
		fi
	else
		echo "Not Matching"
fi
else
echo "Not Matching"
fi
#^([A-Z]+)([0-9]+)[@#$%^&*]{1}[0-9a-zA-Z\@\#$\%\^\&\*]{5,20}
#^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[@#$%^&*+-_])[a-zA-Z0-9@#$%^&*+_-]{8,}$