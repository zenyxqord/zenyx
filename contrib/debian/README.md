
Debian
====================
This directory contains files used to package zenyxd/zenyx-qt
for Debian-based Linux systems. If you compile zenyxd/zenyx-qt yourself, there are some useful files here.

## zenyx: URI support ##


zenyx-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install zenyx-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your zenyx-qt binary to `/usr/bin`
and the `../../share/pixmaps/zenyx128.png` to `/usr/share/pixmaps`

zenyx-qt.protocol (KDE)

