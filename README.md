# Welcome to my Repository! 

![Fri Jun 17 22:32:10 2022-enos-arm](https://user-images.githubusercontent.com/96737550/174421843-3160306e-97fa-4513-97ec-cc7c7c9ce566.png)

_Pictured above: Calm Window Manager running a fork of Rxvt-Unicode (urxvt) and pfetch, with a nordic tribe wallpaper because I'm a nord nerd_

# About: My Calm Window Manager (CWM) Configuration

https://github.com/leahneukirchen/cwm

Special thanks goes to Leah Neukirchen for keeping the Calm Window Manager project alive.

I've pretty much completed most of what I wanted with CWM, it's my ideal floating alternative to the tilers out there, 
and serves as a vanilla/default WM for X11 on OpenBSD. I've added as much helpful commentary in the .cwmrc file to get
new users better-acquainted with setting up a standalone window manager. As of right now I've fully portablized my workflow
into the .cwmrc file, so it isn't likely to get in the way of completing a fresh linux install.

_Recommended for a clean $HOME: add "exec cwm -c $HOME/.config/cwm/.cwmrc" to your xinitrc, moving all files to XDG_CO

# About: My Slock-Flexipatch Build

https://github.com/bakkeby/slock-flexipatch

Special thanks goes to Bakkeby for making the more easily-deployed flexipatch editions of Suckless tools, generally
improving how we add and take away features on a whim.

# About: My ZSH Configuration

_The least portable due to Pacman related optimizations that can be easily deterred

I modularized the .zshrc core file to the extent that I have organized all functions and calls into their own separate files. Bar none
I want everything from zle, zsh, and keybindings to be in their own separate files to prevent readability issues if I ever go too
overboard with my shell configurations... Which is likely never, as I've found it to be mostly functional for my needs at this point.

Oh, and ZSH is the best file management shell, change my mind :^)
