#!/bin/bash

echo "Welcome to Sorting Arithmetic Operation Problem:"

declare -A SortArithDict

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
if [ ! -z "$uc2Result" ];then
   echo "a+b*c = $uc2Result"
   SortArithDict['a+b*c=']=$uc2Result
fi

echo -e "\nUSE CASE 3:"
uc3Result=$(( a*b+c ))
if [ ! -z "$uc3Result" ];then
   echo "a*b+c = $uc3Result"
   SortArithDict['a*b+c=']=$uc3Result
fi

echo -e "\nUSE CASE 4:"
if [ $b -ne 0 ];then
  uc4Result=$(( c+a/b ))
  if [ ! -z "$uc4Result" ];then
     echo "c+a/b = $uc4Result"
     SortArithDict['c+a/b=']=$uc4Result
  fi
else
  echo "Cannot divide by zero. try again"
fi

echo -e "\nUSE CASE 5:"
uc5Result=$(( a%b+c ))
if [ ! -z "$uc5Result" ];then
   echo "a%b+c = $uc5Result"
   SortArithDict['a%b+c=']=$uc5Result
fi

echo -e "\nUSE CASE 6:"
echo "All dictonary keys: ${!SortArithDict[@]}"
echo "All dictonary values: ${SortArithDict[@]}"

echo -e "\nUSE CASE 7:"
echo  "Storing result from dictionary to array"
for key in "${!SortArithDict[@]}"; do
  res="${SortArithDict[$key]}"
  arrayResult+=($res)
done
echo "All array values: ${arrayResult[@]}"

echo -e "\nUSE CASE 8:"
echo "Sorting in descending order:"
for key in "${!SortArithDict[@]}"; do
  printf '%s:%s\n' "$key" "${SortArithDict[$key]}"
done | sort -t : -k 2n | sort -r

echo -e "\nUSE CASE 9:"
echo "Sorting in ascending order:"
for key in "${!SortArithDict[@]}"; do
  printf '%s:%s\n' "$key" "${SortArithDict[$key]}"
done | sort -t : -k 2n
