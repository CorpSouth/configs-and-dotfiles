######################################################
#Conditional Aliases, May Not Apply to Your Situation#
######################################################


if grep -qs rpm-ostree /usr/bin/rpm-ostree
    alias update='rpm-ostree update'
else
    alias update='sudo dnf update'
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

alias alive='rpm-ostree install --apply-live'
alias cleanup='rpm-ostree cleanup -bmpr'
alias install='rpm-ostree install'
alias roremove='rpm-ostree override remove'
alias roreset='rpm-ostree override reset'
alias pin='sudo ostree admin pin'
alias rebase='rpm-ostree rebase'
alias rollback='rpm-ostree rollback'
alias stati='rpm-ostree status'
alias uninstall='rpm-ostree uninstall'

###################
#Responsible Usage#
###################

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i --preserve-root'
