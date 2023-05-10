# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gaoruilian/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    z
    cp
    git
    extract
    zsh-syntax-highlighting
    zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias
alias pc=proxychains4
alias ra=ranger
alias te=tree
alias v=vim
alias f=fzf
alias scrcpy="ADB=~/tools/android-platform-tools/platform-tools/adb scrcpy"

# autojump
[[ -s /home/${USER}/.autojump/etc/profile.d/autojump.sh  ]] && source /home/${USER}/.autojump/etc/profile.d/autojump.sh

export PATH=/usr/local/lib/:$PATH
export PATH=/usr/local/vim/bin/:$PATH
export PATH=/usr/local/git/bin/:$PATH
export PATH=/home/${USER}/tools/android-platform-tools/platform-tools:$PATH
export PATH=~/.local/bin:$PATH

export EDITOR="/usr/bin/vim"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_PRODUCT_OUT=~/Cauchy-Falcon/lagvm/LINUX/android/out/target/product/falcon/

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

#export FZF_DEFAULT_COMMAND="fd --exclude={.repo,.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"

alias xc="xclip -selection c"
alias v='vim "$(fzf --reverse --height 35%)"'
alias c='cd "$(fzf --reverse --height 35%)"'

export DISPLAY=:1

# NIO
alias tty0="sudo minicom -D /dev/ttyUSB0"
alias tty1="sudo minicom -D /dev/ttyUSB1"
alias tty2="sudo minicom -D /dev/ttyUSB2"
alias tty3="sudo minicom -D /dev/ttyUSB3"
alias tty4="sudo minicom -D /dev/ttyUSB4"
alias tty5="sudo minicom -D /dev/ttyUSB5"
alias tio0="tio /dev/serial/by-id/usb-FTDI_Quad_RS232-HS-if00-port0"
alias tio1="tio /dev/serial/by-id/usb-FTDI_Quad_RS232-HS-if01-port0"
alias tio2="tio /dev/serial/by-id/usb-FTDI_Quad_RS232-HS-if02-port0"
alias tio3="tio /dev/serial/by-id/usb-FTDI_Quad_RS232-HS-if03-port0"
# JFrog
export artifactory_username=ruilian.gao
export artifactory_password=AKCp8kqgP8uBUewCZxE6fp9dcYkzMpVzkU9xFPAUdPQ2ghdYHitnKit5sk84WeHQyhorN3PcL

