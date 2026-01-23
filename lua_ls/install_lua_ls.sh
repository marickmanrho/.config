# Install Lua Language Server
echo "Installing Lua Language Server"
echo "Downloading Lua Language Server latest from GitHub"
curl -LO https://github.com/LuaLS/lua-language-server/releases/download/3.17.1/lua-language-server-3.17.1-linux-x64.tar.gz

# echo "Extracting Lua Language Server to usr/bin"
mkdir ~/.local/share/lua-language-server
tar -C ~/.local/share/lua-language-server -xzf lua-language-server-3.17.1-linux-x64.tar.gz
rm lua-language-server-3.17.1-linux-x64.tar.gz
ln -s ~/.local/share/lua-language-server/bin/lua-language-server ~/.local/bin/lua-language-server
echo -e '\n# Add lua-language-server to path\nexport PATH="$PATH:$(pwd)/.local/bin/"' >>  ~/.zshrc
echo "Sucessfully installed Lua Language Server"
