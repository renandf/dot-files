#pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

#   Set VirtualEnvWrapper Settings
#   ------------------------------------------------------------
    export WORKON_HOME=~/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
    source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

export NVM_DIR="/Users/rcastro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
