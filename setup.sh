#!/bin/bash

echo "Setup git"
select git_yn in "Yes" "No"; do
	case $git_yn in
		Yes ) bash ./git/setup_git.sh; break;;
		No ) echo "Skipping"; break;;
	esac
done

echo "Install zsh?"
select zsh_yn in "Yes" "No"; do
	case $zsh_yn in
		Yes ) bash ./zsh/install_zsh.sh; break;;
		No ) echo "Skipping"; break;;
	esac
done

echo "Install lua language server?"
select lls_yn in "Yes" "No"; do
	case $lls_yn in
		Yes ) bash ./lua_ls/install_lua_ls.sh; break;;
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
