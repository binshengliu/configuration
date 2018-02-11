# The folloing two lines are equivalent. With "-U" the command only
# needs to be executed once in the shell and will be persisted
# automatically, while "set -g" needs to be written manually in this
# file.

# Equivalent to: set -g theme_date_format "+%a %b %e %H:%M:%S %Y"
set -x LC_TIME POSIX

# Disable the default virtualenv prompt.
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# DejaVuSansMono Nerd Font Mono is acquired from
# https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/DejaVuSansMono.zip.

# Installed in ~/.local/share/fonts/
set -g theme_nerd_fonts yes

set -g theme_show_exit_status yes

set -g theme_display_git_ahead_verbose yes

set -g theme_title_use_abbreviated_path no

alias drive="env http_proxy=127.0.0.1:8118 https_proxy=127.0.0.1:8118 drive"
