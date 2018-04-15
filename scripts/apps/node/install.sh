#!/usr/bin/env bash
#
# Install Node.js

# shellcheck source=./../../support.sh
[[ -z "$STSHELL_SUPPORT" ]] && . "$( cd "${BASH_SOURCE%/*}/../.." && pwd )/support.sh"

if ! type "node" &> /dev/null; then
  sh_info "Installing Node.js..."
  if type "brew" &> /dev/null; then
    brew install node --without-npm
  elif type "apt-get" &> /dev/null; then
    curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
    # sudo add-apt-repository ppa:chris-lea/node.js
    # sudo apt-get update
    sudo apt-get -y install nodejs
    sudo apt-get -y install build-essential
  elif type "yum" &> /dev/null; then
    curl --silent --location https://rpm.nodesource.com/setup | bash -
    sudo yum install nodejs npm
    sudo yum install gcc-c++ make
  fi
  sh_info "Adding ~/.node/bin to PATH..."
  # shellcheck source=./path.sh
  . "$( cd "${BASH_SOURCE%/*}" && pwd )/path.sh"
fi

if type "node" &> /dev/null; then
  sh_success "Node.js $(node --version) installed: $(which node)"
fi

if ! type "npm" &> /dev/null; then
  sh_info "Installing npm..."
  cd || echo "(can't change to home directory)"
  curl -L https://www.npmjs.com/install.sh | sh
fi

if type "npm" &> /dev/null; then
  sh_success "npm $(npm --version) installed: $(which npm)"
fi
