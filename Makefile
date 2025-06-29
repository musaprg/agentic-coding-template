# Agentic Coding Template Makefile
# Language-agnostic commands for development workflow

.DEFAULT_GOAL := help
.PHONY: help setup test lint format clean info

# Colors for output
CYAN := \033[36m
GREEN := \033[32m
YELLOW := \033[33m
RED := \033[31m
RESET := \033[0m

help: ## Show this help message
	@echo "$(CYAN)Agentic Coding Template - Available Commands$(RESET)"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "$(GREEN)%-20s$(RESET) %s\n", $$1, $$2}'
	@echo ""
	@echo "$(YELLOW)Add language-specific commands as needed for your project$(RESET)"

setup: ## Project setup
	@echo "$(CYAN)Setting up project...$(RESET)"
	@echo "$(YELLOW)Add your language-specific setup commands here$(RESET)"
	@echo "$(GREEN)✅ Setup completed!$(RESET)"

test: ## Run tests
	@echo "$(CYAN)Running tests...$(RESET)"
	@echo "$(YELLOW)Add your language-specific test commands here$(RESET)"
	@echo "$(GREEN)✅ Tests completed!$(RESET)"

lint: ## Run linters
	@echo "$(CYAN)Running linters...$(RESET)"
	@echo "$(YELLOW)Add your language-specific linting commands here$(RESET)"
	@echo "$(GREEN)✅ Linting completed!$(RESET)"

format: ## Format code
	@echo "$(CYAN)Formatting code...$(RESET)"
	@echo "$(YELLOW)Add your language-specific formatting commands here$(RESET)"
	@echo "$(GREEN)✅ Formatting completed!$(RESET)"

clean: ## Clean build artifacts
	@echo "$(CYAN)Cleaning build artifacts...$(RESET)"
	@rm -rf .tmp/* .agent/* 2>/dev/null || true
	@echo "$(YELLOW)Add your language-specific cleanup commands here$(RESET)"
	@echo "$(GREEN)✅ Cleanup completed!$(RESET)"

info: ## Show project and environment information
	@echo "$(CYAN)Project Information$(RESET)"
	@echo "Repository: $$(basename $$(pwd))"
	@echo "Git branch: $$(git branch --show-current 2>/dev/null || echo 'Not a git repository')"
	@echo "Git status: $$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ') uncommitted changes"
	@echo ""
	@echo "$(CYAN)Environment Information$(RESET)"
	@echo "Operating System: $$(uname -s)"
	@echo "Architecture: $$(uname -m)"
	@echo "Container: $$(if [ -f /.dockerenv ]; then echo 'Yes (devcontainer)'; else echo 'No'; fi)"

# Language-specific targets can be added here by project owners
# Examples:
#
# For Node.js projects:
# npm-install: ## Install Node.js dependencies
# 	npm install
#
# npm-test: ## Run Node.js tests
# 	npm test
#
# For Python projects:
# pip-install: ## Install Python dependencies
# 	pip install -r requirements.txt
#
# pytest: ## Run Python tests
# 	pytest
#
# For Go projects:
# go-deps: ## Download Go dependencies
# 	go mod download
#
# go-test: ## Run Go tests
# 	go test ./...
