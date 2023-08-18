####################################
#Variables for Distrobox Containers#
####################################

if status is-interactive
    if type -q distrobox
        set -gx DBX_CONTAINER_ALWAYS_PULL "1"
        set -gx DBX_CONTAINER_CUSTOM_HOME "$HOME/.var/home/aaron"
	set -gx DBX_CONTAINER_IMAGE "quay.io/fedora/fedora:39"
	set -gx DBX_CONTAINER_MANAGER "podman"
	set -gx DBX_NON_INTERACTIVE "1"
	set -gx DBX_SKIP_WORKDIR "0"
    end

end
