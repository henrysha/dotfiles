# if [ -d ~/.oh-my-zsh ]; then
#     echo "Removing Existing Oh-my-zsh installation."
#     rm -rf ~/.oh-my-zsh
# fi
# echo "Installing Oh-my-zsh"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "Installing Cask Fonts (Meslo Nerd font and IBM Plex)"
brew tap homebrew/cask-fonts
brew cask install font-meslo-nerd-font
brew cask install font-ibm-plex

echo "Installing fzf"
brew install fzf

echo "Installing fd"
brew install fd

echo "Installing additional configuration for vimrc"
echo "source ~/dotfiles/vim/my_configs.vim" > ~/.vim_runtime/my_configs.vim
git clone --recursive https://github.com/Valloric/YouCompleteMe.git ~/.vim_runtime/my_plugins/YouCompleteMe
~/.vim_runtime/my_plugins/YouCompleteMe/install.py --all

echo "Installing custom zsh theme"
echo "source ~/dotfiles/zsh/theme.sh" >> ~/.zshrc
sed -i '' 's+robbyrussell+powerlevel10k/powerlevel10k+' ~/.zshrc

echo "Enabling oh-my-zsh plugins"
sed -i '' '65i\
export FZF_BASE="/usr/local/Cellar/fzf/0.18.0"' ~/.zshrc
sed -i '' 's/plugins=(git)/plugins=(git thefuck zsh_reload)/' ~/.zshrc

echo "Installing nvm"
if [ -d ~/.nvm ]; then
    echo "Creating ~/.nvm directory"
    mkdir ~/.nvm
fi
brew install nvm

echo "Installing yarn"
brew install yarn

echo "Installing Prettier"
yarn global add prettier

echo "============================"
echo "===== INSTALL COMPLETE ====="
echo "============================"
