#!/bin/bash

abort() {
  printf "%s\n" "$@"
  exit 1
}


# Check if bash is present
if [ -z "${BASH_VERSION:-}" ]
then
  abort "Bash is required to interpret this script."
fi

# First check OS.
OS="$(uname)"
if [[ "${OS}" != "Darwin" ]]
then
  abort "Easy RN is only supported on macOS."
fi

# TODO: Check if Xcode has been installed
# TODO: Check is Xcode command line tools are installed


# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# installing xcpretty
sudo gem install xcpretty

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# post setup nvm and android SDK location into zshrc
touch "$HOME"/.zshrc;
echo "export NVM_DIR=\"\$HOME/.nvm\"" >> "$HOME"/.zshrc;
echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && . \"\$NVM_DIR/nvm.sh\"  # This loads nvm" >> "$HOME"/.zshrc;
echo "" >> "$HOME"/.zshrc;

echo "# export android SDK location" >> "$HOME"/.zshrc;
echo "export ANDROID_HOME=\$HOME/Library/Android/sdk" >> "$HOME"/.zshrc;
echo "export PATH=\$PATH:\$ANDROID_HOME/emulator" >> "$HOME"/.zshrc;
echo "export PATH=\$PATH:\$ANDROID_HOME/tools" >> "$HOME"/.zshrc;
echo "export PATH=\$PATH:\$ANDROID_HOME/tools/bin" >> "$HOME"/.zshrc;
echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> "$HOME"/.zshrc;
source "$HOME"/.zshrc; nvm ls-remote

# install node lts via nvm ( nvm install --lts )
nvm install --lts

# install yarn ( npm install -g yarn )
npm install -g yarn

# install RN (brew install watchman)
brew install watchman

# brew install carthage
brew install carthage

# brew install cocoapods
brew install cocoapods

# brew tap wix/brew; brew install applesimutils
brew tap wix/brew; brew install applesimutils

# brew tap homebrew/cask
brew tap homebrew/cask;
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8;
brew install android-studio --cask;
brew install android-platform-tools --cask;
brew install google-chrome --cask ;
brew install visual-studio-code --cask;
brew install webstorm --cask;
brew install reactotron --cask;
brew install slack --cask;
brew install intel-haxm --cask;
brew install charles --cask

# npx envinfo
npx envinfo

# generate an SSH key and display public key
if [ ! -f "$HOME/.ssh/id_rsa" ]
then
  ssh-keygen -t rsa -b 2048 -C "$(whoami)'s RSA keypair" -f "$HOME"/.ssh/id_rsa -P '';
  pbcopy < "$HOME"/.ssh/id_rsa.pub;
  cat "$HOME"/.ssh/id_rsa.pub;
fi
