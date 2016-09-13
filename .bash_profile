source ~/.profile



# Always show files in a certain way
alias ls='ls -laG'



# Show or hide hidden files in OS X finder
alias hiddenshow='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hiddenhide='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'



# Add my own scriptis to path
export PATH="$PATH:~/Scripts"



# Git branch in prompt.
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "



# Git autocomplete (be sure to have .git-completion.bash in your home directory)
test -f ~/.git-completion.bash && . $_



# Add Tab-completion for SSH host aliases
# http://www.commandlinefu.com/commands/view/9086/ssh-autocomplete-based-on-.sshconfig
complete -o default -o nospace -W "$(grep -i -e '^host ' ~/.ssh/config | awk '{print substr($0, index($0,$2))}' ORS=' ')" ssh scp sftp



# Use MAMP version of PHP
# http://stackoverflow.com/questions/4145667/how-to-override-the-path-of-php-to-use-the-mamp-path/10653443#10653443
#PHP_VERSION=`ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
#export PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH

# Export MAMP MySQL executables as functions
# Makes them usable from within shell scripts (unlike an alias)
#mysql() {
#    /Applications/MAMP/Library/bin/mysql "$@"
#}
#mysqladmin() {
#    /Applications/MAMP/Library/bin/mysqladmin "$@"
#}
#export -f mysql
#export -f mysqladmin

export NVM_DIR="/Users/000494/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
