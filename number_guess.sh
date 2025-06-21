#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --noalign -c"

GET_RANDOM(){
  echo $((1 + RANDOM % 1000))
}
GET_RANDOM