if ! command -v tmux 2>&1 >/dev/null
then
  echo "Tmux not installed. Installing tmux"
  brew install tmux
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if ! command -v jq 2>&1 >/dev/null
then
  echo "jq not installed. Installing jq"
  brew install jq
fi

echo "source-file ~/dotfiles/tmux/tmux.conf" > ~/.tmux.conf

