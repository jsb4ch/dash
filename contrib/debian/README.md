
Debian
====================
This directory contains files used to package kashd/kash-qt
for Debian-based Linux systems. If you compile kashd/kash-qt yourself, there are some useful files here.

## kash: URI support ##


kash-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install kash-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your kash-qt binary to `/usr/bin`
and the `../../share/pixmaps/kash128.png` to `/usr/share/pixmaps`

kash-qt.protocol (KDE)

