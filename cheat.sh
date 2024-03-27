#! /bin/bash
echo "
 __     __   ___ __     __ _____
/  |__||_  /\ | (_ |__||_ |_  | 
\__|  ||__/--\| __)|  ||__|__ | 
  "
echo "   The Universal Linux Society"
while true; do
echo ""
read -p "Enter the command you want information on (or type 'quit' to exit) : " user_command
echo ""
# function to allow to quit the loop #
if [ "$user_command" = "quit" ]; then
	echo "Exiting..." 
	break
	fi
tldr "$user_command"

# give the option to continue using the script #
echo ""
read -p "Do you want to search for something else? (y/n):" continue_choice
if [ "$continue_choice" = "n" ]; then
	echo "Exiting"
	break
fi
done

