#!/bin/bash
#
# Guess what Sublime Text binary we are going to use
#
#

# OSX default
SUBL="/opt/homebrew-cask/Caskroom/sublime-text/2.0.2/Sublime Text 2.app"

# Linux if extracted to the home folder
if [ ! -e "$SUBL" ] ; then
    # Linux
    SUBL="$HOME/Sublime Text 2/sublime_text"
fi

if [ ! -e "$SUBL" ] ; then
    SUBL=""
fi

echo $SUBL