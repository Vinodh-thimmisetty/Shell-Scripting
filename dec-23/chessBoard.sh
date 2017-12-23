#!/bin/bash
: '
 Print the Chessboard with WHITE=>1 and BLACK=>0 
or  with original colors
'

printChessBoard(){

INPUT_ROWS=$1
INPUT_COLS=$2

#for rows in {1.."$INPUT_ROWS"}

for (( rows=1; rows<${INPUT_ROWS}; rows++ ))
do
#  for cols in {1.."$INPUT_COLS"}
  for(( cols=1; cols<${INPUT_COLS}; cols++ ))
  do
#	echo "Row:: $rows and Column:: $cols"
 # Chess Board:: courtesy: http://www.bashguru.com/2008/04/displaying-chess-board-on-screen.html
  if [ `expr $(($rows+$cols)) % 2` -eq 0 ]
   then
        echo -e -n "\033[41m  "
      else
        echo -e -n "\033[47m  "
      fi
  done
  echo 
done  
  echo -e "\033[0m"
}


printChessBoard $1 $2 
