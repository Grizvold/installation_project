#!/bin/bash 
# function quit {
#     echo do something
# }  
# function e {
#     echo $1 
# }  
# function ex {
#     exit
# }
# e Hello
# e World
# quit
# ex
# echo foo

function do_work {
	echo command_1
	sleep 1
	echo command_2
	sleep 1
	echo command_3
	sleep 1
}

function ec {
	echo $1
}

ec Hello
ec World
do_work

#do_work | zenity --progress --title "test2 running" --time-remaining --auto-close 
