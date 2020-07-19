echo "****** WELCOME TO GUESSING GAME ******"
printf "\nInstructions: You need to guess how many files are in your current directory until you guess the correct answer."
 
function ask {
  echo "How many files are in the current directory?"
  read guess 
  nfile=$(ls -1 | wc -l)
}

ask
while [[ $guess -ne $nfile ]]
do 
  if [[ $guess -ge $nfile ]] 
  then
    echo "Try smaller number."
  else [[ $guess -le $nfile ]]
    echo "Try  bigger number." 
  fi
  ask
done

echo "Congratulations you have guess right"
echo "There are $nfile files in the current directory, which are: "
echo "-----------------------------------------------------------" && ls

