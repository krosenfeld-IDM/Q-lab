#!/bin/bash
curl -LsSf https://astral.sh/uv/install.sh | sh
uv venv

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
nvm install node
npm install -g @anthropic-ai/claude-code @openai/codex