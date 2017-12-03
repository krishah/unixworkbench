#!/bin/bash

guess() 
{
	echo "Guess, how many files is in current directory ?"
}    
files=`ls | wc -w`
succes=0
while  [ "$succes" -eq 0 ]
do 
guess    
    read howmany
    #$files
    if [ "$howmany" -eq "$files" ]
	then
	let succes=1
	echo "Exactly !"
	    elif [ "$howmany" -ge "$files" ]
	    then
		echo "Too high :)"
	    else
		echo "Too low :)"
    fi
done