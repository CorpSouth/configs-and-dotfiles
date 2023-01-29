######################################################
#Conditional Aliases, May Not Apply to Your Situation#
######################################################

# Install
if type -q rpm-ostree
    alias install='rpm-ostree install'

else if type -q dnf 
    alias install='sudo dnf install'

else if type -q apt
    alias install='sudo apt install'
end

# Uninstall
if type -q rpm-ostree
    alias uninstall='rpm-ostree uninstall'

else if type -q dnf
    alias uninstall='sudo dnf remove'

else if type -q apt
    alias uninstall='sudo apt remove --purge'
end

# Updates
if type -q rpm-ostree
    alias update='rpm-ostree update'

else if type -q dnf
    alias update='sudo dnf update'

else if type -q apt
    alias update='sudo apt update'
end 

#####
#Git#
#####

alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

########
#Ostree#
########

alias aplive='rpm-ostree install --apply-live'
alias cleanup='rpm-ostree cleanup -bmpr'
alias orremove='rpm-ostree override remove'
alias orreset='rpm-ostree override reset'
alias pin='sudo ostree admin pin'
alias rebase='rpm-ostree rebase'
alias rollback='rpm-ostree rollback'
alias stati='rpm-ostree status'

###################
#Responsible Usage#
###################

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i --preserve-root'
