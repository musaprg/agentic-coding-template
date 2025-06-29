# Language Examples

This directory contains example setups for different programming languages to help you get started quickly with the agentic coding template.

## Available Examples

### Python (`python/`)
- Basic Python project structure
- Example test with pytest
- Requirements file template
- Python-specific configuration

### Node.js (`node/`)
- Basic Node.js/TypeScript project structure
- Example test with Jest
- Package.json template
- TypeScript configuration

### Go (`go/`)
- Basic Go module structure
- Example test with standard testing package
- Go.mod template
- Go-specific configuration

### Rust (`rust/`)
- Basic Rust crate structure
- Example test with built-in test framework
- Cargo.toml template
- Rust-specific configuration

## Quick Start

1. Choose your language example directory
2. Copy the relevant files to your project root
3. Update `.devcontainer/devcontainer.json` to uncomment your language feature
4. Run `make setup` to install dependencies
5. Run `make test` to verify everything works

## Adding New Languages

To add support for a new language:

1. Create a new directory under `examples/`
2. Add basic project structure and test example
3. Update this README with the new language
4. Consider adding language-specific commands to the Makefile
5. Update the CI workflow to include the new language

## Notes

- These examples are minimal setups to demonstrate the template structure
- Adapt them to your specific project needs
- The devcontainer will provide the runtime environment
- All examples include basic security and quality configurations