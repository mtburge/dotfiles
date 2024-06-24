PHONY: exec

exec:
	brew bundle
	mkdir -p ~/Code/Amazon/GitHub
	mkdir -p ~/Code/Personal/GitHub
	stow */

system:
	# disable spotlight indexing
	sudo mdutil -a -i off
	sudo mdutil -E /