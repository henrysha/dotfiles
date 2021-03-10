brew install jenv
brew install java
brew install openjdk@8

sudo ln -sfn /usr/local/opt/openjdk@8/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-8.jdk
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# Add these to $PATH
# :/usr/local/opt/openjdk/bin:/usr/local/opt/openjdk@8/bin

# Add these to $CPPFLAGS
# -I/usr/local/opt/openjdk/include -I/usr/local/opt/openjdk@8/include

mkdir -p ~/.jenv/versions
jenv add /Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home
