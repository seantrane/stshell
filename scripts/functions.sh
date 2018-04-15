#!/usr/bin/env bash
#
# Shell Functions

STSHELL_FUNCTIONS=$( cd "${BASH_SOURCE%/*}/functions" && pwd )
export STSHELL_FUNCTIONS

# autoload every function:
# for file in ./functions/{extract,lowercase}; do
for file in $(find -H "$STSHELL_FUNCTIONS" -maxdepth 2 -name '[A-Za-z0-9\-\_]*'); do
  # shellcheck source=/dev/null disable=SC2163
  [ -r "$file" ] && [ -f "$file" ] && . "$file" && export $(basename $file)
done
unset file

# ------------------------------------------------------------------------------

# autoload all app-related functions:
STSHELL_APPS=$( cd "${BASH_SOURCE%/*}/apps" && pwd )
# for file in ./apps/**/functions.sh; do
for file in $(find -H "$STSHELL_APPS" -maxdepth 2 -name 'functions.sh'); do
  # shellcheck source=/dev/null
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done
unset file

# ------------------------------------------------------------------------------

# autoload all service-related functions:
STSHELL_SERVICES=$( cd "${BASH_SOURCE%/*}/services" && pwd )
# for file in ./services/**/functions.sh; do
for file in $(find -H "$STSHELL_SERVICES" -maxdepth 2 -name 'functions.sh'); do
  # shellcheck source=/dev/null
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done
unset file
