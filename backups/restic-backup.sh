#!/bin/bash

# It complains about not being able to read files and so failes.
# set -e

# Setup
# restic init --repo /Volumes/Richard-Mini-Backups/richard-mini-restic

export RESTIC_REPO=/Volumes/Richard-Mini-Backups/richard-mini-restic
export RESTIC_PASSWORD=$(op item get Mac-Mini-Restic-Backups --vault Work --fields=password --reveal)

restic -r ${RESTIC_REPO} --verbose backup /Users/richard \
  --exclude node_modules \
  --exclude venv \
  --exclude /Users/richard/Library/Containers \
  --exclude /Users/richard/Library/Group\ Containers

restic -r ${RESTIC_REPO} --verbose backup /Volumes/Data

diskutil unmount /Volumes/Richard-Mini-Backups
