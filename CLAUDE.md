# Claude Code Instructions

This document contains specific instructions for **Claude Code** when working in this repository. These instructions complement the common safety rules in `AGENT_GUIDELINES.md`.

## 📖 Required Reading

**IMPORTANT**: Before starting any work, you MUST read and follow:
1. `AGENT_GUIDELINES.md` - Common safety rules for all agents
2. This document (`CLAUDE.md`) - Claude-specific instructions
3. `README.md` - Project-specific information
4. `CONTRIBUTING.md` - Development workflow guidelines

## 🎯 Claude Code Specific Guidelines

### Todo Management
- **ALWAYS** use the TodoWrite tool for complex, multi-step tasks
- Create todos for tasks with 3+ steps or when explicitly requested
- Mark tasks as `in_progress` before starting work
- Mark tasks as `completed` immediately after finishing
- Keep only ONE task `in_progress` at a time

### File Operations
- **ALWAYS** use the Read tool before editing files
- Prefer editing existing files over creating new ones
- Use MultiEdit for multiple changes to the same file
- Never create documentation files unless explicitly requested

### Git Operations
- **NEVER** commit changes unless explicitly asked
- Follow the pattern: `git status` → `git diff` → `git log` → commit with message
- Use HEREDOC format for commit messages
- **NEVER** push to remote unless explicitly requested
- Create pull requests using `gh` command when requested

### Development Workflow
1. **Plan**: Document requirements in `.tmp/design.md`
2. **Tasks**: Define sub-tasks in `.tmp/task.md` 
3. **Branch**: Create feature branch before starting work
4. **Code**: Work in small, manageable commits
5. **Test**: Run tests and linters before submitting
6. **Review**: Create PR and wait for human approval

### Error Handling
- If tests fail, keep task as `in_progress` and fix issues
- Never mark tasks as `completed` if there are unresolved errors
- Document any blockers or issues in your agent workspace
- Ask for help when encountering security restrictions

## 🛠️ Tool Usage Guidelines

### Search and Discovery
- Use Task tool for open-ended searches and keyword searches
- Use Glob tool for specific file pattern matching
- Use Grep tool for content searches within known file sets
- Use Read tool for reading specific file paths

### Code Execution
- Use Bash tool for running commands
- Always provide clear descriptions for bash commands
- Run multiple independent commands in parallel when possible
- Avoid using `find`, `grep`, or `cat` - use appropriate tools instead

### Communication Style
- Be concise and direct (minimize output tokens)
- Answer in 1-3 sentences unless detail is requested
- Avoid unnecessary preamble or explanations
- Only use emojis if explicitly requested

## 🔧 Language-Specific Instructions

### TypeScript/JavaScript
- Avoid hardcoding values
- Never use `any` or `unknown` types
- Avoid `class` unless absolutely necessary
- All files should end with a newline

### Go
- Follow Effective Go principles
- Use `gofmt`, `gofumpt`, and `goimports` for formatting
- Return errors explicitly with context
- Use strong typing and interfaces for dependencies

### Python
- Follow PEP 8 style guidelines
- Use type hints where appropriate
- Prefer functions over classes when possible
- Use virtual environments for dependencies

### General
- Follow existing code conventions in the project
- Check for existing libraries before adding new dependencies
- Never assume libraries are available - check first
- Follow security best practices

## 📁 Workspace Organization

### Agent Workspace (`.agent/`)
Use this directory for:
- Logs and progress tracking
- Temporary data and calculations
- Agent-specific state information
- Notes and observations

### Design Documents (`.tmp/`)
Use this directory for:
- `design.md` - Requirements and design documentation
- `task.md` - Detailed sub-tasks and progress tracking
- Planning documents and specifications

### Project Files
- Only modify project files when explicitly tasked
- Follow existing patterns and conventions
- Maintain backward compatibility when possible
- Document significant changes

## 🚀 Getting Started Checklist

When starting work in this repository:

1. ✅ Read `AGENT_GUIDELINES.md`
2. ✅ Read this document (`CLAUDE.md`)
3. ✅ Read `README.md` for project context
4. ✅ Explore the codebase structure
5. ✅ Check existing patterns and conventions
6. ✅ Create todos for complex tasks
7. ✅ Document your plan in `.tmp/design.md`
8. ✅ Create feature branch
9. ✅ Start coding with first task marked `in_progress`

## 🤝 Collaboration Guidelines

### With Gemini CLI
- Use Gemini for planning and idea confirmation
- Pass prompts via `echo "prompt" | gemini --prompt --telemetry=false`
- Don't let Gemini read or modify files directly
- Use Gemini for advice and feedback on your approach

### With Humans
- Always wait for explicit approval before merging
- Provide clear, concise progress updates
- Ask questions when requirements are unclear
- Respect the human-in-the-loop workflow

## 🔍 Quality Assurance

### Before Submitting Work
- [ ] All tests pass
- [ ] Code follows project conventions
- [ ] No hardcoded secrets or sensitive data
- [ ] Documentation is updated if needed
- [ ] Linters and formatters have been run
- [ ] Changes are minimal and focused
- [ ] Pull request has clear description

### Code Review Preparation
- Provide clear commit messages
- Include testing instructions
- Document any breaking changes
- Link to related issues or tasks
- Explain architectural decisions

## 🆘 Support and Escalation

### When to Ask for Help
- Security restrictions prevent progress
- Unclear or conflicting requirements
- Technical blockers beyond your capability
- Need clarification on project goals

### How to Ask for Help
1. Document the issue clearly in `.agent/`
2. Provide relevant context and error messages
3. Suggest potential solutions if any
4. Wait for human guidance before proceeding

Remember: These guidelines enable safe, effective collaboration between you and human developers. When in doubt, choose the safer, more conservative option.