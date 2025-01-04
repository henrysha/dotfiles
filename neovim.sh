echo "Installing Neovim"
brew install neovim

echo "Installing Hack Nerd Font"
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

echo "Installing the nvim config"
git clone https://github.com/henrysha/nvim-config.git ~/.config/nvim

echo "Installing lazygit"
brew install lazygit

echo "Installing ripgrep for the live grep of Telescope"
brew install ripgrep

echo "Installing Glow for Markdown preview"
brew install glow

echo "Adding the vim alias for neovim to zshrc"
echo "alias vim=nvim" >> ~/.zshrc
