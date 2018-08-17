#!/bin/bash

HELP(){
    echo "This is the name of the script"
    echo "Usage:$0 -b -l -f -s -h"
    echo "	-b|book     : Crea libro con marcas de agua."
    echo "	-l|legal    : Crea las guías en formato legal."
    echo "	-s|screen   : Crea las presentaciones en pdf."
    echo "	-f|facsimil : Crea los facsímiles en pdf."
    echo "	-h|help     : Muestra la ayuda y sale."
}

#Takes one flag in multiple formats
while [ ! $# -eq 0 ]
do
    case "$1" in
        --help | -h)
            HELP
            exit 0
        ;;
        --take-over-world | -t)
            ls
            exit
        ;;
    esac
    shift
done

