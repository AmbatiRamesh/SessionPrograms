#!/bin/bash -x
read -p "Enter the firstName : " firstName
read -p "Enter	the lastName : " lastName
function user(){
   echo Hello $1 $2
}
user $firstName $lastName

