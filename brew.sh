echo "Installing brew tab completion"
brew install brew-cask-completion

# echo "install vim"
# brew install vim

echo "install gh cli"
brew install gh

echo "Installing Cask Fonts (Meslo Nerd font and IBM Plex)"
brew install --cask font-meslo-lg-nerd-fon
brew install --cask font-ibm-plex
brew install --cask font-ubuntu-mono
brew install --cask font-d2coding

echo "Installing fzf"
brew install fzf

echo "Installing fd"
brew install fd

echo "Installing thefuck"
brew install thefuck

echo "Installing ack"
brew install ack
git clone https://github.com/mileszs/ack.vim.git ~/.vim_runtime/my_plugins/ack.vim

# echo "Installing nvm"
# if [ -d ~/.nvm ]; then
#     echo "Creating ~/.nvm directory"
#     mkdir ~/.nvm
# fi
# brew install nvm

echo "setup fzf key binding"
$(brew --prefix)/opt/fzf/install

# echo "lastpass cli"
# brew install lastpass-cli

echo "Installing Cmake"
brew install cmake

echo "install volta"
brew install volta
