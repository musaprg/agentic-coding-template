# Agentic Coding Template

A secure, language-agnostic GitHub repository template designed for safe AI agent development with sandboxed environments and human-in-the-loop workflows.

## 🎯 Overview

This template enables **YOLO mode** AI coding agents to work safely in isolated environments while maintaining security and quality standards. It provides a robust foundation for any programming language with built-in safety mechanisms, automated testing, and comprehensive guidelines.

## 🛡️ Safety Model

### Core Security Principles
- **Devcontainer Sandboxing**: All agent work happens in isolated Docker containers
- **Human-in-the-Loop**: Agents propose changes, humans approve them
- **Network Isolation**: Limited internet access for packages only
- **Filesystem Restrictions**: Agents work only within designated workspace
- **Patch-Only Dependencies**: Conservative updates for stability and security

### Safety Architecture
```
┌─────────────────────────────────────────────────────────────┐
│ Host System (Protected)                                     │
│ ┌─────────────────────────────────────────────────────────┐ │
│ │ Devcontainer (Sandboxed)                               │ │
│ │ ┌─────────────────┐ ┌─────────────────┐ ┌──────────────┐ │ │
│ │ │ Agent Workspace │ │ Project Files   │ │ Temp Docs    │ │ │
│ │ │ (.agent/)       │ │ (src/, etc.)    │ │ (.tmp/)      │ │ │
│ │ └─────────────────┘ └─────────────────┘ └──────────────┘ │ │
│ └─────────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

## 🚀 Quick Start

### 1. Use This Template
Click "Use this template" on GitHub or:
```bash
gh repo create my-project --template=your-username/agentic-coding-template
cd my-project
```

### 2. Configure Your Language
Edit `.devcontainer/devcontainer.json` and uncomment your language features:
```json
"features": {
  "ghcr.io/devcontainers/features/python:1": {
    "version": "3.11"
  }
}
```

### 3. Open in Devcontainer
- Open in VS Code with Dev Containers extension
- Or use GitHub Codespaces
- Container will auto-setup with Claude Code and your language tools

### 4. Set Up Agent Guidelines
Agents will automatically read:
- `AGENT_GUIDELINES.md` - Universal safety rules
- `CLAUDE.md` - Claude Code specific instructions
- `GEMINI.md` - Gemini CLI specific instructions

### 5. Start Safe Development
Agents will follow the workflow:
```
Agent → Feature Branch → CI Tests → Human Review → Merge
```

## 📁 Repository Structure

```
├── .devcontainer/
│   ├── devcontainer.json      # Sandboxed development environment
│   └── on-create.sh          # Universal setup script
├── .github/
│   └── workflows/
│       └── ci.yml            # Security scanning + testing
├── .agent/                   # Agent workspace (gitignored)
├── .tmp/                     # Design documents (gitignored)
├── AGENT_GUIDELINES.md       # Universal agent safety rules
├── CLAUDE.md                # Claude Code instructions
├── GEMINI.md                # Gemini CLI instructions
├── CONTRIBUTING.md          # Development guidelines
├── renovate.json            # Patch-only dependency updates
├── Makefile                 # Standardized commands
├── .env.example             # Secret management template
├── .editorconfig            # Universal editor settings
├── .pre-commit-config.yaml  # Code quality hooks
└── .gitignore               # Language-agnostic patterns
```

## 🔧 Language Support

### Supported Languages
The template supports any language through devcontainer features:

- **Python** - `ghcr.io/devcontainers/features/python:1`
- **Node.js/TypeScript** - `ghcr.io/devcontainers/features/node:1` (pre-installed)
- **Go** - `ghcr.io/devcontainers/features/go:1`
- **Rust** - `ghcr.io/devcontainers/features/rust:1`
- **Java** - `ghcr.io/devcontainers/features/java:1`
- **C#/.NET** - `ghcr.io/devcontainers/features/dotnet:2`
- **Ruby** - `ghcr.io/devcontainers/features/ruby:1`
- **PHP** - `ghcr.io/devcontainers/features/php:1`

### Adding Language Support
1. Uncomment the relevant feature in `.devcontainer/devcontainer.json`
2. Add language-specific examples in `examples/`
3. Update `Makefile` with language-specific commands
4. Configure appropriate linting in `.github/workflows/ci.yml`

## 🤖 Agent Integration

### Supported Agents
- **Claude Code** - Full development capabilities with built-in guidelines
- **Gemini CLI** - Advisory and planning support
- **Custom Agents** - Add your own agent instructions file

### Agent Workflow
1. **Read Guidelines**: Agents start by reading safety and project guidelines
2. **Plan Work**: Document requirements and tasks in `.tmp/`
3. **Create Branch**: Work on feature branches, never directly on main
4. **Develop Safely**: Follow workspace boundaries and security rules
5. **Test Changes**: CI automatically validates all changes
6. **Human Review**: All changes require human approval before merge

### Adding New Agents
1. Create `AGENT_NAME.md` with agent-specific instructions
2. Reference `AGENT_GUIDELINES.md` for common safety rules
3. Update this README to document the new agent support

## 🔐 Security Features

### Automated Security Scanning
- **Vulnerability Detection**: Trivy scans for security issues
- **Secret Detection**: TruffleHog prevents credential leaks
- **Dependency Auditing**: Language-specific security checks
- **Code Quality**: ESLint, Ruff, and other linters

### Dependency Management
- **Renovate**: Automated patch-only updates
- **Security Priority**: Vulnerability patches auto-merged after CI
- **Stability Focus**: Major/minor updates disabled by default

### Access Controls
- **Branch Protection**: Main branch requires PR and reviews
- **CI Requirements**: All tests must pass before merge
- **Non-root Execution**: Agents run with limited privileges
- **Network Restrictions**: Container-level network isolation

## 📋 Development Workflow

### Standard Process
1. **Agent receives task** from human developer
2. **Agent reads guidelines** and project documentation
3. **Agent creates feature branch** for the work
4. **Agent implements changes** following safety rules
5. **CI pipeline validates** security and quality
6. **Human reviews PR** and provides feedback
7. **Human approves and merges** when satisfied

### Quality Gates
- ✅ Security scans pass
- ✅ All tests pass
- ✅ Code quality checks pass
- ✅ Dependency audits clean
- ✅ Human review completed

## 🛠️ Customization

### Project-Specific Setup
1. **Language Configuration**: Update `.devcontainer/devcontainer.json`
2. **Dependencies**: Add your `package.json`, `requirements.txt`, etc.
3. **Testing**: Configure test commands in `Makefile`
4. **Linting**: Add language-specific linting to CI workflow
5. **Documentation**: Update this README with project specifics

### Environment Variables
Set up secrets and configuration:
```bash
cp .env.example .env
# Edit .env with your configuration (never commit this file)
```

### Make Commands
```bash
make setup    # Project setup
make test     # Run tests
make lint     # Run linters
make format   # Format code
make clean    # Clean build artifacts
```

## 📖 Documentation

### For Humans
- `README.md` - This file, project overview and setup
- `CONTRIBUTING.md` - Development guidelines and processes
- `.env.example` - Environment configuration template

### For Agents
- `AGENT_GUIDELINES.md` - Universal safety rules for all agents
- `CLAUDE.md` - Claude Code specific instructions
- `GEMINI.md` - Gemini CLI specific instructions

### For Development
- `examples/` - Language-specific setup and test examples
- `.tmp/` - Agent design documents and planning (gitignored)

## 🚨 Important Reminders

### License Selection
**⚠️ IMPORTANT**: This template does not include a LICENSE file. You **MUST** add a license to your project:

1. **Choose a license** appropriate for your project:
   - MIT License (permissive)
   - Apache 2.0 (permissive with patent grant)
   - GPL v3 (copyleft)
   - Proprietary (for private projects)

2. **Add LICENSE file** to your repository root

3. **Update package files** with license information

4. **Consider legal implications** of your choice

Popular license resources:
- [Choose a License](https://choosealicense.com/)
- [GitHub License Picker](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository)

### Security Considerations
- **Never commit secrets** or API keys
- **Review all agent changes** before merging
- **Keep dependencies updated** (Renovate handles this)
- **Monitor security alerts** from GitHub
- **Test in devcontainer** to ensure consistency

### Agent Safety
- **Agents work in sandbox** - they cannot access your host system
- **Human approval required** - agents cannot merge without review
- **Network restrictions** - limited internet access for security
- **Audit trails** - all changes tracked in git history

## 🤝 Contributing

See `CONTRIBUTING.md` for detailed guidelines on:
- Safe development practices
- Code review process
- Testing requirements
- Documentation standards

## 📞 Support

### Getting Help
1. **Check documentation** in this repository
2. **Review agent guidelines** for safety questions
3. **Consult examples** for language-specific guidance
4. **Open an issue** for bugs or feature requests

### Security Issues
For security vulnerabilities:
1. **Do NOT open public issues**
2. **Contact maintainers privately**
3. **Provide detailed reproduction steps**
4. **Allow time for coordinated disclosure**

## 🏷️ Version

This template follows semantic versioning. Check releases for updates and changelog.

---

**Remember**: This template prioritizes safety and security for agentic coding. When in doubt, choose the safer option and involve human review.
