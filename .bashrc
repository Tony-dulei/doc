#Setup
#export PATH=$PATH:/Users/lei.du/Tools/gradle-1.5/bin 

# alias
alias ll="ls -alrt"
alias cdw="cd /Users/lei.du/Documents/workspace-tony;pwd"
alias gitclean='git branch --merged develop | grep -v "\* develop" | xargs -n 1
git branch -d'
alias gitclone="git clone "
alias gitpush="git push origin "
alias gitupdate="git fetch upstream;git checkout master;git merge upstream/master"


# function
function gitcommit() {
    git add --all
    git commit -a -m "$1"
    git push origin master
}
