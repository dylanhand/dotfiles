# Uncomment this and `zprof` at end of file to profile slow start up
# zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias go="jump" # expected bashmarks behavior
alias srv="bundle exec jekyll serve --livereload"
alias ddd="deleteDerivedData"
alias c="clear"

# TODO: move this to separate file
deleteDerivedData() {
  echo "Deleting Derived Data..."
  rm -rf "$HOME/Library/Developer/Xcode/DerivedData/"
  echo "Successfully deleted Derived Data folder"
}

# `cd` by entering name of dir
setopt autocd

# Case insensitive tab completion
autoload -Uz compinit && compinit

# Fuzzy matching. Will match parts of filenames, not just beginning of filenames.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*' 'r:|?=** m:{a-z\-}={A-Z\_}'

# Highlight tab completion options while cycling
zstyle ':completion:*' menu select

# Files
alias ls="lsd"
alias l="lsd -l"
alias la="lsd -la"
alias o='open'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Empty commit
alias gcame="git commit --allow-empty -m"
alias gd="git diff"

alias lg="lazygit"

alias ff="aerospace list-windows --all | fzf --bind 'enter:execute(bash -c \"aerospace focus --window-id {1}\")+abort'"

# Editor
EDITOR=nvim
alias vim=nvim
alias v=nvim

export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"

export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

export PATH="$HOME/.jenv/bin:$PATH"

# Lazy load jenv only when needed
jenv() {
  unfunction jenv
  eval "$(command jenv init - zsh)"
  jenv "$@"
}

export PATH="/usr/local/sbin:$PATH"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

# Init fzf
source <(fzf --zsh)

# Init zoxide
eval "$(zoxide init --cmd j zsh)"

eval "$(rbenv init - --no-rehash zsh)"

# Terminal vim mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_CURSOR_STYLE_ENABLED=false

# Terminal syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Terminal autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# uncomment with line at top for profiling
# zprof
