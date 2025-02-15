# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH=${PATH}:/usr/local/mysql/bin

# Path to your oh-my-zsh installation.
export PATH=$PATH:/usr/local/share/dotnet/dotnet

# export PATH=$HOME/.dotnet/tools:$PATH
export ZSH="/Users/sushibot/.oh-my-zsh"

export EDITOR="/usr/local/bin/nvim"

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/sushibot/.bun/_bun" ] && source "/Users/sushibot/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/sushibot/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

ZSH_THEME="af-magic"

# pyenv configuration
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

ENABLE_CORRECTION="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git brew nvm zsh-autosuggestions web-search golang bun aws)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

zshconfig="mate ~/.zshrc"
if [ -f ~/.aliases/system.sh ]; then
  source ~/.aliases/system.sh
fi

eval "$(starship init zsh)"


