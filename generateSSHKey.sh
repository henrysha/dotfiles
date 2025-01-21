ssh-keygen -t ed25519 -C 'swh0901@gmail.com'
pbcopy < ~/.ssh/id_ed25519.pub

eval "$(ssh-agent -s)"
echo "Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519" > ~/.ssh/config

ssh-add --apple-use-keychain ~/.ssh/id_ed25519

