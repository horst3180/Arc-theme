**This list was created for avoiding duplicated issues, please read this before posting. If yours isn't listed here, delete this and continue.**

- The theme doesn't work in [distro] that doesn't have a GTK+ 3 version higher or equal than 3.14.
  - Arc does not support version lower than 3.14, sorry.
- The theme is broken after a GTK update.
  - Recompile the theme.
- The theme is broken after installing from a repository.
  - Check if the repository that you're using is specifically for the distribution (and distribution/GTK version) that you're using.
- Using XFCE, the notifications looks ugly or are always full.
  - Please check if Arc is the theme selected on the Notifications configuration.
- GTK 2 theme looks like Windows 95 and LibreOffice/others looks ugly.
  - Check if you have the Murrine GTK engine and `gnome-themes-standard` installed.
- My GTK apps have a transparent background in Ubuntu.
  - Run this in terminal: `gsettings set com.canonical.desktop.interface scrollbar-mode normal`.
- On Arch Linux the AUR package won't build [[gtk-theme-arc-git](https://aur.archlinux.org/packages/gtk-theme-arc-git/)/[gtk-theme-arc](https://aur.archlinux.org/packages/gtk-theme-arc/)]
  - Ensure you have the "[base-devel](https://www.archlinux.org/groups/x86_64/base-devel/)" package installed before you build packages from AUR.

**Mark those:**

- [ ] I read the list above.
- [ ] I read the README.
- [ ] I've checked if my issue isn't duplicated.

**And complete this:**

- Distribution:
- Desktop environment:
- GTK+ 3 version:
- GNOME Shell version (if using):
