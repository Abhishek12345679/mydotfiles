# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# username
PROMPT='%n~$ '


# android
#export ANDROID_HOME=/Users/voldy/Library/Android/sdk
#export PATH=/Users/voldy/Library/Android/sdk/platform-tools:$PATH

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# bun
export BUN_INSTALL="/Users/voldy/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# general aliases
alias ..="cd .."
alias clients="cd ~/dev/Clients/"
alias zr=". ~/.zshrc"
alias z="vim ~/.zshrc"
alias nf="neofetch"
alias nfconf="vim ~/.config/neofetch/config.conf"
alias c="clear"
alias gc="vim ~/.gitconfig"
alias gr="source ~/.gitconfig"
alias t="touch"

#python

alias python="python3"
alias pip="pip3"

#github
alias g="git"


# cronjobs
#SHELL=/usr/bin/zsh
#30 05 * * 1-5 exec /opt/homebrew/bin/python3 /Users/voldy/Dev/AmityDayScheduleScript/script.py



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/bison/lib"
eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh