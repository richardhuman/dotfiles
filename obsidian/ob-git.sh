#!/bin/bash

cd ~/Projects/Spin-Up/obsidian-vaults

function ob_pull() {
    # Check if there are any uncommitted changes in the Git index
    if [[ -n $(git status -s) ]]; then
        echo "Error: There are uncommitted changes in the Git repository."
        echo "Please commit or stash your changes before proceeding."
        git status
        exit 1
    else
        echo "Git repository is clean. No uncommitted changes detected."
    fi


    git pull origin main
}

function ob_push() {
    git commit -a -m '[Ob-push]' && git push origin main
}

case "$1" in
    push)
        ob_push
        ;;

    pull)
        ob_pull
        ;;

    *)
        echo "push | pull required"
esac

