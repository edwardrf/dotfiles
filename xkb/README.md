XKB based keyboard remap
========================
Since xmodmap is no longer supported by GNOME, a XKB based solution is used.

These files needs to be copied to /usr/share/X11/xkb/
.
├── rules
│   ├── evdev.lst  // Added edwardrf variant to the layouts
│   └── evdev.xml  // Description of the edwardrf layout added to the us base layout
└── symbols
    └── edwardrf   // Custome symbol definiation that is referenced by the evdev files

Only the part where 'edwardrf' layout is referenced in evdev files are needed, you can edit your existing evdev files to add them

Useful Links
------------
https://help.ubuntu.com/community/Custom%20keyboard%20layout%20definitions?action=show&redirect=Howto%3A+Custom+keyboard+layout+definitions
https://askubuntu.com/questions/510024/what-are-the-steps-needed-to-create-new-keyboard-layout-on-ubuntu
http://www.charvolant.org/doug/xkb/html/node5.html#Sec:Symbols
https://unix.stackexchange.com/questions/202883/create-xkb-configuration-from-xmodmap

