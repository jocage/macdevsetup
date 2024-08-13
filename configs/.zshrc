if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source $(brew --prefix nvm)/nvm.sh

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	docker
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export LANG='en_US.UTF-8'
export LANGUAGE='en_US:en'
export LC_ALL='en_US.UTF-8'
export TERM=xterm

alias ezh="nvim ~/.zshrc"
alias uzh=". ~/.zshrc"
alias cls="clear"
alias lla="ls -Al"
alias evim='nvim ~/.config/nvim/init.vim'
alias rmd='rm -rf '

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/jocage/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# bun completions
[ -s "/Users/jocage/.bun/_bun" ] && source "/Users/jocage/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
