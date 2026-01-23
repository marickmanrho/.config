# Install zsh

echo "Installing zsh"
sudo apt-get install zsh

echo "Making zsh default shell"
chsh -s /usr/bin/zsh

echo "Making dynamic links to config files"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -s ${BASEDIR}/zshrc.file ~/.zshrc

mkdir -p "${BASEDIR}/zsh"
ln -s ${BASEDIR} ~/.zsh

