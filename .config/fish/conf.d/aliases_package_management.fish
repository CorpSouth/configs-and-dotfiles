if status is-interactive
    
    #####
    #Apt#
    #####

    if type -q apt
	alias aptar 'sudo apt autoremove'
	alias aptbd 'sudo apt build-dep'
	alias aptin 'sudo apt install'
	alias aptpa 'sudo apt purge --autoremove'
	alias aptua 'sudo apt uninstall --autoremove'
	alias aptun 'sudo apt uninstall'
    end

    #####
    #Dnf#
    #####

    if type -q dnf
	alias dnfar  'sudo dnf autoremove'
	alias dnfck  'dnf check'
	alias dnfcu  'dnf check-update'
	alias dnfcln 'sudo dnf clean'
	alias dnfdg  'sudo dnf downgrade'
	alias dnfdl  'dnf deplist'
        alias dnfds  'sudo dnf distro-sync'
	alias dnfg   'dnf group'
	alias dnfgi  'sudo dnf group install'
	alias dnfgl  'dnf group list'
	alias dnfgr  'sudo dnf group remove'
	alias dnfgu  'sudo dnf group upgrade'
	alias dnfh   'dnf help'
	alias dnfhi  'dnf history info'
	alias dnfhrb 'sudo dnf history rollback'
	alias dnfhr  'dnf history replay'
	alias dnfhs  'dnf history store'
	alias dnfhui 'dnf history userinstalled'
	alias dnfhun 'sudo dnf history undo'
	alias dnfi   'sudo dnf install'
	alias dnfif  'dnf info'
	alias dnfmg  'sudo dnf mark group'
	alias dnfmin 'sudo dnf mark install'
	alias dnfmr  'sudo dnf mark remove'
	alias dnfmst 'sudo dnf module switch-to'
    end

    ######
    #Dpkg#
    ######

    if type -q dpkg
	alias dpkgc 'sudo dpkg -c'
	alias dpkgi 'sudo dpkg -i'
	alias dpkgL 'sudo dpkg -L'
	alias dpkgl 'sudo dpkg -l'
	alias dpkgs 'sudo dpkg -s'
    end

    ############
    #Rpm-ostree#
    ############
    
    if type -q rpm-ostree
	alias ostau     'sudo ostree admin unlock'
	alias ostc      'rpm-ostree cancel'
	alias ostcln    'rpm-ostree cleanup -bmpr'
	alias ostdbbd   'rpm-ostree db diff'
	alias ostdbbl   'rpm-ostree db list'
	alias ostdbbv   'rpm-ostree db version'
	alias ostdpco   'rpm-ostree deploy --cache-only'
	alias ostdpdo   'rpm-ostree deploy --download-only'
	alias ostdpp    'rpm-ostree deploy --preview'
	alias ostdpue   'rpm-ostree deploy --unchanged-exit-77'
	alias osti      'rpm-ostree install'
	alias ostiai    'rpm-ostree install --allow-inactive'
	alias ostial    'rpm-ostree install --apply-live'
	alias ostico    'rpm-ostree install --cache-only'
        alias ostide    'rpm-ostree install --idempotent'
	alias ostido    'rpm-ostree install --download-only'
	alias ostidr    'rpm-ostree install --dry-run'
	alias ostifr    'rpm-ostree install --force-replacefiles'
	alias ostir     'rpm-ostree install --reboot'
	alias ostorm    'rpm-ostree override remove'
	alias ostorp    'rpm-ostree override replace'
	alias ostor     'rpm-ostree override reset'
	alias ostr      'rpm-ostree reload'
	alias ostu      'rpm-ostree uninstall'
	alias ostudr    'rpm-ostree uninstall --dry-run'
	alias ostur     'rpm-ostree uninstall --reboot'
        alias Rebase    'rpm-ostree rebase'
        alias Rebaseb   'rpm-ostree rebase --branch'
	alias RebaseC   'rpm-ostree rebase --cache-only'
        alias Rebased   'rpm-ostree rebase --download-only'
	alias Rollback  'rpm-ostree rollback'
	alias Rollbackr 'rpm-ostree rollback --reboot'
	alias Upgradead 'rpm-ostree update --allow-downgrade'
	alias UpgradeC  'rpm-ostree upgrade --cache-only'
	alias Upgradec  'rpm-ostree upgrade --check-only'
	alias Upgradedo 'rpm-ostree upgrade --download-only'
	alias Upgrade   'rpm-ostree upgrade'
	alias Upgradep  'rpm-ostree upgrade --preview'
	alias Upgraderb 'rpm-ostree upgrade --reboot'
	alias Upgradeue 'rpm-ostree upgrade --unchanged-exit-77'
    end

    ######################
    #Transactional-update#
    ######################

    if type -q transactional-update
    	alias t-ua 'sudo transactional-update apply'
    	alias t-ub 'sudo transactional-update bootloader'
    	alias t-uc 'sudo transactional-update cleanup'
    	alias t-ud 'sudo transactional-update dup'
    	alias t-ug 'sudo transactional-update grub.cfg'
    	alias t-ui 'sudo transactional-update pkg install'
    	alias t-ur 'sudo transactional-update pkg remove'
    	alias t-uU 'sudo transactional-update up'
    	alias t-uu 'sudo transactional-update pkg update'
    end
    
    ########
    #Zypper#
    ########
    
    if type -q zypper
        alias zypdo   'sudo zypper install --download-only'
        alias zypIN   'sudo zypper install --dry-run'
        alias zypinfo 'zypper info'
    	alias zypin   'sudo zypper install'
    	alias zypPK   'sudo zypper purge-kernels --details --dry-run'
    	alias zyppk   'sudo zypper purge-kernels'
    	alias zyprf   'sudo zypper install --replacefiles'
    	alias zypRM   'sudo zypper remove --details --dry-run'
    	alias zyprm   'sudo zypper remove'
    	alias zypSI   'sudo zypper source-install --build-deps-only'
    	alias zypsi   'sudo zypper source-install'
    	alias zypUP   'sudo zypper update --details --dry-run'
    	alias zypup   'sudo zypper update'
    	alias zypVE   'sudo zypper verify --details --dry-run'
    	alias zypve   'sudo zypper verify'
    end

end
