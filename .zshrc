# -------------------------
# .zshrc is sourced in interactive shells. It should contain commands to set up
# aliases, functions, options, key bindings, etc.
# -------------------------

# Path to your oh-my-zsh installation.
export ZSH="/Users/philiplarsson/.oh-my-zsh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

if [[ -z "${EMACS}" ]]; then
  ZSH_THEME="minimal"
else
  # we are running inside an emacs instance
  ZSH_THEME="minimal"
fi


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
plugins=(zsh-autosuggestions zsh-syntax-highlighting colored-man-pages fzf-docker gitignore)

source $ZSH/oh-my-zsh.sh

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User configuration
source $HOME/.aliases

# Upload notes
function ggn() {
  echo -e "\e[1;32mGo Go Notes! \e[0m\n"

  # Copy files
  rm -rf /Users/philiplarsson/Dropbox/code/Go/note-converter/notes
  rm -rf /Users/philiplarsson/Dropbox/code/Go/note-converter/output
  cp -r /Users/philiplarsson/Dropbox/Notes-online /Users/philiplarsson/Dropbox/code/Go/note-converter/notes

  # Convert
  /Users/philiplarsson/Dropbox/code/Go/note-converter/main --input notes --output /Users/philiplarsson/Dropbox/code/Go/note-converter/output > /dev/null

  # Push to repo
  cd /Users/philiplarsson/Dropbox/code/Go/note-converter/
  git add .
  git commit -am "Update notes 📓"
  git push

  # Move back to starting repo
  cd "$OLDPWD"

  echo -e "\n\e[1;32mDone! \e[0m"
}

# Open current git project in browser
function open-gh() {
  open $(git config remote.origin.url | sed "s/git@\(.*\):\(.*\).git/https:\/\/\1\/\2/")/$1$2
}
