# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dev/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

### Added plugs by pablothedeveloper
#
# powerlevel adds nice theme (4/28/2021)
zplugin ice depth=1; zplugin light romkatv/powerlevel10k

# added zsh-completions with pacman (4/28/2021)
# added zsh-autosuggestions with pacman (4/28/2021)

zplugin ice as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zplugin light sharkdp/bat
# 3/13/2022 I am adding these suggestions
# ==============================

# zsh-autosuggestions
zplugin ice wait"1" lucid atload"!_zsh_autosuggest_start"
zplugin load zsh-users/zsh-autosuggestions
# ==============================
#
#
typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[cursor]='bold'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# added 3 below alias (4/28/2021)
## Colorize the ls output ##
alias ls='ls --color=auto'
## Use a long listing format ##
alias ll='ls -la --color=auto'
## Show hidden files ##
alias la.='ls -d .* --color=auto'
## making ls after cd: https://superuser.com/questions/601480/always-run-a-command-after-another-command
function chpwd() {
  ls
}

# added colors for different file types (4/28/2021)
. "/home/dev/.local/share/lscolors.sh"

# For GOPath
export PATH="$PATH:$HOME/go/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/home/dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/dev/google-cloud-sdk/completion.zsh.inc'; fi

eval $(thefuck --alias)

#3/12/2022 Autosuggestions & fast-syntax-highlighting (found from zplugin repo)
zplugin load zsh-users/zsh-syntax-highlighting
# source to setup on linux terminal: https://stackoverflow.com/questions/43428384/how-to-bind-ctrl-enter-in-zsh
bindkey '	' autosuggest-accept
