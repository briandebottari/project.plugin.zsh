#!/bin/zsh

hash -d p=$PROJECTS

function p() {
    [[ -d $PROJECTS/$1 ]] && cd $PROJECTS/$1 || mkdir $PROJECTS/$1 && cd $PROJECTS/$1;
}

compdef '_files -W $PROJECTS' p
