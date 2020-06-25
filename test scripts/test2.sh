#!/bin/bash

#zenity --info --width 300 --text "Starting test2 installation."
function do_work {
	echo "# First work item" 
	echo "10"
	sleep 3

	echo "# Second work item" 
	echo "20"
	sleep 3

	echo "# Third work item" 
	echo "70"
	sleep 3

	echo "# Last work item" 
	echo "100"
	sleep 1
}

function ec {
	echo $1
}

# ec Hello
# ec World
# do_work
Response=$(zenity --entry --text "Enter your ubuntu user password" --title "Installation set up" --entry-text=""); 
echo $Response

do_work | zenity --progress --title "test2 running" --width 600 --time-remaining --auto-close 