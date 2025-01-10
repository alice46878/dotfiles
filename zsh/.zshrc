# set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# source zinit
source "${ZINIT_HOME}/zinit.zsh"

# plugins

# syntax-highlighting
zinit light zsh-users/zsh-syntax-highlighting

# completions
zinit light zsh-users/zsh-completions
# load completions
autoload -U compinit && compinit

# auto suggestions
zinit light zsh-users/zsh-autosuggestions


#History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase 
setopt appendhistory 
setopt sharehistory 
setopt hist_ignore_space 
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups 
setopt hist_find_no_dups 



# starship 
eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
