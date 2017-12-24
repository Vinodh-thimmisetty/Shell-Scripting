#!/bin/bash

<<COMMENTS

 Need to Modify the function. LOGIC is correct

COMMENTS

linearSearch(){

INPUT_ARRAY=($1[@])
echo "${INPUT_ARRAY[@]}"
SEARCH_ITEM="$2"
TEMP_VAR="${INPUT_ARRAY:0}"
INPUT_ARRAY_LENGTH="${#INPUT_ARRAY[@]}"
echo "$INPUT_ARRAY_LENGTH"
EXIT_STATUS=-1

for (( int i=0; i<$INPUT_ARRAY_LENGTH; i++ ))
do
   if [[ ${INPUT_ARRAY[i]} -eq  $SEARCH_ITEM ]];
   then 
      echo "Found @@ Index $i";
      EXIT_STATUS=0;
      break;
   fi
done

}

[[ "$#" -ne 1 ]] && echo "Invalid Number of Args" exit 2;

SAMPLE_ARRAY=(1,2,3,4,5)

linearSearch "${SAMPLE_ARRAY[@]}" "$1"


case $EXIT_STATUS in
      0) echo "Found" ;;
     -1) echo "Not Found" ;;
      *) echo "Script Error" ;;
esac  
