# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# Load .bash_secrets if it exists
test -f ~/.bash_secrets && source ~/.bash_secrets

# Load .git-completion if it exists
test -f ~/.git-completion.bash && . ~/.git-completion.bash

# Styling of terminal based on https://github.com/mathiasbynens/dotfiles
for file in ~/.{path,bash_prompt}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
