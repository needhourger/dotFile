# Zinit init
source /usr/share/zinit/zinit.zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


####
# oh-my-zsh libs
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::correction.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::grep.zsh
zinit snippet OMZL::nvm.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::git.zsh

####
# oh-my-zsh plugins
zinit snippet OMZP::archlinux
zinit snippet OMZP::sudo
zinit snippet OMZP::cp
zinit snippet OMZP::vscode
zinit snippet OMZP::encode64
zinit snippet OMZP::npm
zinit ice atload"unalias grv"
zinit snippet OMZP::git
zinit snippet OMZP::git-commit
zinit snippet OMZP::node
zinit snippet OMZP::docker
zinit snippet OMZP::docker-compose
zinit snippet OMZP::extract
zinit snippet OMZP::pip
zinit snippet OMZP::yarn
zinit snippet OMZP::z
zinit snippet OMZP::golang
zinit snippet OMZP::kitty
zinit snippet OMZP::qrcode
zinit snippet OMZP::shell-proxy
zinit snippet OMZP::web-search
zinit ice wait lucid
zinit snippet OMZP::thefuck
zinit ice wait lucid
zinit snippet OMZP::nvm

# Theme
zinit ice depth="1"
zinit light romkatv/powerlevel10k

# Plugins

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light marlonrichert/zsh-autocomplete
zinit light arzzen/calc.plugin.zsh
zinit light aubreypwd/zsh-plugin-download
zinit light oz/safe-paste
zinit light wbingli/zsh-wakatime

# Yi Yan
# zinit ice lucid wait=0
# zinit light derry96/hitokoto


# Completion
autoload -Uz compinit
compinit

# Binding Keys
bindkey '^I' menu-complete


# Alias
alias vim="nvim"
alias ls="ls --color=auto"
alias ll="ls -lahF --color --time-style=long-iso"
alias gitc='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias neofetch='neofetch | lolcat'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Nvm node environment
source /usr/share/nvm/init-nvm.sh

# Miniconda3
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Environment variable
export PATH=$PATH:/home/yuuki/.go/bin
