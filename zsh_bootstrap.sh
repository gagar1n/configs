#!/bin/bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc
echo 'HISTFILE="$HOME/.zsh_history"' >> ~/.zshrc
echo 'HISTSIZE=10000000' >> ~/.zshrc
echo 'SAVEHIST=10000000' >> ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sed -i '/^ZSH_THEME/c\ZSH_THEME="gentoo"' ~/.zshrc
