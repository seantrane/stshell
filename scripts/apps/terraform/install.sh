#!/usr/bin/env bash
#
# Terraform
# https://www.terraform.io

# shellcheck disable=SC1090,SC1091
[[ -z "$STSHELL_SUPPORT" ]] && . "$( cd "${BASH_SOURCE%/*}/../.." && pwd )/support.sh"

if ! type "terraform" &> /dev/null; then
  sh_info "Installing Terraform..."
  if type "brew" &> /dev/null; then
    brew install terraform
  fi
fi

if type "terraform" &> /dev/null; then
  sh_success "$(terraform --version) installed: $(command -v terraform)"
fi
