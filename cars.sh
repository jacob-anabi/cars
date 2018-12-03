#! /bin/bash
# cars.sh
#@author Jacob Anabi
#@date 2018-10-30
#@version 1.0
#@id 2294644
#@class CPSC 298-nix

# ask for choice
echo Would you like to:
echo ac. Add a car
echo lc. List the cars in the inventory file
echo q. Quit the program
read choice

# checking what the choice is
while [[ "$choice" != "q" ]]
do
	case "$choice" in
		"ac")
			echo Enter year:
			read year
			# checking if the year is a positive number
			while ! [[ $year =~ "^[0-9]+$" ]] && ! [[ $year -gt 0 ]] > /dev/null 2>&1
			do
			       echo "Enter a year: "
			       read year
			done
			# ask for car info
			echo Enter make:
			read make
			echo Enter model:
			read model
			info="$year $make $model" # put car info into string
			echo "$info" >> My_old_cars # add car info to file
			;;
		"lc")
			sort My_old_cars
			;;
		   *)
			echo Not an option, try again.
	esac
	# ask for choice again
	echo Would you like to:
	echo ac. Add a car
	echo lc. List the cars in the inventory file
	echo q. Quit the program
	read choice
done
echo Goodbye