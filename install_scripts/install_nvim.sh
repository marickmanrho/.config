# Install neovim
echo "Installing NeoVim"
echo "Downloading NeoVim latest from GitHub"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

echo "Removing existing installation"
sudo rm -rf /opt/nvim-linux-x86_64

echo "Extracting NeoVim to opt/nvim and adding to path"
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo rm nvim-linux-x86_64.tar.gz
sudo echo -e '\n# Add NeoVim to path\nexport PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >>  ~/.bashrc
echo "Sucessfully installed NeoVim"
