PHONY: exec

exec:
	brew bundle
	mkdir -p ~/Code/Amazon
	mkdir -p ~/Code/Personal
	stow */

system:
	# disable spotlight indexing
	sudo mdutil -a -i off
	sudo mdutil -E /
