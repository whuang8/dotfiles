# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/whuang/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="honukai"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
export PGHOST=localhost

# MAMP
alias msql="/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot"

# Github
alias add="git add ."
alias commit="git commit -m"
alias status="git status"
alias log="git log"
alias gtfo="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"

# Rails aliases
alias bebr="bundle exec bin/rake"

# Junit
export JUNIT_HOME="$HOME/Java/JUnit"
export PATH="$PATH:$JUNIT_HOME"
export CLASSPATH="$CLASSPATH:$JUNIT_HOME/junit-4.12.jar:$JUNIT_HOME/hamcrest-core-1.3.jar"
alias junit="java org.junit.runner.JUnitCore"

# Swift
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"

# School
export PATH="/usr/local/p/versions/python:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/whuang/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/whuang/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/whuang/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/whuang/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export EDITOR="/usr/bin/vim"

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

alias vim='/usr/local/Cellar/vim/8.2.0200/bin/vim'
alias tilt='/usr/local/bin/tilt'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"
export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

export PATH="$PATH:$HOME/go/bin"
export GIT_DUET_CO_AUTHORED_BY=1

export PATH="$PATH:/Users/whuang/Library/Python/2.7/bin:"
export PATH="$PATH:/Users/whuang/Library/protoc-3.12.1-osx-x86_64/bin:"

# K8s
alias k="kubectl"
