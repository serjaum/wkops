#!/bin/bash

WKOPSROOT="$HOME/.wkops/"

echo "Creating the wkops root folder at $WKOPSROOT"
mkdir -p $WKOPSROOT/bin

# local install
echo "Copying the wkops to $WKOPSROOT"
cp wkops $WKOPSROOT

# check path

if [[ $PATH != ?(*:)$WKOPSROOT?(:*) ]]; then
  echo ""
  echo "Now add the line below to your ~/.bashrc, ~/.profile, or ~/.zshrc file to have it automatically sourced upon login: "
  echo "export PATH=~/.wkops:\$PATH"
fi
