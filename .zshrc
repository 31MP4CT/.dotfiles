# If you come from bash you might have to change your $PATH.
  export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/pepe/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
 ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "bira" "bureau" "dogenpunk" "crunch" "darkblood" "gnzh" "lambda" "muse" "pygmalion" "refined" )

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
 COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
  extract
  docker
  yum
  vim-interaction
  virtualenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example Aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# if cowsay and fortune are installed
value=$(( $RANDOM % 2 ))
if [ -x /usr/games/cowsay -a -x /usr/games/fortune -a -x /usr/bin/figlet ]; then
    
    if [ $value -eq 0 ]; then 
        fortune | cowsay | lolcat
    else
        figlet -f shadow BloodyPep | lolcat
    fi
fi

# Handy aliases exported from .bashrc
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias mvni='mvn clean install'
alias mvnint='mvn clean install -nsu -DskipTests -Dcheckstyle.skip=true -Dmaven.javadoc.skip=true'

alias weather='curl wttr.in'
alias set_display='bash ~/RandomScripts/set_display.sh'
alias free_swp='bash ~/RandomScripts/free_swp.sh'
alias DOOM='bash ~/RandomScripts/RunDoomd.sh'
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

cheat.sh()
{
     # replace native with the color scheme you want
     # curl cheat.sh/:styles-demo to show the available color schemes
     curl -s cheat.sh/"$1"?style=native
}
 
_cheatsh_complete_cheatsh() 
{
     local cur opts #prev
     _get_comp_words_by_ref -n : cur
 
     COMPREPLY=()
     prev="${COMP_WORDS[COMP_CWORD-1]}"
     opts="$(curl -s cheat.sh/:list)"
 
     if [[ "${cur}" == ch ]] ; then
 		COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
 		__ltrim_colon_completions "$cur"
        return 0
    fi  
}
 
compdef _cheatsh_complete_cheatsh cheat.sh



if [ -f '/home/pepe/bin/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/pepe/bin/google-cloud-sdk/completion.zsh.inc'; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pepe/bin/google-cloud-sdk/path.zsh.inc' ]; then source '/home/pepe/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pepe/bin/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/pepe/bin/google-cloud-sdk/completion.zsh.inc'; fi

