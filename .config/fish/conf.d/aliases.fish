########
#Ostree#
########

alias alive='rpm-ostree install --apply-live'
alias cleanup='rpm-ostree cleanup -bmpr'
alias inst='rpm-ostree install'
alias orm='rpm-ostree override remove'
alias ors='rpm-ostree override reset'
alias pin='sudo ostree admin pin'
alias rebase='rpm-ostree rebase'
alias rollback='rpm-ostree rollback'
alias stati='rpm-ostree status'
alias unin='rpm-ostree uninstall'
alias update='rpm-ostree update'

###################
#Responsible Usage#
###################

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i --preserve-root'
