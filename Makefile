.DEFAULT_GOAL := help
SHELL         := /bin/bash
RED           := \033[0;31m
GREEN         := \033[0;32m
YELLOW        := \033[1;33m
CYAN          := \033[0;36m
NC            := \033[0m # No Color
WHOAMI        :=`whoami`

help:
	@printf "Uso: make [opções]\n\n"
	@printf "$(YELLOW)Devops Tools - Openshift 4.3$(NC)\n\n"
	@printf "opções:\n"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "$(GREEN)%-20s$(NC) %s$(NC)\n", $$1, $$2}'
	@printf "\n"

.PHONY:

INVENTORY=inventory/

install: ## Instala ferramentas devops no openshift
	@printf "\n\n$(GREEN)----> Instalando ferramentas devops no cluster openshift $(NC)\n\n"
	@ansible-playbook -i {{INVENTORY}} apply.yml
	@printf "\n\n$(GREEN)----> Instalacao finalizada com sucesso $(NC)\n\n"

remove: ## Remova todo o projeto devops do cluster openshift
	@printf "\n\n$(GREEN)----> Deletando todos objetos do projeto devops $(NC)\n\n"
	@oc delete project devops
