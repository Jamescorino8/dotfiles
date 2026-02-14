# Dotfile Setup

#### 1. Install Apple's Command Line Tools (prequisites for Git and Homebrew)
```
xcode-select --install
```

#### 2. Clone repo into new directory
```
git clone git@github.com/jamescorino8/dotfiles.git ~/.dotfiles
```

#### 3. Create symlinks in the Home directory to the real files in repo.
```
# Zsh
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

# Git
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

# Neovim
mkdir -p ~/.config
ln -sf ~/.dotfiles/nvim ~/.config/nvim

# Ghostty
mkdir -p ~/.config/ghostty
ln -sf ~/.dotfiles/ghostty/ghostty.toml ~/.config/ghostty/ghostty.toml

# Oh My Posh
ln -sf ~/.dotfiles/jamescorino8.omp.yaml ~/.config/oh-my-posh/jamescorino8.omp.yaml
```

#### 4. Install Homebrew, then use it to install all the apps and tools specified in the Brewfile.
```
# Install Homebrew
/bin/bash -c "$(curl -fsSL
https://raw.githubusercontent.com/Homebrew/installHEAD/install.sh)"

# Pass in Brewfile location
brew bundle --file ~/.dotfiles/Brewfile
```

