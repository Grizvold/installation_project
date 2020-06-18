#!/bin/bash 

do_init(){
    declare -A dict 
    dict["command1"]=TRUE
    dict["command2"]=TRUE
    dict["command3"]=TRUE
    
    for i in ${!dict[@]};
    do 
        echo  ${dict[$i]} $i
    done
}

res="$(do_init)"
echo $res
ans=$(zenity --width=400 --height=350 --list  --text "select commands: " --checklist  --column "Pick" --column "options" $res --separator=":"); 
echo $ans
