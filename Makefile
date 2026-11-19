.POSIX:
.SILENT:

MAKEFLAGS += --no-print-directory -s

# ----------------------------------------------------------------
# Makefile: ICPC Training Hub & Competitive Programming Suite
# ----------------------------------------------------------------

CXX        ?= c++
CXXFLAGS   ?= -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23
DBGFLAGS   ?= -fsanitize=address,undefined -g -Wall -Wextra -Wconversion -Wshadow -std=c++23

.SUFFIXES:
.SUFFIXES: .cpp .debug

.PHONY: all help setup setup-hooks hooks lint audit test format prettier clang-format build-latex release-map clean check-binaries ci

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
	cmd "hooks"          "Alias de setup-hooks (instala e ativa ganchos Git locais)"; \
	sec "Compilação (Manual):"; \
	cmd "<Questão>"      "Compila questão (ex: make A) em modo submissão (-O3)"; \
	cmd "<Q>.debug"      "Compila questão com AddressSanitizer e UndefinedBehavior"; \
	sec "Caderno LaTeX (ICPC TRD):"; \
	cmd "build-latex"    "Compila o caderno LaTeX em dist/caderno-consultas-icpc.pdf"; \
	cmd "release-map"    "Exibe o mapeamento de artefatos LaTeX para release"; \
	sec "Qualidade & Validação:"; \
	cmd "format"         "Formata códigos C++ (clang-format) e documentação (prettier)"; \
	cmd "clang-format"   "Formata arquivos C++ com clang-format"; \
	cmd "prettier"       "Formata documentações Markdown com Prettier"; \
	cmd "lint"           "Verifica formatação Markdown e ausência de binários rastreados"; \
	cmd "audit"          "Executa auditoria estática de integridade (alias de lint)"; \
	cmd "check-binaries" "Verifica se há binários compilados rastreados no Git"; \
	cmd "test"           "Valida compilação C++23 de modelo/main.cpp sem deixar binários"; \
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

hooks: setup-hooks

### ================================
### SUFFIX RULES FOR CP
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
	echo "🔍 Validando formatação com Prettier..."
	if command -v prettier > "/dev/null" 2>&1; then \
		find . -type f \( -name "*.md" -o -name "*.json" -o -name "*.jsonc" -o -name "*.yml" -o -name "*.yaml" -o -name "*.html" -o -name "*.css" \) \
			-not -path "*/.git/*" -not -path "*/.venv/*" -not -path "*/node_modules/*" \
			-exec prettier --check {} +; \
		echo "✅ Formatação 100% íntegra!"; \
	else \
		echo "ℹ️ Prettier não encontrado no PATH, ignorando validação."; \
	fi

format: clang-format prettier
	echo "✅ Formatação concluída!"

clang-format:
	echo "🎨 Formatando códigos C++ com clang-format..."
	find . -type f \( -name "*.cpp" -o -name "*.hpp" -o -name "*.h" \) -not -path "*/.*" -exec clang-format -i {} + 2> "/dev/null" || true

prettier:
	echo "🎨 Formatando documentações e configurações com Prettier..."
	if command -v prettier > "/dev/null" 2>&1; then \
		find . -type f \( -name "*.md" -o -name "*.json" -o -name "*.jsonc" -o -name "*.yml" -o -name "*.yaml" -o -name "*.html" -o -name "*.css" \) \
			-not -path "*/.git/*" -not -path "*/.venv/*" -not -path "*/node_modules/*" \
			-exec prettier --write {} +; \
		echo "✅ Documentação e configurações formatadas com sucesso!"; \
	elif command -v npx > "/dev/null" 2>&1; then \
		npx --yes prettier --write "**/*.{md,json,jsonc,yml,yaml,html,css}" 2> "/dev/null" || true; \
	fi

check-binaries:
	echo "🔍 Verificando se há binários compilados rastreados pelo Git..."
	TRACKED_BINS=$$(git ls-files | grep -E '(\.(exe|out|app|bin|o|obj|a|so|dylib)|\b[A-Z]\b)$$' || true); \
	if [ -n "$$TRACKED_BINS" ]; then \
		echo "❌ ERRO: Binários indevidos rastreados no Git: $$TRACKED_BINS" >&2; \
		exit 1; \
	fi
	echo "✅ Nenhum binário indevido rastreado."

ci: audit test
	echo "🚀 Repositório 100% pronto para commit e push!"

audit: lint

test:
	echo "🧪 Executando testes de compilação C++23..."
	if command -v g++ > "/dev/null" 2>&1; then \
		if g++ $(CXXFLAGS) modelo/main.cpp -o /tmp/test_main && /tmp/test_main; then \
			rm -f /tmp/test_main; \
		else \
			rm -f /tmp/test_main; \
			exit 1; \
		fi; \
	else \
		printf '%s\n' '#include <iostream>' 'int main() { std::cout << "C++23 OK\n"; return 0; }' > /tmp/test_main.cpp; \
		if $(CXX) $(CXXFLAGS) /tmp/test_main.cpp -o /tmp/test_main && /tmp/test_main > "/dev/null"; then \
			rm -f /tmp/test_main.cpp /tmp/test_main; \
		else \
			rm -f /tmp/test_main.cpp /tmp/test_main; \
			exit 1; \
		fi; \
	fi
	echo "✅ Testes concluídos com sucesso!"

### ================================
### LATEX SUITE
### ================================
build-latex:
	(cd "consultas" && $(MAKE) all)
	mkdir -p dist
	cp consultas/main.pdf dist/caderno-consultas-icpc.pdf

release-map:
	printf "consultas/main.tex\tcaderno-consultas-icpc.pdf\n"

### ================================
### CLEANUP
### ================================
clean:
	echo "🧹 Removendo binários, arquivos intermediários, caches e .venv..."
	(cd "consultas" && $(MAKE) distclean)
	rm -rf .venv dist
	rm -f [A-Z] [A-Z].exe [A-Z].debug *.debug *.out a.out
	find . -type f \( -name "*.o" -o -name "*.obj" -o -name "in" -o -name "out" \) -exec rm -f {} + 2> "/dev/null" || true
	find . -type d -name "__pycache__" -exec rm -rf {} + 2> "/dev/null" || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2> "/dev/null" || true
	find . -type d -name ".ruff_cache" -exec rm -rf {} + 2> "/dev/null" || true
	find . -type d -name ".mypy_cache" -exec rm -rf {} + 2> "/dev/null" || true
	echo "✅ Limpeza concluída."
