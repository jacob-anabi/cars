#! /bin/bash
# cars.sh
#@author Jacob Anabi
#@date 2018-10-30
#@version 1.0
#@id 2294644
#@class CPSC 298-nix

echo Would you like to:
echo ac. Add a car
echo lc. List the cars in the inventory file
echo q. Quit the program
read choice

while [[ "$choice" -eq "ac" ]] || [[ "$choice" -eq "lc" ]]
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
			echo Enter make:
			read make
			echo Enter model:
			read model
			info="$year:$make:$model"
			echo $'\n' >> My_old_cars
			echo "$info" >> My_old_cars
			;;
		"lc")
			sort My_old_cars
			;;
		*)
	esac
	echo Would you like to:
	echo ac. Add a car
	echo lc. List the cars in the inventory file
	echo q. Quit the program
	read choice
done
echo Goodbye