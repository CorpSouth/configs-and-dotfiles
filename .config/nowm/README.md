# nowm

Well, not only is nowm not a wm per se, it's also not an original project. What is it then you ask. It's my implementation of some tools from the wmutils project. So here is a collection of very volatile scripts that rapidly mutate based on what I need and can discover. As a clear requirement, you should have the wmutils binaries and scripts lying around somewhere. Namely: https://github.com/wmutils. So, put what's here in some executable PATH and it should work without major changes. There is an xinitrc_example file. You can bind the session to a program, let's say as an example: xclock. Then killing xclock terminates the session. I am binding the session to a script that uses a window event viewer. So when I open a new window, I give it focus and draw its borders. But you can implement what/and how you want. The same goes for the variables file. Let everyone create and accommodate variables at ease. The keyboard shortcuts, I have put them as an example.
My thanks and credits to the wmutils project. I wish you luck on your way.

[ keys ]

**Alt + y|u|b|n** - move focused window rightup|leftup|rightdown|leftdown corners \
**Print** - dmenu screenshot \
**Super + .** - proces \
**Super + 0** - open.sh \
**Super + 1** - status \
**super + 2** - xbrowser \
**Super + 3** - musicplayer \
**Super + 4** - podcastplayer \
**Super + 5** - xclock \
**Super + 6** - capturemedia
**Super + a** - add windows snapshot \
**Super + c** - cascade layout \
**Super + g** - togle snapshot \
**Super + i** - ignore window
**Super + l|h|j|k** - move focused window right|left|down|up \
**Super + m** - monocule layout \
**Super + Menu** - fzf_prompt \
**Super + n** - focus next window \
**Super + p** - focus prev window \
**Super + q** - kill window \
**Super + r** - rename window \
**Super + Return** - launch xterm \
**Super + s** - split layout \
**Super + Shift + e** - nowm session manager \
**Super + Shift + h** - decrease focused window -10 in horizontal \
**Super + Shift + j** - increase focused window +10 in vertical \
**Super + Shift + k** - decrease focused window -10 in vertical \
**Super + Shift + l** - increase focused window +10 in horizontal \
**Super + space** - map/unmap windows \
**Super + Tab** - cicle the opened terminals \
**Super + w** - show and select window \
**XF86AudioLowerVolume** - audio volume down \
**XF86AudioMute** - alsamixer \
**XF86AudioRaiseVolume** - audio volume up
