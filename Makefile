.DEFAULT_GOAL := help

.PHONY: help
help: ## Display this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

.PHONY: bootstrap
bootstrap: ## Setup local gitconfig and symlink all dotfiles
	@echo "==> Bootstrapping dotfiles..."
	@./scripts/bootstrap

.PHONY: install
install: ## Run all topic installers (install.sh)
	@echo "==> Running installers..."
	@./scripts/install
