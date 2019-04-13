guess=-1
number_of_files=$(ls -1 | wc -l)
function guessing {
        echo "Please guess how many files are in the current directory"
        read guess
}
guessing
while [[ $guess -ne $number_of_files ]]
do
		if [[ $guess -le $number_of_files ]]
	then
		echo "guess too low!"
	else
		echo "guess too high!"
	fi
	guessing
done


echo "exactly right!"

