# -------------------------
# This file should not contain any slow instructions as this file is always sourced.
# .zshenv should not contain commands that produce output or assume the shell is attached to a tty.
# $PATH, $EDITOR, and $PAGER are often set in .zshenv.
# -------------------------

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
#export TERM=xterm-256color

export VISUAL=nvim
export EDITOR="$VISUAL"

source $HOME/.secret

# Opt out from homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# Change fzf prefix
export FZF_COMPLETION_TRIGGER=','

# Add go bins to path
export PATH="$PATH:$HOME/go/bin"
