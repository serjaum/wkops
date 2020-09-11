#!/bin/bash

WKOPSROOT="$HOME/.wkops"

echo "Creating the wkops root folder at $WKOPSROOT"
mkdir -p $WKOPSROOT/bin

# local install
if [ -f "$PWD/wkops" ]; then
  echo "Copying the wkops to $WKOPSROOT"
  cp wkops $WKOPSROOT/
else
  # remote install
  echo "Remote install"
  curl -sS https://raw.githubusercontent.com/serjaum/wkops/master/wkops --output $WKOPSROOT/wkops
fi

chmod +x $WKOPSROOT/wkops

# check path

if [[ $PATH != ?(*:)$WKOPSROOT?(:*) ]]; then
  echo ""
  echo "Now add the line below to your ~/.bashrc, ~/.profile, or ~/.zshrc file to have it automatically sourced upon login: "
  echo "export PATH=~/.wkops:\$PATH"
fi
