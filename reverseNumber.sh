# /bin/bash

# Print the provided input Number(from command line)  provided in Reverse Order

reverseNumber(){

INPUT_NUM="$1"
echo "Inside Function with value :: $INPUT_NUM"
OUPUT_NUM=
TEMP_REMINDER=
TEMP_QUOTIENT=$((INPUT_NUM/10))

: '

This is Multiline Comment ignored while compling

'

<<LOGIC_EXPLANATION

This is also Multiline Comment


1. Get the Remainder and append like string concatenation


LOGIC_EXPLANATION

while [ ! $TEMP_QUOTIENT -eq 0 ]
do
	echo "Input Number is $INPUT_NUM"
	TEMP_REMINDER=$((INPUT_NUM%10))
	TEMP_QUOTIENT=$((INPUT_NUM/10))
	echo "Temp Remainder is $TEMP_REMINDER and Temp Quotient is $TEMP_QUOTIENT"
	OUTPUT_NUM=${OUTPUT_NUM}${TEMP_REMINDER}
	echo "Output Variable is $OUTPUT_NUM"
	INPUT_NUM=${TEMP_QUOTIENT}
	echo -e "Input Number after iteration is $INPUT_NUM \n"
	
done

# Print the output 
echo -e "Reverse Number is :: $OUTPUT_NUM \n"


}


# Start of Script 

# Check Input is provided or not
[ $# -ne 1 ] && echo "Provide the Input"  exit 1;

FIRST_ARG=$1
NUM_REGEX="[0-9]+"

# Check Provided input is Number or not
[[ ! $FIRST_ARG =~ $NUM_REGEX ]] && echo "Only Number is allowed as input" exit 2;

# If all validations are good, call Reverse Function

reverseNumber $FIRST_ARG

[ $? -eq 0 ] && echo -e "Successfully Reversed the Number $FIRST_ARG and output is $OUTPUT_NUM \n" || echo -e "Failed to reverse Number. Debug and Correct the Script \n"

