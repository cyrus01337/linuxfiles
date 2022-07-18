#!/usr/bin/env bash
eval "$(curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh)"

NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install 16
corepack enable
npm i --location=global fkill-cli npm wipeclean yarn
yarn set version stable
