export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-nvm)

alias ls='eza -a --icons'
# Matrix effect (requires cmatrix)
alias matrix='cmatrix -b -u 2'

# Fun greeting with random color
function greet() {
  local colors=(31 32 33 34 35 36)
  local color=${colors[$RANDOM % ${#colors[@]} + 1]}
  echo -e "\033[1;${color}mWelcome, Darkhan! Have a great day! 🌈\033[0m"
}
greet

if [[ $- == *i* ]]; then
  fastfetch
fi
