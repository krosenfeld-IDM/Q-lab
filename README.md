# Q-lab
Repository for getting started with Claude Code and Codex CLI

## Overview
This repository provides ready-to-use development environments (devcontainers) for exploring and learning two powerful AI coding assistants:
- **Claude Code**: Anthropic's interactive CLI tool for software engineering tasks
- **Codex**: OpenAI's code generation and completion tool

## Available Development Environments

Choose from three preconfigured devcontainer environments:

### 🐍 Python Environment (`python_firewall`)
- Python development setup with firewall configuration
- Ideal for data science, web development, and general Python projects
- Based on Claude Code's default devcontainer

### 🌐 JavaScript Environment (`javascript_firewall`) 
- Node.js and JavaScript development environment
- Perfect for web development, React, Node.js applications
- Includes modern JavaScript tooling

### 📊 RStudio Environment (`rstudio_firewall`)
- R and RStudio Server setup
- Great for statistical analysis, data visualization, and R programming
- Includes RStudio Server for browser-based development

## Getting Started

### 1. Choose Your Environment
Select the devcontainer that matches your preferred programming language and use case.

### 2. Open in VS Code
1. Make sure you have VS Code with the Dev Containers extension installed
2. Open this repository in VS Code
3. When prompted, select "Reopen in Container" or use `Ctrl+Shift+P` → "Dev Containers: Reopen in Container"
4. Choose your preferred devcontainer from the list

### 3. Start Coding with AI Assistance

#### Using Claude Code

To start:
```bash
claude
```

If this is your first time launching claude code you will be prompted to bill either through your subscription or the API.

**Installation & Setup:**
- Visit the [Claude Code documentation](https://docs.anthropic.com/en/docs/claude-code/overview) for installation instructions
- Learn about [CLI usage and commands](https://docs.anthropic.com/en/docs/claude-code/cli-usage)
- Explore [tutorials and workflows](https://docs.anthropic.com/en/docs/claude-code/tutorials)

**Key Features:**
- Interactive coding assistance
- File editing and code generation
- Project analysis and debugging
- Git integration and code reviews

#### Using Codex
To start:
```bash
export OPENAI_API_KEY="your-api-key-here"
codex
```

**Getting Started:**
- Visit the [OpenAI Codex GitHub repository](https://github.com/openai/codex) for setup instructions
- Review documentation and examples
- Install the necessary CLI tools and configure API access

**Key Features:**
- Code completion and generation
- Natural language to code translation
- Code explanation and documentation
- Multi-language support

## Next Steps

1. **Experiment**: Try both tools with simple coding tasks to understand their strengths
2. **Explore**: Use the provided environments to work on your own projects
3. **Learn**: Review the documentation links to master advanced features
4. **Contribute**: Share your experiences and improvements back to the community

## Resources

- [Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code)
- [OpenAI Codex Repository](https://github.com/openai/codex)
- [VS Code Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers)

Happy coding! 🚀
