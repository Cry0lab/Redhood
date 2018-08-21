#!/bin/bash

#######################     Funtions and Flags     #######################

HELP(){
    echo "This is the name of the script"
    echo "Usage:This is how you do the things"
    echo "	-b|btag     : This tag does a thing."
    echo "	-h|help     : Displays this help and exits."
}

#Takes one flag in multiple formats
while getopts hvf: opt; do
    case $opt in
        h)
            HELP
            exit 0
        ;;
        v)  verbose=$((verbose+1))
        ;;
        f)  output_file=$OPTARG
        ;;
        *)
            printf -- '\033[31m ERROR: Invalid Flag(s) Used \033[0m\n';
            HELP >&2
            exit 1
        ;;
    esac
done
shift "$((OPTIND-1))"   # Discard the options and sentinel --