themedir        = $(datadir)/themes/Arc
themedarkerdir  = $(datadir)/themes/Arc-Darker
themedarkdir    = $(datadir)/themes/Arc-Dark

ithemedir       = $(DESTDIR)$(themedir)
ithemedarkerdir   = $(DESTDIR)$(themedarkerdir)
ithemedarkdir  = $(DESTDIR)$(themedarkdir)

install-data-local:

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme $(ithemedir)
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme-darker $(ithemedarkerdir)/index.theme
endif # ENABLE_LIGHT

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme-dark $(ithemedarkdir)/index.theme
endif # ENABLE_DARK


if ENABLE_CINNAMON
	$(MKDIR_P) $(ithemedir)/cinnamon

	cd $(srcdir)/cinnamon && cp -r --no-preserve=mode,ownership \
		common-assets \
		light-assets \
		cinnamon.css \
		$(ithemedir)/cinnamon

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/cinnamon

	cd $(srcdir)/cinnamon && cp -r --no-preserve=mode,ownership \
		common-assets \
		dark-assets \
                $(ithemedarkdir)/cinnamon

	cd $(srcdir)/cinnamon && cp --no-preserve=mode,ownership \
		cinnamon-dark.css \
		$(ithemedarkdir)/cinnamon/cinnamon.css
endif # ENABLE_DARK

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)/cinnamon

	cd $(srcdir)/cinnamon && cp -r --no-preserve=mode,ownership \
		common-assets \
		light-assets \
        $(ithemedarkerdir)/cinnamon

	cd $(srcdir)/cinnamon && cp --no-preserve=mode,ownership \
		cinnamon-darker.css \
		$(ithemedarkerdir)/cinnamon/cinnamon.css
endif # ENABLE_DARKER

endif # ENABLE_GNOME_SHELL


if ENABLE_GNOME_SHELL
	$(MKDIR_P) $(ithemedir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		common-assets \
		light-assets \
		gnome-shell.css \
		$(ithemedir)/gnome-shell
endif # ENABLE_GNOME_SHELL


if ENABLE_GTK2

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -r --no-preserve=mode,ownership \
		assets \
		menubar-toolbar \
		*.rc \
		gtkrc \
		$(ithemedir)/gtk-2.0
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -r --no-preserve=mode,ownership \
		assets \
		menubar-toolbar \
		*.rc \
		$(ithemedarkerdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -r --no-preserve=mode,ownership \
		gtkrc-darker \
		$(ithemedarkerdir)/gtk-2.0/gtkrc
endif # ENABLE_DARKER

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -r --no-preserve=mode,ownership \
		menubar-toolbar \
		*.rc \
		$(ithemedarkdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -r --no-preserve=mode,ownership \
		assets-dark \
		$(ithemedarkdir)/gtk-2.0/assets

	cd $(srcdir)/gtk-2.0 && cp -r --no-preserve=mode,ownership \
		gtkrc-dark \
		$(ithemedarkdir)/gtk-2.0/gtkrc
endif # ENABLE_DARK

endif # ENABLE_GTK2


if ENABLE_GTK3

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		assets \
		gtk.css \
		gtk-contained.css \
		gtk-dark.css \
		gtk-contained-dark.css \
		$(ithemedir)/gtk-3.0
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		assets \
		gtk.css \
		gtk-dark.css \
		gtk-contained-dark.css \
		$(ithemedarkerdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-darker.css \
		$(ithemedarkerdir)/gtk-3.0/gtk-contained.css
endif # ENABLE_DARKER

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		assets \
		gtk.css \
		$(ithemedarkdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-dark.css \
		$(ithemedarkdir)/gtk-3.0/gtk-contained.css
endif # ENABLE_DARK

if !ENABLE_TRANSPARENCY

if ENABLE_LIGHT
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-solid.css \
		$(ithemedir)/gtk-3.0/gtk-contained.css

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-solid-dark.css \
		$(ithemedir)/gtk-3.0/gtk-contained-dark.css
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-solid-darker.css \
		$(ithemedarkerdir)/gtk-3.0/gtk-contained.css

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-solid-dark.css \
		$(ithemedarkerdir)/gtk-3.0/gtk-contained-dark.css
endif # ENABLE_DARKER

if ENABLE_DARK
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-solid-dark.css \
		$(ithemedarkdir)/gtk-3.0/gtk-contained.css
endif # ENABLE_DARK

endif #!ENABLE_TRANSPARENCY

endif # ENABLE_GTK3


if ENABLE_METACITY

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedir)

	cd $(ithemedir)/metacity-1 && rm metacity-theme-1-dark.xml metacity-theme-2-dark.xml
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedarkerdir)

	cd $(ithemedarkerdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedarkdir)

	cd $(ithemedarkdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml
endif # ENABLE_DARK

endif # ENABLE_METACITY


if ENABLE_UNITY

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedir)

	cd $(ithemedir)/unity && rm -rf window-buttons-dark
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedarkerdir)

	cd $(ithemedarkerdir)/unity && \
	rm -rf window-buttons && \
	mv window-buttons-dark window-buttons
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedarkdir)

	cd $(ithemedarkdir)/unity && \
	rm -rf window-buttons && \
	mv window-buttons-dark window-buttons
endif # ENABLE_DARK

endif # ENABLE_UNITY


if ENABLE_XFCE_NOTIFY
	$(MKDIR_P) $(ithemedir)
	cp -r --no-preserve=mode,ownership $(srcdir)/xfce-notify-4.0 $(ithemedir)
endif # ENABLE_XFCE_NOTIFY


if ENABLE_XFWM

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4 $(ithemedir)
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4-dark $(ithemedarkerdir)/xfwm4
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4-dark $(ithemedarkdir)/xfwm4
endif # ENABLE_DARK

endif # ENABLE_XFWM


uninstall-local:
	rm -rf $(ithemedir)

	-rmdir -p $(DESTDIR)$(datadir)/themes 2>/dev/null


dist-hook:
	cp -r \
		cinnamon \
		gnome-shell \
		gtk-2.0 \
		gtk-3.0 \
		metacity-1 \
		unity \
		xfwm4 \
		xfwm4-dark \
		index.theme \
		index.theme-darker \
		index.theme-dark \
		$(distdir)
