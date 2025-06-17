#!/bin/zsh

set -e  # Exit on any error

# Make sure we're in the right directory
cd /workspace

# Copy pyproject.toml and install Python dependencies
cp .devcontainer/claude_code_python/pyproject.toml ./
uv sync