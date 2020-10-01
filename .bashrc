# assign NPM_TOKEN (sometimes broken)
NPMRC_FILE=/home/$USER/.npmrc
if test -f "$NPMRC_FILE"; then
  NPMRC_VALUE=$(cat $NPMRC_FILE)
  export NPM_TOKEN=${NPMRC_VALUE:33}
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

v4l2-ctl --set-ctrl saturation=1

export PS1="\[\033[38;5;13m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\][\[$(tput sgr0)\]\[\033[38;5;11m\]\W\[$(tput sgr0)\]]: \[$(tput sgr0)\]"

# add current aws profile in prompt if applicable
if [ -n "${AWS_VAULT+set}" ]; then 
  PS1="\[\e[1;35m\]$AWS_VAULT\[\e[1;37m\]:$PS1"; 
