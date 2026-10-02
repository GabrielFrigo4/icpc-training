.POSIX:
.SILENT:

MAKEFLAGS += --no-print-directory -s

# ----------------------------------------------------------------
# Makefile: ICPC Training Hub & Competitive Programming Suite
# ----------------------------------------------------------------

CXX        ?= c++
CXXFLAGS   ?= -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23
DBGFLAGS   ?= -fsanitize=address,undefined -g -Wall -Wshadow -std=c++23

.SUFFIXES:
.SUFFIXES: .cpp .debug

.PHONY: all help setup setup-hooks lint format prettier clang-format clean check-binaries ci

all: help

### ================================
### HELP & DOCUMENTATION
### ================================
help:
	_e=$$'\e'; \
	cmd() { printf "    $${_e}[36mmake %-22s$${_e}[0m %s\n" "$$1" "$$2"; }; \
	sec() { printf "\n  $${_e}[1;33m%s$${_e}[0m\n" "$$1"; }; \
	printf "\n  $${_e}[1;37mMaratona SBC de Programação (ICPC) — Treinos & Automação$${_e}[0m\n"; \
	printf "  ============================================================\n"; \
	sec "Ambiente & Toolchain:"; \
	cmd "setup"          "Configura hooks do Git e valida compiladores C++ e Python"; \
	cmd "setup-hooks"    "Configura core.hooksPath para .githooks local"; \
	sec "Compilação (Manual):"; \
	cmd "make <Questão>" "Compila questão (ex: make A) em modo submissão (-O3)"; \
	cmd "make <Q>.debug" "Compila questão com AddressSanitizer e UndefinedBehavior"; \
	sec "Qualidade & Validação:"; \
	cmd "format"         "Formata códigos C++ (clang-format) e documentação (prettier)"; \
	cmd "clang-format"   "Formata arquivos C++ com clang-format"; \
	cmd "prettier"       "Formata documentações Markdown com Prettier"; \
	cmd "lint"           "Verifica formatação Markdown e ausência de binários rastreados"; \
	cmd "ci"             "Executa bateria completa de quality gates locais"; \
	sec "Limpeza:"; \
	cmd "clean"          "Remove binários de questões gerados ([A-Z], *.debug)"; \
	echo ""

### ================================
### SETUP & ENVIRONMENT
### ================================
setup: setup-hooks
	echo "🔍 Validando toolchains do sistema..."
	command -v $(CXX) > "/dev/null" 2>&1 && echo "  [OK] Compilador C++: $$($(CXX) --version | head -n 1)" || echo "  [AVISO] Compilador C++ não encontrado!"
	command -v python3 > "/dev/null" 2>&1 && echo "  [OK] Python 3: $$(python3 --version)" || echo "  [AVISO] Python 3 não encontrado!"
	echo "✅ Setup concluído com sucesso!"

setup-hooks:
	echo "🔧 Configurando githooks locais..."
	chmod 0755 .githooks/* 2> "/dev/null" || true
	git config core.hooksPath .githooks
	echo "✅ core.hooksPath configurado para .githooks"

### ================================
### SUFFIX RULES FOR COMPETITIVE PROGRAMMING
### ================================
.cpp:
	echo "🔨 Compilando $@ (Modo Submissão -O3)..."
	$(CXX) $(CXXFLAGS) $< -o $@

.cpp.debug:
	echo "🐞 Compilando $@ (Modo Sanitizer/Debug)..."
	$(CXX) $(DBGFLAGS) $< -o $@

### ================================
### QUALITY & INTEGRITY GATES
### ================================
lint: check-binaries
	echo "🔍 Validando arquivos Markdown com Prettier..."
	if command -v prettier > "/dev/null" 2>&1; then \
		find . -name "*.md" -not -path "*/.git/*" -exec prettier --check {} +; \
		echo "✅ Formatação Markdown 100% íntegra!"; \
	else \
		echo "ℹ️ Prettier não encontrado no PATH, ignorando validação."; \
	fi

format: clang-format prettier
	echo "✅ Formatação concluída!"

clang-format:
	echo "🎨 Formatando códigos C++ com clang-format..."
	find . -type f \( -name "*.cpp" -o -name "*.hpp" -o -name "*.h" \) -not -path "*/.*" -exec clang-format -i {} + 2> "/dev/null" || true

prettier:
	echo "🎨 Formatando documentação com Prettier..."
	if command -v prettier > "/dev/null" 2>&1; then \
		find . -name "*.md" -not -path "*/.git/*" -exec prettier --write {} +; \
		echo "✅ Documentação formatada com sucesso!"; \
	elif command -v npx > "/dev/null" 2>&1; then \
		npx prettier --write "**/*.md" 2> "/dev/null" || true; \
	fi

check-binaries:
	echo "🔍 Verificando se há binários compilados rastreados pelo Git..."
	TRACKED_BINS=$$(git ls-files | grep -E '(\.(exe|out|app|bin|o|obj|a|so|dylib)|\b[A-Z]\b)$$' || true); \
	if [ -n "$$TRACKED_BINS" ]; then \
		echo "❌ ERRO: Binários indevidos rastreados no Git: $$TRACKED_BINS" >&2; \
		exit 1; \
	fi
	echo "✅ Nenhum binário indevido rastreado."

ci: lint
	echo "🚀 Repositório 100% pronto para commit e push!"

### ================================
### CLEANUP
### ================================
clean:
	echo "🧹 Removendo binários e arquivos intermediários..."
	rm -f [A-Z] [A-Z].exe [A-Z].debug *.debug *.out a.out
	find . -type f \( -name "*.o" -o -name "*.obj" -o -name "in" -o -name "out" \) -exec rm -f {} + 2> "/dev/null" || true
	find . -type d -name "__pycache__" -exec rm -rf {} + 2> "/dev/null" || true
	echo "✅ Limpeza concluída."
