#!/bin/bash

sudo apt update
sudo apt install nodejs
sudo apt install npm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 18.12.0
npm install husky lint-staged --save-dev
npx husky install
npx husky add .husky/pre-commit "npx lint-staged"
