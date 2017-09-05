# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export ALTERNATE_EDITOR=""
export GIT_EDITOR=ec
export EDITOR=ec
export GTAGSFORCECPP=1

# Help ctex find my fonts.
export OSFONTDIR="$OSFONTDIR:~/.fonts"
export BIBINPUTS="$BIBINPUTS:~/code/bib"

# linked_list functions
export PYTHONPATH=/home/lbs/code/leetcode/linked_list:
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.venv

export PATH="$HOME/.cargo/bin:$PATH"
