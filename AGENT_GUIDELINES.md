# Agent Guidelines

This document contains safety rules and workspace guidelines that apply to **ALL** coding agents operating in this repository. These guidelines are designed to ensure safe, secure, and effective agentic coding while protecting both the codebase and the host system.

## 🛡️ Core Safety Principles

### 1. Sandboxed Environment
- **NEVER** attempt to access files outside the devcontainer workspace
- **NEVER** try to access the host filesystem or host network resources
- All work must be done within the `/workspaces/${repositoryName}` directory
- Respect the container boundaries - they exist for security

### 2. Human-in-the-Loop (HITL) Workflow
- **REQUIRED**: All changes must go through human review before merging
- **NEVER** push directly to the `main` branch
- **ALWAYS** create feature branches for your work
- **ALWAYS** create pull requests for human review
- Wait for explicit human approval before any merge

### 3. No Direct System Access
- **NEVER** attempt to modify system configurations
- **NEVER** install system-level packages without explicit permission
- **NEVER** access or modify Docker container settings
- Use only the provided development environment

## 📁 Workspace Organization

### Designated Areas
- **Agent Workspace**: Use `$AGENT_WORKSPACE` (`.agent/`) for your logs, plans, and temporary data
- **Design Documents**: Use `$TMP_WORKSPACE` (`.tmp/`) for design and planning documents
- **Project Code**: Work in the main project directories as needed for your tasks

### File Access Rules
- ✅ **READ**: Any file in the workspace
- ✅ **WRITE**: Files in `.agent/` and `.tmp/` directories
- ✅ **MODIFY**: Project files only with explicit task permission
- ❌ **FORBIDDEN**: System files, configuration outside workspace, other containers

## 🔐 Security Requirements

### Secret Management
- **NEVER** hardcode API keys, passwords, or secrets in code
- **NEVER** commit sensitive information to the repository
- Use environment variables for secrets (see `.env.example`)
- If you need secrets, ask the human operator to provide them securely

### Network Security
- Internet access is limited to package installation and documentation
- **NEVER** attempt to access internal network resources
- **NEVER** make unauthorized API calls
- All external communications must be task-related and transparent

### Dependency Management
- Only install dependencies explicitly required for your task
- Prefer patch-level updates for security (managed by Renovate)
- **NEVER** install dependencies with known vulnerabilities
- Document any new dependencies and their purpose

## 🧪 Development Workflow

### Branch Management
1. Create a feature branch: `feature/your-task-description`
2. Make your changes in small, logical commits
3. Push the branch to the remote repository
4. Create a pull request with detailed description
5. Wait for human review and approval

### Testing Requirements
- Run all existing tests before submitting changes
- Add tests for new functionality when appropriate
- Use the CI pipeline to validate your changes
- **NEVER** submit failing tests without explicit approval

### Code Quality
- Follow the project's existing code style and conventions
- Use provided linters and formatters
- Write clear, documented code
- Keep changes focused and minimal

## 📋 Task Execution Guidelines

### Before Starting Work
1. Read this document and your agent-specific instructions
2. Understand the project structure and conventions
3. Review existing code to understand patterns
4. Plan your approach and document it in `.tmp/`

### During Development
1. Work incrementally with frequent commits
2. Test your changes regularly
3. Document your progress and decisions
4. Stay within your designated workspace areas

### After Completion
1. Run all tests and quality checks
2. Ensure your changes don't break existing functionality
3. Document what you've built and how to use it
4. Create a clear pull request for human review

## 🚫 Prohibited Actions

### System-Level Operations
- Modifying Docker containers or devcontainer configuration
- Installing system packages outside the devcontainer setup
- Accessing host system resources
- Changing user permissions or system settings

### Security Violations
- Bypassing security restrictions or sandboxing
- Accessing unauthorized files or directories
- Hardcoding secrets or sensitive information
- Making unauthorized network connections

### Development Violations
- Pushing directly to protected branches
- Merging pull requests without human approval
- Ignoring test failures or quality checks
- Making changes outside the scope of assigned tasks

## 🆘 When Things Go Wrong

### If You Encounter Errors
1. Document the error clearly in your agent workspace
2. Do not attempt to bypass security restrictions
3. Ask for human assistance if needed
4. Never ignore security warnings or violations

### If You're Uncertain
1. Stop and ask for clarification
2. Document your question in `.agent/` directory
3. Wait for human guidance before proceeding
4. When in doubt, choose the safer option

## 📖 Additional Resources

- **Project-specific instructions**: See `README.md`
- **Agent-specific instructions**: See `CLAUDE.md`, `GEMINI.md`, etc.
- **Contributing guidelines**: See `CONTRIBUTING.md`
- **Security policies**: See repository security settings

## ✅ Compliance

By operating in this repository, you acknowledge that you understand and will follow these guidelines. Violations of these guidelines may result in termination of agent access and review of security protocols.

**Remember**: These guidelines exist to protect both you and the project. They enable safe, effective agentic coding while maintaining security and quality standards.