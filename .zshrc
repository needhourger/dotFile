# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zinit init
source /usr/share/zinit/zinit.zsh

# Theme
zinit ice depth="1"
zinit light romkatv/powerlevel10k

# Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zdharma-continuum/history-search-multi-word
zinit light arzzen/calc.plugin.zsh
zinit light zpm-zsh/clipboard
zinit light aubreypwd/zsh-plugin-download
zinit light oz/safe-paste
zinit light wbingli/zsh-wakatime
zinit light marlonrichert/zsh-autocomplete
# Yi Yan
zinit ice lucid wait=0
zinit light derry96/hitokoto
# oh-my-zsh plugins
zinit snippet OMZP::archlinux
zinit snippet OMZP::sudo
zinit snippet OMZP::cp
zinit snippet OMZP::vscode
zinit snippet OMZP::encode64
zinit snippet OMZP::npm
zinit snippet OMZP::git
zinit snippet OMZP::node
zinit ice svn; zinit snippet OMZP::nvm
zinit ice svn; zinit snippet OMZP::docker
zinit ice svn; zinit snippet OMZP::docker-compose
zinit ice svn; zinit snippet OMZP::extract
zinit ice svn; zinit snippet OMZP::pip
zinit ice svn; zinit snippet OMZP::yarn
zinit ice svn; zinit snippet OMZP::z
zinit ice svn; zinit snippet OMZP::shell-proxy
# oh-my-zsh libs
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/git.zsh

# Completion
autoload -Uz compinit
compinit


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
