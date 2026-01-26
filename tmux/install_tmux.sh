sudo apt-get install tmux

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf
