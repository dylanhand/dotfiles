# Dotfiles

crispy dotfiles for large success.

## Installation

1. Check out this repo into ~/dotfiles
2. `cd ~/dotfiles`
3. `stow .`

Stow will symlink everything in the dotfiles directory so that it will look something like this:

```
.config ⇒ dotfiles/.config
.github ⇒ dotfiles/.github
.p10k.zsh ⇒ dotfiles/.p10k.zsh
.zshrc ⇒ dotfiles/.zshrc
```

### Tmux

[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) must be installed with:

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Then, after launching tmux, plugins can be installed with `<prefix>I`.
