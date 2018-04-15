#!/usr/bin/env bash
#
# Shell Aliases

STSHELL_APPS=$( cd "${BASH_SOURCE%/*}" && pwd )/apps

# autoload all aliases:
# for file in ./apps/{git,system}/aliases.sh; do
for file in $(find -H "$STSHELL_APPS" -maxdepth 2 -name 'aliases.sh'); do
  # shellcheck source=/dev/null
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done
unset file
