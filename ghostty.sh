if ! command -v ghostty 2>&1 >/dev/null
then
  echo "Installing Ghostty from Homebrew"

  brew install --cask ghostty
fi

if ! [ -d '~/.config' ]
then
  cd ~
  mkdir .config
fi

if ! [ -d '~/.config/ghostty' ]
then
  cd ~/.config
  mkdir ghostty
fi

if ! [ -e '~/.config/ghostty/config' ]
then
  touch ~/.config/ghostty/config
fi

echo 'config-file = ../../dotfiles/ghostty/config' > ~/.config/ghostty/config

