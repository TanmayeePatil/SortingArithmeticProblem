#!/bin/bash

echo "Welcome to Sorting Arithmetic Operation Problem:"

echo "USE CASE 1:"

read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c

echo "You given below inputes"
echo "a=$a"
echo "b=$b"
echo "c=$c"

echo -e "\nUSE CASE 2:"

uc2Result=$(( a+b*c ))
echo "a+b*c = $uc2Result"
