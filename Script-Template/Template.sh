#!/bin/bash

#######################     Funtions and Flags     #######################

HELP(){
    echo "This is the name of the script"
    echo "Usage:This is how you do the things"
    echo "	-b|btag     : This tag does a thing."
    echo "	-h|help     : Displays this help and exits."
}

#Takes one flag in multiple formats
while [ ! $# -eq 0 ]
do
    case "$1" in
        --help | -h)
            HELP
            exit 0
        ;;
        --take-over-world | -t) #This is a hidden tag
            printf -- '\033[32m SUCCESS: The thing you did worked. \033[0m\n'
            printf -- '\033[33m WARNING: But it could have caused cancer \033[0m\n';
            ls
            exit
        ;;
        --* | -*)
            printf -- '\033[31m ERROR: Invalid Flag Used \033[0m\n';
            HELP
            exit 0
    esac
    shift
done

#set -e; #If there is an error after this point, the script will end.
