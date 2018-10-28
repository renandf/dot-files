# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# Load .bash_secrets if it exists
test -f ~/.bash_secrets && source ~/.bash_secrets

# Load .git-completion if it exists
test -f ~/.git-completion.bash && . $_

# Styling of terminal based on https://github.com/mathiasbynens/dotfiles
for file in ~/.{path,bash_prompt}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
