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

# SPACE=" "
HOSTNAME="hostname"
SUDO="sudo"   
# COMMAND="$SUDO\ $HOSTNAME"
Dictionary_Builder () {
    declare -A The_Dictionary=([Nautilius]=pwd
                               [Atom]=pwd
							   [Eclipse]="$SUDO\ $HOSTNAME"
							   [Hostname]=ls)
    echo '('
    for key in  "${!The_Dictionary[@]}" ; do
        echo "[$key]=${The_Dictionary[$key]}"
    done
    echo ')'
}

Traverse_On_Dictionary(){
	percentage=0
	declare -A The_Output_Dictionary="$(Dictionary_Builder)"
	for key in  "${!The_Output_Dictionary[@]}" ; do
		#echo key: $key, value: ${The_Output_Dictionary[$key]}
		echo "#Installing: $key, value: ${The_Output_Dictionary[$key]}" 
		#eval ${The_Output_Dictionary[$key]}
		eval ${The_Output_Dictionary[$key]}
		echo "$percentage"
		((percentage+=25))
		sleep 2
	done
}

Traverse_On_Dictionary | zenity --progress --title "test2 running" --width 600 --time-remaining --auto-close

# function run_On_Dictionary{
# #dictionary
# 	local commands
# 	unset commands
# 	declare -A commands 
# 	commands[ls_command]="ls"
# 	commands[ls_name]=echo "ls"
# 	commands[pwd_command]="pwd"
# 	commands[key_test]=1

# 	for i in ${!commands[@]}; do
# 	echo $i ${commands[$i]} 
# 	sleep 1
# 	done
# }


# function do_work {
# 	echo "#command_1"
# 	echo "33"
# 	sleep 1
# 	echo "#command_2"
# 	echo "66"
# 	sleep 1
# 	echo "#command_3"
# 	echo "100"
# 	sleep 1
# }

# function ec {
# 	echo $1
# }

# ec Hello
# ec World
# do_work

# do_work | zenity --progress --title "test2 running" --width 600 --time-remaining --auto-close 
exit 0