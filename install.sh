if [ -d ~/.vim_runtime ]; then
    echo "Removing Existing Ultimate Vimrc"
    rm -rf ~/.vim_runtime
fi
echo "Installing The Ultimate Vimrc"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "Installing PowerLevel10k Zsh theme"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo "Installing Powerline Fonts"
# clone
git clone https://github.com/powerline/fonts.git --depth=1 powerlinefonts
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf powerlinefonts

echo "Installing Cask Fonts (Meslo Nerd font and IBM Plex)"
brew tap homebrew/cask-fonts
brew install --cask font-meslo-nerd-font
brew install --cask font-ibm-plex

echo "Installing fzf"
brew install fzf

echo "Installing fd"
brew install fd

echo "Installing additional configuration for vimrc"
echo "source ~/dotfiles/vim/my_configs.vim" > ~/.vim_runtime/my_configs.vim
git clone --recursive https://github.com/Valloric/YouCompleteMe.git ~/.vim_runtime/my_plugins/YouCompleteMe
~/.vim_runtime/my_plugins/YouCompleteMe/install.py --all

echo "Installing ack"
brew install ack
git clone https://github.com/mileszs/ack.vim.git ~/.vim_runtime/my_plugins/ack.vim

echo "Installing custom zsh theme"
echo "source ~/dotfiles/zsh/theme.sh" >> ~/.zshrc
sed -i '' 's+robbyrussell+powerlevel10k/powerlevel10k+' ~/.zshrc

echo "installing zsh-z"
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

echo "Enabling oh-my-zsh plugins"
sed -i '' '65i\
export FZF_BASE="/usr/local/Cellar/fzf/0.18.0"' ~/.zshrc
sed -i '' 's/plugins=(git)/plugins=(git thefuck zsh_reload zsh-z)/' ~/.zshrc

echo "Installing nvm"
if [ -d ~/.nvm ]; then
    echo "Creating ~/.nvm directory"
    mkdir ~/.nvm
fi
brew install nvm

echo "Installing Node"
nvm install latest

echo "Installing yarn"
npm install -g yarn

echo "Installing Prettier"
yarn global add prettier

echo "============================"
echo "===== INSTALL COMPLETE ====="
echo "============================"
