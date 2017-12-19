#! /bin/sh

# The above line is called SHEBANG statement which indicated the type of shell we are using to intrepret this script.

# echo is like PRINT statement which will be followed by list of arguments

echo "Hello World!";
echo "Hello                       World!";
echo "Hello   *   World!";

# Variable declaration with value should not be separated with any space
# No DATA TYPE concept for Variables

MY_VAR="VINODH KUMAR THIMMISETTY"
echo $MY_VAR

# Always put quotes if a variable has more than one word, else only first word will be assigned to variable and remaining will be treated as shell commands
MY_VAR2=VINODH KUMAR THIMMISETTY
echo $MY_VAR2

# To accept any input from the CONSOLE, use READ and echo with double quotes to assign  the entire sentence to a variable
read INPUT_VAR;
echo "The input value is $INPUT_VAR"

# Variables won't have any scope within shell like Javascript and other languages. If we try to access a variable which doesn't exist, Shell shows empty value

echo " DO I Exists?? $I_DIDNT_EXISTS";
I_DIDNT_EXISTS="I have some value now"
echo " I exists now?? $I_DIDNT_EXISTS";

# To read any variable from the Parent process or inherit from parent to child process, we need to export the variables.
echo "Before exporting the environment variable ....$EXPORTED_VAR"

export EXPORTED_VAR="test value"
# Above line makes EXPORTED_VAR varibale available for all the process down the line starting with current shell process
echo "After exporting ........$EXPORTED_VAR";


# To append anything to a variable exported/read from console, enclose the variable with curly braces

echo "${MY_VAR}_i_am_constant_string_appended_to_existing_variables" # This helps while adding the DATE to LOG File name e.g> server_2017_dec_19.log

# Loops in Shell scripting

for i in 1 2 3 4 5 
do
	echo $i
done


EXIT_VAR="Start"

while [ "$EXIT_VAR" != "end" ]
do
	read EXIT_VAR
	echo "Input is $EXIT_VAR"
done

# Read content from File and loop

while read each_line
do
	case $each_line in
		option1) echo "Option 1" ;;
		option2) echo "Option 2" ;;
		*) echo "For remainging" ;;
	esac
done < input_file


# COnditional Statements
# Always have a space while checking IF condition inside square bracketes like [ s = s ], because [ is shell variable used for TEST

# Refer man test for more details

[ "test" = "test" ] && echo "TRUE" || echo "FALSE"; # For String Equality Check
[ "test" != "test" ] && echo "TRUE" || echo "FALSE"; # For String NOT Equality Check
[ 20 -eq 20 ] && echo "TRUE" || echo "FALSE"; # For Numeric equality check

if [ "test" != "test" ]
then
	echo "First If statement";
elif [ "test2" != "test2" ]
then
	echo "Else IF Statement"
else
	echo "Default Else Statement"
fi	



# Standard IO codes
# 0 --> STDIN
# 1 --> STDOUT
# 2 --> STDERR

# /dev/null is device file whose content will be discarded once script executes

echo "Check the input value is Integer or Not"
echo ".........................................."
read INPUT_VAL
echo "Input is... $INPUT_VAL"

echo $INPUT_VAL | grep -v [0-9] > /dev/null 2>&1
# $? gives the exit status of previously executed command.. ZERO is for SUCCESS/TRUE
if [ "$?" -eq "0" ]; then 
	echo "Not a Number..."
else
	echo "It is a Number.."
fi

# Predefined SET of variables which act as buffers to store string values/file names etc..

# $0 --> Filename
# $1 .. $9  --> Arguments passed along with the filename
# $@ --> All parametes from $1 ... $n
# "$@" --> Same as above, treated as separate arg
# $* --> arguments which doesnot preserve with spaces
# "$*" --> All the args will be treated as ONE string separated by IFS(Internal Field Separator)
# $# --> Number of Arguments
# $$ --> PID of current running shell
# $! --> PID for last background process

echo "I was called with $# parameters... dollar followed by hash"
echo "My name is $0"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"
echo "I was called with $* parameters... dollar followed by asterisk"

echo "$@"
echo "$*"
echo "CUrrent PID is $$"
echo "Last background process PID is $!"
