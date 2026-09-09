export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# ^[[F^[[H^
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3" delete-char

# Start ssh-agent if one isn't already running.
if [[ "$SSH_AUTH_SOCK" || "$SSH_AGENT_PID" ]]; then
  echo "SSH-AGENT already running"
else
  eval "$(ssh-agent -s)"
fi

# Append to history file incrementally
setopt APPEND_HISTORY

# Need SAVEHIST to save to disk. HISTSIZE is for RAM.
HISTFILE=~/.zsh_history
HISTSIZE=100
SAVEHIST=100

# Remove dups
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# Remove audio beep
unsetopt LIST_BEEP

# Timestamps
setopt EXTENDED_HISTORY
alias history='history -E'

# Auto-suggestions and highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Oh my posh. Sometimes zsh has problems with ANSI chars and so this is better than
# straight eval.
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/catppuccin_mocha.omp.json)"
fi
