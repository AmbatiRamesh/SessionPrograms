#!/bin/bash -x 
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
function subtraction() {
  echo result=$((num1 - num2))
}
subtraction $result

function multiplication() {
  echo result=$((num1 * num2))
}
multiplication $result

function division() {
  echo result=$((num1 / num2))
}
division $result
