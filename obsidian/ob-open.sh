#!/bin/bash


case "$1" in
    fev)
        open "obsidian://open?vault=Fev-Hedgd-Notes"
        ;;

    
    np)
        open "obsidian://open?vault=Neith.AI.Notes"
        ;;

    spin)
        open "obsidian://open?vault=Spin-Up-Notes"
        ;;

    cg)    
        open "obsidian://open?vault=CulturaGo-Notes"
        ;;
    *)
        echo "push | pull required"
esac

