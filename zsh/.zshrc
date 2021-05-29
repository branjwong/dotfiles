# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/branjwong/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set bullet-train theme options
BULLETTRAIN_PROMPT_ORDER=(
  time
  status
  context
  dir
  screen
  virtualenv
  git
)
BULLETTRAIN_TIME_12HR=true
BULLETTRAIN_CONTEXT_DEFAULT_USER="branjwong"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration


# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Setup fzf shortcuts :: https://github.com/junegunn/fzf.vim
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}


# Setup direnv :: https://direnv.net/
eval "$(direnv hook zsh)"

# Setup hledger
export LEDGER_FILE="${HOME}/Git/hledger/.hledger.journal"

# Setup programs installed by Stack
# e.g. hledger
export PATH=${HOME}/.local/bin:$PATH

# Setup programs installed by npm
# e.g. elm
export PATH=${HOME}/.npm-packages/bin:$PATH
