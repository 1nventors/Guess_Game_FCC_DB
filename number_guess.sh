#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --noalign -c"

echo "Enter your username:"
read NAME

GET_RANDOM(){

TRIES = 0

SECRET=$((1 + RANDOM % 1000))
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

echo "Guess the secret number between 1 and 1000:"
read GUESS

if [[ -z $GUESS ]]
then
  echo "That is not an integer, guess again:"
if [[ $GUESS -lt $SECRET ]]
then
  echo -e "\nIt's higher than that, guess again:"
  TRIES+=1
fi
if [[ $GUESS -gt $SECRET ]]
then
  echo -e "\nIt's lower than that, guess again:"
  TRIES+=1
fi
if [[ $GUESS == $SECRET ]]
then
  echo "You guessed it in $TRIES tries. The secret number was $RANDOM. Nice Job!"
fi
fi

}

GET_RANDOM
