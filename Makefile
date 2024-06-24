PHONY: exec

exec:
	brew bundle
	mkdir -p ~/Code/Amazon/GitHub
	mkdir -p ~/Code/Personal/GitHub
	stow */
