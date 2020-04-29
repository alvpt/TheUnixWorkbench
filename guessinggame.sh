function guessing {

		if [[ $1 -gt $2 ]]; then
			echo "Your guess is lower than the actual value." 
		fi

		if [[ $1 -lt $2 ]]; then
			echo "Your guess is higher than the actual value."
		fi

		if [[ $1 -eq $2 ]]; then
			echo "Congratulations! Your answer is correct." 
		fi
}



files_directory=$(ls | wc -l)
let user_guess=$files_directory+1

while [[ $files_directory -ne $user_guess ]]
do

	echo "Please, introduce the number of files that you think
are present in the current working directory"

	read user_guess

	guessing $files_directory $user_guess

done 

