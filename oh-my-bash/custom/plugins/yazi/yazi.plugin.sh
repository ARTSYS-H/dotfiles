#! bash oh-my-bash.module
# @Lugh 2026
#
# yazi.plugin.sh
#
# Yazi shell wrapper

y() {
	set -- "$@" --cwd-file "$(mktemp -t yazi-cwd.XXXXXX)"
	command yazi "$@"
	shift $(($# - 1))
	set -- "$(command cat < "$1"; printf .; rm -f -- "$1")"
	set -- "${1%.}"
	[ "$1" != "$PWD" ] && [ -d "$1" ] && command cd -- "$1" || return
}

