# Custom Dot Files for my settings

* [Dependencies](#dependencies)
* [Installation](#installation)
    * [Manual](#manual)
---
## Dependencies
* [The Ultimate vimrc](https://github.com/amix/vimrc)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [powerlevel10k](https://github.com/romkatv/powerlevel10k)
* [Powerline fonts](https://github.com/powerline/fonts)
* [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
* fzf 0.18.0

## Installation
### Font Setup
Go to Terminal / iTerm setting and select Nerd Font as default font or non-ascii font after installation.
This is necessary for the powerlevel10k theme.

### Using `install.sh`
Using the script to install setup will be convenient, but removes previous settings.

Back up files if necessary.
```zsh
git clone https://github.com/swha0901/dotfiles.git dotfiles
sh dotfiles/install.sh
```
### Manual
Install oh-my-zsh
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
Install powerlevel10k
```zsh
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```
Install Powerline Fonts
```zsh
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```
Install any font wanted using Homebrew.
* I installed Meslo series for my preference. 
* At least one nerd-font is required for the powerlevel10k theme.
* IBM Plex is used in the vim.
```zsh
brew tap homebrew/cask-fonts
brew cask install font-meslo-nerd-font
brew cask install font-ibm-plex
```
Install The Ultimate Vimrc
```zsh
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```
Copy the `my_configs.vim` to the `.vim_runtime` folder
* *CAUTION* : this will overwrite your current `my_configs.vim` file if you already have one. 
```zsh
cp vim/my_configs.vim ~/.vim_runtime/
```
Add the contents of custom zshrc file to `~/.zshrc`
```zsh
cat zsh/theme.sh >> ~/.zshrc
sed -i '' 's+robbyrussell+powerlevel10k/powerlevel10k+' ~/.zshrc
sed -i '' '66i\
export FZF_BASE="/usr/local/Cellar/fzf/0.18.0"' ~/.zshrc
sed -i '' 's/plugins=(git)/plugins=(git rbenv node vscode bundler fzf battery thefuck zsh_reload)/' ~/.zshrc
```
Install fzf
```zsh
brew install fzf
```