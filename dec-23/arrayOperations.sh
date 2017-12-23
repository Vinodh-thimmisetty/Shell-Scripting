#!/bin/bash

: '

 Notes:: SHIFT + G to go end of line in VI Editor
         Enclose the variables separated by space in paranthesis to treat as an ARRAY element

'

printArrayValues(){
 echo "Printing the Array Elements"
 OUTPUT_ARRAY=$@
 echo "${OUTPUT_ARRAY[@]}"
}


# Array Declaration
declare -a array1
printArrayValues "${array1[@]}"

array1[0]=vinodh
array1[1]=10
array1[2]=10.32
array1[3]="Thimmisetty Vinodh Kumar"

echo "Array1 Length is :: ${#array1[@]}"
printArrayValues "${array1[@]}"


# Array Declaration and Initialization
array_var=(1 2 3 4 5)
printArrayValues "${array_var[@]}";


# Copy from One Array to other
array2=("${array1[@]}")
printArrayValues "${array2[@]}"

echo "Array2 Length is :: ${#array2[@]}"

echo "print First ELement in the Array:: ${array2:0} ,, and other way is ${array2[0]}"
echo "Print Range of Elements in the Array:: ${array2[@]:0:3}"
echo "Print all elements in the Array:: ${array2[@]} ,, and other way is ${array2[@]:0}"
echo "Print from certain index to end of the array:: ${array2[@]:2}"
echo "Print Length of particular Element in the Array:: ${#array2[0]}"
echo "Replace certain element or characters in array:: ${array2[@]//Vinodh/YoYoYO},, for particular value in array ${array2[0]//od/TT}" 




# Chess Table:: courtesy: http://www.bashguru.com/2008/04/displaying-chess-board-on-screen.html

for (( i=1; i<4; i++ ))
do
  for (( j=1; j<4; j++ ))
  do
    if [ `expr $(($i+$j)) % 2` -eq 0 ]
    then
      echo -e -n "\033[41m  "
    else
      echo -e -n "\033[47m  "
    fi
  done
  echo
done

echo -e "\033[0m"







