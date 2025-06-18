#!/bin/bash

set -e  # Exit on any error

apt update && apt install -y gh jq

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install node
npm install -g @anthropic-ai/claude-code @openai/codex