#!/bin/bash

echo "Install NeoVim?"
select yn in "Yes" "No"; do
 	case $yn in
 		Yes ) bash ./install_scripts/install_nvim.sh; break;;
 		No ) echo "Skipping"; break;;
	esac
done

echo "Updating .bashrc"
exec "$BASH"
