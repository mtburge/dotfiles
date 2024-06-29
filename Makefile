PHONY: dotfiles

dotfiles:
	mkdir -p ~/Code/Amazon
	mkdir -p ~/Code/Personal
	stow .

macos:
	brew bundle

	# disable spotlight indexing
	if mdutil -s / | grep -q "enabled"; then sudo mdutil -a -i off && sudo mdutil -E /; fi
