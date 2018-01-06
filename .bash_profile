# .bash_profile is called for a login shell
# .bashrc is called when entering a non login shell ( ie. if you enter $ bash from within your shell )
# I want the same aliases and prompts irrespective of which type of shell I am using.
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
