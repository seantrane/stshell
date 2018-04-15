#!/usr/bin/env bash
#
# Test Shell Scripts

# shellcheck source=./sh/support.sh
[[ -z "${STSHELL_SUPPORT:-}" ]] && . "$( cd "${BASH_SOURCE%/*}" && pwd )/support.sh"

sh_info "${Underline:-}Shell Variables:${Reset:-}"
sh_text "\$SHELL        = ${SHELL:-}"
sh_text "\$SHLVL        = ${SHLVL:-}"
sh_text "\$MANPAGER     = ${MANPAGER:-}"
sh_text "\$TERM         = ${TERM:-}"
sh_text "\$TERM_PROGRAM = ${TERM_PROGRAM:-}"

if type "bash" &> /dev/null; then
  sh_info "${Underline:-}Bash Variables:${Reset:-}"
  sh_text "\$BASH         = ${BASH:-}"
  sh_text "\$BASH_VERSION = ${BASH_VERSION:-}"
  sh_text " Bash #       = ${BASH_VERSION%%[^0-9]*}"
  sh_text " Bash PATH    = $(which bash)"
  sh_text " Bash -v      = $(bash --version)"
  # Bash v4 test:
  # for i in {0..10..2}; do
  #   echo "Welcome $i times"
  # done
fi

if type "zsh" &> /dev/null; then
  sh_info "${Underline:-}Zshell Variables:${Reset:-}"
  sh_text "\$ZSH_NAME     = ${ZSH_NAME:-}"
  sh_text "\$ZSH_VERSION  = ${ZSH_VERSION:-}"
  sh_text " Zsh #        = ${ZSH_VERSION%%[^0-9]*}"
  sh_text " Zsh PATH     = $(which zsh)"
  sh_text " Zsh -v       = $(zsh --version)"
fi

sh_info "${Underline:-}User Variables:${Reset:-}"
sh_text "\$HOST         = ${HOST:-}"
sh_text "\$USER         = ${USER:-}"
sh_text "\$LOGNAME      = ${LOGNAME:-}"
sh_text "\$LANG         = ${LANG:-}"
sh_text "\$EDITOR       = ${EDITOR:-}"
sh_text "\$VISUAL       = ${VISUAL:-}"
sh_text "\$HISTSIZE     = ${HISTSIZE:-}"
sh_text "\$HISTFILESIZE = ${HISTFILESIZE:-}"
sh_text "\$HISTCONTROL  = ${HISTCONTROL:-}"
sh_text "\$HISTIGNORE   = ${HISTIGNORE:-}"

sh_info "${Underline:-}Path Variables:${Reset:-}"
sh_text "\$HOME         = ${HOME:-}"
sh_text "\$PWD          = ${PWD:-}"
sh_text "\$OLDPWD       = ${OLDPWD:-}"
sh_text "\$TMPDIR       = ${TMPDIR:-}"
sh_text "\$BASH_SOURCE  = $( cd "${BASH_SOURCE%/*}" && pwd )"
sh_text "\$RBENV_ROOT   = ${RBENV_ROOT:-}"
sh_text "\$PATH         = ${PATH:-}"
sh_text "\$MANPATH      = $(man -w)" # ${MANPATH}

sh_info "${Underline:-}System Variables:${Reset:-}"
sh_text "\$UTYPE        = ${UTYPE:-}"
sh_text "\$UNAME        = ${UNAME:-}"
sh_text "\$UREL         = ${UREL:-}"
sh_text "\$UARCH        = ${UARCH:-}"
sh_text "\$UMACH        = ${UMACH:-}"

exit
