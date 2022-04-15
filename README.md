# Welcome to my Repository! 

![i3-slogan](https://user-images.githubusercontent.com/96737550/163432440-bd72512a-0ef3-4dfe-85a3-83244d3ecdb4.png)

_Pictured: my actual desktop, just the wallpaper, cry about it :')_

I hope what I put in here can provide a useful base for anyone interested in the tools that I am using. :)

# About: My Calm Window Manager (CWM) Configuration

https://github.com/leahneukirchen/cwm

Special thanks goes to Leah Neukirchen for keeping the Calm Window Manager project alive.

I've pretty much completed most of what I wanted with CWM, it's my ideal floating alternative to the tilers out there, 
and serves as a vanilla/default WM for X11 on OpenBSD. I've added as much helpful commentary in the .cwmrc file to get
new users better-acquainted with setting up a standalone window manager.

_Recommended for a clean $HOME: add "exec cwm -c $HOME/.config/cwm/.cwmrc" to your xinitrc, moving all files to XDG_CONFIG_HOME of course_

# About: My Dunst Configuration

https://github.com/dunst-project/dunst

Special thanks to the Dunst Project for providing the agnostic notification solution for X11 and XWayland.
Mine is nothing special. Breeze colors. Dmenu-like.

# About: My i3 Window Manager/i3-Gaps Configuration

https://github.com/airblader/i3-gaps

Special thanks to Airblader and the rest of the i3 team for making a robust, stable, and feature-complete software
better and increasingly streamlined for future endeavours.

I had organized and commented as much I could to provide some helpful context in how to define and organize settings
in the main config, though it's been split into multiple includes for the sake of digestible navigation, exemplary twearking, 
and organized documentation without needing a manpage visit or overwhelming the contents. Ironically, I don't use the gaps
since ditching the bar had made them even more trivial for me in my use case. I'm still learning i3 to some extent.
I highly recommend https://i3wm.org for all the official documentation, you're going to love it. :)

# About: My Rofi Configuration & Themes

https://github.com/davatorium/rofi

Special thanks goes to the developer and contributors to the Rofi multi-menu project.

My Rofi configuration is a combination of personal tweaks (of course) to suit my workflow, enabling the filebrowser because
it's just too useful to pass up, even if you prefer other means of file exploration. I had yet to fully extend my own
Rofi configuration but from where I am at currently, it's a daily tool worth checking out. The themes are just modifications
of the existing dmenu.rasi style, it suits my barebones environment and is just far easier to tweak for me at this stage.

_Credit to the unadulterated dmenu.rasi goes to its original creator_

# About: My Simple X11 Hotkey Daemon (SXHKD)

https://github.com/baskerville/sxhkd

Special thanks goes to Baskerville for making perhaps one of my most favorite hotkey daemons, and perhaps most helpful 
tongue-twister for getting me to improve my keyboard efficiency and workflow proficiency. This contains not only
a heap of app shortcuts and system commands, but all of my i3-wm keybinds. See the manpage for i3-msg for more info.

# About: My Slock-Flexipatch Build

https://github.com/bakkeby/slock-flexipatch

Special thanks goes to Bakkeby for making the more easily-deployed flexipatch editions of Suckless tools, generally
improving how we add and take away features on a whim.
