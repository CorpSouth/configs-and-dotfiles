###################################################
#Best-practices for potentially dangerous commands#
###################################################

if status is-interactive
    alias cp 'cp -i'
    alias mv 'mv -i'
    alias rm 'rm -i --preserve-root'
end
