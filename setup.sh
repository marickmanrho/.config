#!/bin/bash


echo "Install zsh?"
select zsh_yn in "Yes" "No"; do
	case $zsh_yn in
		Yes ) bash ./zsh/install_zsh.sh; break;;
		No ) echo "Skipping"; break;;
	esac
done


echo "Install NeoVim?"
select nv_yn in "Yes" "No"; do
 	case $nv_yn in
 		Yes ) bash ./install_scripts/install_nvim.sh; break;;
 		No ) echo "Skipping"; break;;
	esac
done

echo "Updating .bashrc"
exec "$BASH"
