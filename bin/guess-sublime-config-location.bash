#!/bin/bash
#
# Guess where Sublime Text config files are kept
#
#

# OSX default
SUBL="/usr/local/opt/kitout/_resources/sublime-conf"

# Linux if extracted to the home folder
if [ ! -d "$SUBL" ] ; then
    # Linux
    SUBL="$HOME/.config/sublime-text-2/Packages/User"
fi

if [ ! -d "$SUBL" ] ; then
    SUBL=""
fi

echo "$SUBL"