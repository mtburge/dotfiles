PHONY: dotfiles

dotfiles:
	mkdir -p ~/.config
	mkdir -p ~/Code/Work
	mkdir -p ~/Code/Personal
	stow .

macos:
	brew bundle

	# disable spotlight indexing
	if mdutil -s / | grep -q "enabled"; then sudo mdutil -a -i off && sudo mdutil -E /; fi

	# faster dock unhide animation
	defaults write com.apple.dock autohide-time-modifier -float 0.25; killall Dock

arch:
	sudo pacman -Syu

	yay -S --needed - < pkglist.txt
