#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --noalign -c"

echo "Enter your username:"
read NAME

GET_RANDOM(){
  
FIND_NAME=$($PSQL "SELECT username FROM users WHERE username = '$NAME';")
GAMES=$($PSQL "SELECT games_played FROM users WHERE username = '$NAME';")
BEST=$($PSQL "SELECT best_game FROM users WHERE username = '$NAME';")

if [[ -z $FIND_NAME ]]
then
  INSERT_NAME=$($PSQL "INSERT INTO users(username) VALUES('$NAME');")
  echo -e "\n Welcome, $NAME! It looks like this is your first time here."
else
  echo -e "\nWelcome back, $NAME! You have played $GAMES games, and your best game took $BEST guesses."
fi


  echo $((1 + RANDOM % 1000))
}
