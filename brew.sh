echo "Installing Cask Fonts (Meslo Nerd font and IBM Plex)"
brew tap homebrew/cask-fonts
brew install font-meslo-lg-nerd-font
brew install font-ibm-plex

echo "Installing fzf"
brew install fzf

echo "Installing fd"
brew install fd

echo "Installing thefuck"
brew install thefuck

echo "Installing ack"
brew install ack
git clone https://github.com/mileszs/ack.vim.git ~/.vim_runtime/my_plugins/ack.vim

echo "Installing nvm"
if [ -d ~/.nvm ]; then
    echo "Creating ~/.nvm directory"
    mkdir ~/.nvm
fi
brew install nvm

echo "Installing Node"
nvm install --lts

echo "Installing yarn"
npm install -g yarn

echo "Installing Prettier"
yarn global add prettier

echo "setup fzf key binding"
$(brew --prefix)/opt/fzf/install

