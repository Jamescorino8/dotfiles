# Dotfile Setup

#### 1. Install Apple's Command Line Tools, which are prequisites for Git and Homebrew
```
xcode-select --install
```

#### 2. Clone repo into new hidden directory
```
git clone git@github.com/jamescorino8/dotfiles.git ~/.dotfiles
```

#### 3. Create symlinks in the Home directory to the real files in repo.
```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

#### 4. Install Homebrew, dollowed by the software listed i the Brewfile
```
# Install Homebrew
/bin/bash -c "$(curl -fsSL
https://raw.githubusercontent.com/Homebrew/installHEAD/install.sh)"

# Pass in Brewfile location
brew bundle --file ~/.dotfiles/Brewfile
```

