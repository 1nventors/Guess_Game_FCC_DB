#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --noalign -c"

echo "Enter your username:"
read NAME

if [[ -z $NAME ]]
then
  
done
FIND_NAME=$($PSQL "SELECT username FROM users WHERE username = '$NAME'";)


GET_RANDOM(){
  echo $((1 + RANDOM % 1000))
}
