if ! command -v tmux 2>&1 >/dev/null
then
  echo "Tmux not installed. Installing tmux"
  brew install tmux
fi

if ! [ -d ~/.tmux/plugins/tpm ]
then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if ! command -v jq 2>&1 >/dev/null
then
  echo "jq not installed. Installing jq"
  brew install jq
fi

if ! command -v cmake 2>&1 >/dev/null
then
  echo "cmake not installed. Installing cmake"
  brew install cmake
fi

echo "source-file ~/dotfiles/tmux/tmux.conf" > ~/.tmux.conf

if ! [ -d ~/.config/tmux-powerline ]
then
  git clone git@github.com:henrysha/tmux-powerline.git ~/.config/tmux-powerline
else
  cd ~/.config/tmux-powerline
  if ! git rev-parse --is-inside-work-tree 2>&1 >/dev/null
  then
    git clone git@github.com:henrysha/tmux-powerline.git .
  fi
fi

