# wsl-dotfiles

Dotfiles for my [Arch Linux](https://www.archlinux.org/) installation on WSL 2.

Note: Arch Linux is **not offically supported on WSL 2**.

## Software used

- [Git](https://git-scm.com)
- [GitHub CLI](https://github.com/cli/cli)
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Vim](https://www.vim.org)
- [Yarn](https://yarnpkg.com)
- [ZSH](http://zsh.sourceforge.net)

## Setup

```bash
# Set up repo
git clone --bare https://github.com/chrisx8/wsl-dotfiles.git ~/.dotfiles
alias dot="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
dot checkout
dot config --local status.showUntrackedFiles no

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"

# Install yay
git clone --depth 1 https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -sir
cd ..
rm -r yay-bin

# Set up Github CLI
gh auth login

# Configure WSL
cat > /etc/wsl.conf <<EOF
[user]
default = $USER
EOF
```
