# Maintainer: Aditya Shakya <adi1090x@gmail.com>

pkgname=archcraft-berry
pkgver=4.0
pkgrel=0
pkgdesc="Berry Configurations for Archcraft"
arch=('any')
url="https://github.com/archcraft-os/archcraft-berry"
license=('GPL3')
depends=('berry-git' 'sxhkd' 'hsetroot' 'xsettingsd'
		'pulsemixer' 'light' 'polybar' 'rofi' 'dunst'
)
optdepends=('alacritty: default terminal emulator'
			'thunar: default file manager'
			'geany: default text editor'
			'firefox: default web browser'
			'viewnior: default image viewer'
			'betterlockscreen: default lockscreen'
			'ksuperkey: allows you to open the application launcher using the Super key'
			'networkmanager-dmenu-git: control NetworkManager via rofi'
			'mpd: server-side application for playing music, used in statusbars and scripts'
			'mpc: minimalist command line interface to MPD'
			'ffmpeg: complete solution to record, convert and stream audio and video, used in screenrecord scripts'
			'maim: utility to take a screenshot, used in screenshot scripts'
			'xclip: command line interface to the X11 clipboard'
			'xcolor: lightweight color picker for X11'
			'xfce4-power-manager: power manager'
			'xorg-xsetroot: fix cursor theming, set root background'
			'yad: display graphical dialogs from shell scripts'
			'wmname: utility to set the name of your window manager'
)
options=(!strip !emptydirs)
install="${pkgname}.install"

prepare() {
	cp -af ../files/. "$srcdir"
}

package() {
	local _wmdir="$pkgdir"/etc/skel/.config/berry
	mkdir -p "$_wmdir"

	# Copy config files
	cp -r "$srcdir"/alacritty 		"$_wmdir"
	cp -r "$srcdir"/scripts 		"$_wmdir"
	cp -r "$srcdir"/theme 			"$_wmdir"

	chmod +x "$_wmdir"/scripts/*
	chmod +x "$_wmdir"/theme/polybar.sh
	chmod +x "$_wmdir"/theme/polybar/launch.sh
	chmod +x "$_wmdir"/theme/polybar/scripts/bluetooth.sh

	install -Dm 755 autostart   	"$_wmdir"/autostart
	install -Dm 644 dunstrc   		"$_wmdir"/dunstrc
	install -Dm 644 picom.conf   	"$_wmdir"/picom.conf
	install -Dm 644 sxhkdrc   		"$_wmdir"/sxhkdrc
	install -Dm 644 xsettingsd   	"$_wmdir"/xsettingsd

	install -Dm 644 berry.desktop   "$pkgdir"/usr/share/xsessions/berry.desktop
}
