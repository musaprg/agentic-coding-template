#!/bin/bash

# Universal setup script for agentic coding devcontainer
# This script runs after the devcontainer is created

set -e

echo "🚀 Setting up agentic coding environment..."

# Create agent workspace directories
echo "📁 Creating agent workspace directories..."
mkdir -p "$AGENT_WORKSPACE"
mkdir -p "$TMP_WORKSPACE"

# Set proper permissions for agent directories
chmod 755 "$AGENT_WORKSPACE"
chmod 755 "$TMP_WORKSPACE"

# Update system packages
echo "📦 Updating system packages..."
sudo apt-get update -y

# Install universal development tools
echo "🔧 Installing universal development tools..."
sudo apt-get install -y \
    curl \
    wget \
    jq \
    tree \
    htop \
    vim \
    nano \
    unzip \
    zip \
    build-essential

# Install security tools
echo "🔒 Installing security tools..."
sudo apt-get install -y \
    gnupg \
    ca-certificates

# Configure git (basic setup)
echo "🔗 Configuring git..."
git config --global init.defaultBranch main
git config --global pull.rebase false
git config --global core.editor nano

# Install pre-commit if Python is available and pre-commit is not already installed
if command -v python3 &> /dev/null && command -v pip3 &> /dev/null; then
    if ! command -v pre-commit &> /dev/null; then
        echo "🪝 Installing pre-commit..."
        pip3 install pre-commit
    else
        echo "🪝 Pre-commit already installed"
    fi
else
    echo "🪝 Skipping pre-commit installation (Python not available)"
    echo "   Install Python feature in devcontainer.json to enable pre-commit"
fi

# Set up shell completion for commonly used tools
echo "🐚 Setting up shell completions..."
if command -v gh &> /dev/null; then
    gh completion -s bash | sudo tee /etc/bash_completion.d/gh > /dev/null
fi

# Create a welcome message for agents
echo "📝 Creating agent welcome message..."
cat > "$AGENT_WORKSPACE/README.md" << 'EOF'
# Agent Workspace

This directory is dedicated for agent-specific files and temporary data.

## Guidelines
- Use this space for logs, plans, and temporary files
- Do not commit sensitive information
- Follow the project's AGENT_GUIDELINES.md for safety rules

## Environment Variables
- `AGENT_WORKSPACE`: Path to this directory
- `TMP_WORKSPACE`: Path to temporary design documents

## Safety Reminders
- Always read AGENT_GUIDELINES.md before starting work
- Respect the Human-in-the-Loop workflow
- Never modify files outside your designated workspace without permission
EOF

echo "✅ Agentic coding environment setup complete!"
echo "📋 Next steps:"
echo "  1. Read AGENT_GUIDELINES.md for safety rules"
echo "  2. Check language-specific setup in devcontainer.json"
echo "  3. Run 'make setup' if a Makefile exists"
echo "  4. Start coding safely! 🛡️"