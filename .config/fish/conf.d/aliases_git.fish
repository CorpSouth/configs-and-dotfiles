#####
#Git#
#####

if status is-interactive
    
    if type -q git
        alias addall   'git add .'
        alias addup    'git add -u'
        alias branch   'git branch'
        alias checkout 'git checkout'
        alias clone    'git clone'
        alias commit   'git commit -m'
        alias fetch    'git fetch'
        alias pull     'git pull origin'
        alias push     'git push origin'
        alias tag      'git tag'
        alias newtag   'git tag -a'
    end

end
