# Contributing Guidelines

Welcome to this agentic coding project! This document outlines the safe development practices and processes for both human developers and AI agents working in this repository.

## 🛡️ Safety First

This repository is designed for safe agentic coding with built-in security measures. All contributors (human and AI) must follow these safety principles:

### Core Safety Rules
- **Sandboxed Environment**: All work happens in devcontainers
- **Human-in-the-Loop**: AI agents propose, humans approve
- **No Direct Main Commits**: Always use feature branches and PRs
- **Security Scanning**: All changes go through automated security checks
- **Conservative Dependencies**: Only patch-level updates allowed by default

## 🤖 For AI Agents

### Required Reading
Before starting any work, AI agents MUST read:
1. `AGENT_GUIDELINES.md` - Universal safety rules
2. Agent-specific instructions (`CLAUDE.md`, `GEMINI.md`, etc.)
3. This contributing guide
4. Project `README.md`

### Agent Workflow
1. **Understand the Task**: Read requirements carefully
2. **Plan Your Work**: Document approach in `.tmp/design.md`
3. **Create Feature Branch**: `feature/task-description`
4. **Implement Changes**: Follow coding standards and safety rules
5. **Test Thoroughly**: Ensure all tests pass
6. **Create Pull Request**: With clear description and context
7. **Wait for Review**: Human approval required before merge

### Agent Responsibilities
- ✅ Follow security guidelines and workspace boundaries
- ✅ Write clean, tested, documented code
- ✅ Stay within assigned task scope
- ✅ Document progress and decisions
- ❌ Never bypass security measures or restrictions
- ❌ Never commit secrets or sensitive information
- ❌ Never push directly to protected branches

## 👥 For Human Developers

### Development Setup
1. **Clone the repository**
2. **Open in VS Code** with Dev Containers extension
3. **Reopen in Container** when prompted
4. **Configure your language** in `.devcontainer/devcontainer.json`
5. **Install dependencies** using `make setup`

### Working with Agents
1. **Assign Clear Tasks**: Provide specific, well-defined objectives
2. **Review All Changes**: Never auto-merge agent contributions
3. **Test Agent Work**: Verify functionality and security
4. **Provide Feedback**: Guide agents toward better solutions
5. **Monitor Security**: Watch for any policy violations

### Human Review Checklist
- [ ] **Security**: No hardcoded secrets, proper input validation
- [ ] **Functionality**: Code works as expected
- [ ] **Tests**: Adequate test coverage and all tests pass
- [ ] **Documentation**: Clear comments and updated docs
- [ ] **Style**: Follows project conventions
- [ ] **Scope**: Changes align with assigned task

## 🔧 Development Workflow

### Branch Management
- **Main Branch**: Protected, requires PR and review
- **Feature Branches**: Use descriptive names like `feature/add-authentication`
- **Branch Naming**: `feature/`, `bugfix/`, `hotfix/`, `docs/`

### Commit Guidelines
- **Commit Messages**: Clear, descriptive, following conventional commits
- **Small Commits**: Focused changes that are easy to review
- **Signed Commits**: Use GPG signing for verification (recommended)

### Pull Request Process
1. **Create PR** from feature branch to main
2. **Fill PR Template** with description, testing notes, breaking changes
3. **Ensure CI Passes** - all checks must be green
4. **Request Review** from appropriate team members
5. **Address Feedback** promptly and professionally
6. **Squash and Merge** once approved

### Testing Requirements
- **Unit Tests**: Cover new functionality and edge cases
- **Integration Tests**: Test component interactions
- **Security Tests**: Verify security measures are effective
- **Performance Tests**: Ensure changes don't degrade performance

## 🔐 Security Guidelines

### Secret Management
- **Never commit secrets** in any form (even in comments)
- **Use .env files** for local secrets (gitignored)
- **Environment Variables**: For production secrets
- **Vault Solutions**: For enterprise secret management

### Dependency Security
- **Patch Updates Only**: Renovate handles security patches automatically
- **Audit Dependencies**: Run security audits before adding new deps
- **Known Vulnerabilities**: Never introduce dependencies with known issues
- **License Compliance**: Ensure all dependencies have compatible licenses

### Code Security
- **Input Validation**: Validate and sanitize all inputs
- **Authentication**: Implement proper auth mechanisms
- **Authorization**: Follow principle of least privilege
- **Encryption**: Use strong encryption for sensitive data
- **Logging**: Log security events but never log secrets

## 📋 Code Standards

### General Principles
- **Readability**: Code should be self-documenting
- **Simplicity**: Prefer simple solutions over complex ones
- **Consistency**: Follow existing patterns and conventions
- **Performance**: Consider performance implications
- **Maintainability**: Write code that others can understand and modify

### Language-Specific Standards

#### Python
- Follow PEP 8 style guide
- Use type hints for function signatures
- Document functions with docstrings
- Use meaningful variable names
- Prefer list comprehensions over loops where appropriate

#### JavaScript/TypeScript
- Use modern ES6+ features
- Prefer const over let, avoid var
- Use meaningful function and variable names
- Type everything in TypeScript (no `any`)
- Use async/await over promises chains

#### Go
- Follow Go conventions and idioms
- Use gofmt and goimports for formatting
- Handle errors explicitly
- Use interfaces for dependency injection
- Write self-documenting code

### Universal Standards
- **No Magic Numbers**: Use named constants
- **Error Handling**: Handle errors gracefully
- **Comments**: Explain why, not what
- **Functions**: Keep functions small and focused
- **Variables**: Use descriptive names

## 🧪 Testing Standards

### Test Structure
- **Unit Tests**: Fast, isolated, deterministic
- **Integration Tests**: Test component interactions
- **End-to-End Tests**: Test complete user workflows
- **Security Tests**: Test security measures and constraints

### Test Guidelines
- **Test Naming**: Descriptive test names that explain the scenario
- **Arrange-Act-Assert**: Structure tests clearly
- **Mock External Dependencies**: Keep tests isolated
- **Test Edge Cases**: Cover error conditions and boundary cases
- **Fast Feedback**: Tests should run quickly

### Coverage Requirements
- **Minimum Coverage**: 80% line coverage for new code
- **Critical Path Coverage**: 100% coverage for security-critical code
- **Test Quality**: Focus on meaningful tests, not just coverage numbers

## 📚 Documentation Standards

### Code Documentation
- **Functions**: Document purpose, parameters, return values
- **Classes**: Document responsibility and usage
- **Complex Logic**: Explain the reasoning behind complex algorithms
- **APIs**: Document all public interfaces

### Project Documentation
- **README**: Keep updated with current setup and usage
- **CHANGELOG**: Document all notable changes
- **API Docs**: Auto-generate when possible
- **Examples**: Provide working examples for complex features

## 🚀 Release Process

### Version Management
- **Semantic Versioning**: Follow semver for version numbers
- **Release Notes**: Document changes, fixes, and breaking changes
- **Tag Releases**: Use git tags for version tracking

### Deployment Safety
- **Staging Environment**: Test all changes in staging first
- **Gradual Rollout**: Use feature flags and gradual deployment
- **Rollback Plan**: Always have a rollback strategy
- **Monitoring**: Monitor deployments for issues

## 📞 Getting Help

### Resources
- **Documentation**: Check project docs first
- **Issues**: Search existing issues before creating new ones
- **Discussions**: Use GitHub Discussions for questions
- **Security**: Report security issues privately

### Support Channels
1. **Project Documentation** - Start here
2. **GitHub Issues** - Bug reports and feature requests
3. **GitHub Discussions** - Questions and general discussion
4. **Team Chat** - For urgent matters (if applicable)

## 🤝 Community Standards

### Communication
- **Be Respectful**: Treat all contributors with respect
- **Be Constructive**: Provide helpful feedback and suggestions
- **Be Patient**: Remember that people have different experience levels
- **Be Inclusive**: Welcome contributors from all backgrounds

### Code of Conduct
This project follows the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct. By participating, you are expected to uphold this code.

## 📋 Checklist for New Contributors

### First-Time Setup
- [ ] Read all documentation (README, CONTRIBUTING, AGENT_GUIDELINES)
- [ ] Set up development environment (devcontainer)
- [ ] Understand the security model and safety measures
- [ ] Configure git with your name and email
- [ ] Test that you can run the project locally

### Before Each Contribution
- [ ] Understand the requirements clearly
- [ ] Plan your approach and document it
- [ ] Create a feature branch
- [ ] Write tests for your changes
- [ ] Ensure all tests pass
- [ ] Run security scans and linters
- [ ] Create a clear pull request

### Agent-Specific Checklist
- [ ] Read agent-specific guidelines
- [ ] Document plan in `.tmp/design.md`
- [ ] Create todos for complex tasks
- [ ] Work within designated workspace boundaries
- [ ] Never bypass security restrictions
- [ ] Wait for human approval before merging

---

Thank you for contributing to this project! Your efforts to maintain security and quality help make agentic coding safer and more effective for everyone.