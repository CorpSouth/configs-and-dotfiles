#############################################################################
# set the xcursor path, please make sure /default/index.theme is available  #
#############################################################################
# doas or sudo cp /usr/share/icons/default/index.theme ~/.local/share/icons #
#############################################################################
# useful if you run into theme problems and don't want to use lxappearance  #
#############################################################################

export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons

######################################################
# use the tty as a login manager with this method    #
######################################################
# pleasure ensure that your xinitrc is free of typos #
# or you will have to edit them out as the root user #
######################################################

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx "$XINITRC"
fi
