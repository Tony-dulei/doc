#Setup
#export PATH=$PATH:/Users/lei.du/Tools/gradle-1.5/bin

# alias
alias ll="ls -alrt"
alias cdw="cd /Users/lei.du/Documents/workspace-tony;pwd"

# alias for git commands
alias gitclean='git branch --merged develop | grep -v "\* develop" | xargs -n 1
git branch -d'
alias gitclone="git clone "
alias gitpush="git push origin "

# git remote add upstream
alias gitupdate="git fetch upstream;git checkout master;git merge
upstream/master"

# git tag -a 20180213 -m "backup for 20180213"

# function
function gitcommit() {
    git add --all
    git commit -a -m "$1"
    git push origin master
}
