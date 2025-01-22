if [ -d ~/.oh-my-zsh ]; then
    echo "Removing Existing Oh-my-zsh installation."
    rm -rf ~/.oh-my-zsh
fi
echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

./install.sh
