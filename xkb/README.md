XKB based keyboard remap
========================
Since xmodmap is no longer supported by GNOME, a XKB based solution is used.

These files needs to be copied to /usr/share/X11/xkb/
```
.
├── rules
│   ├── evdev      // Remove the rule adding *:2 to the symbols when there is a 2nd group layout
│   ├── evdev.lst  // Added edwardrf variant to the layouts
│   └── evdev.xml  // Description of the edwardrf layout added to the us base layout
└── symbols
    └── us         // Custome symbol definiation that is referenced by the evdev files
    └── edwardrf   // NOT USED, the portion to be added to us layout
```

Only the part where 'edwardrf' layout is referenced in evdev files are needed, you can edit your existing evdev files to add them
IMPORTANT: evdev file has a line adding X:2 to the symbols when 2 layouts exists, this would cause conflict.
```
! model		layout[2]	=	symbols
  *		*		=	+%l[2]%(v[2]):2
```
Useful Links
------------

Gnome use key "org.gnome.desktop.input-sources sources" to config which input to use, and one of them is xkb. (dconf, gsettings get)
/etc/default/keyboard can be used to select the 'edwardrf' variant to enable this layout even in text console.

https://help.ubuntu.com/community/Custom%20keyboard%20layout%20definitions?action=show&redirect=Howto%3A+Custom+keyboard+layout+definitions
https://askubuntu.com/questions/510024/what-are-the-steps-needed-to-create-new-keyboard-layout-on-ubuntu
http://www.charvolant.org/doug/xkb/html/node5.html#Sec:Symbols
https://unix.stackexchange.com/questions/202883/create-xkb-configuration-from-xmodmap
https://www.reddit.com/r/gnome/comments/4u0don/programmatically_change_gnomes_keyboard_layout/

