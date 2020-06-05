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

echo -e "\nUSE CASE 3:"
uc3Result=$(( a*b+c ))
echo "a*b+c = $uc3Result"

echo -e "\nUSE CASE 4:"
if [ $b -ne 0 ];then
  uc4Result=$(( c+a/b ))
  echo "c+a/b = $uc4Result"
else
  echo "Cannot divide by zero. try again"
fi

echo -e "\nUSE CASE 5:"
uc5Result=$(( a%b+c ))
echo "a%b+c = $uc5Result"

