.POSIX:
.SILENT:

MAKEFLAGS += --no-print-directory -s

# ----------------------------------------------------------------
# Makefile: ICPC Contest Template & Local Problem Builder
# ----------------------------------------------------------------

CXX      ?= c++
CXXFLAGS ?= -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23
DBGFLAGS ?= -fsanitize=address,undefined -g -Wall -Wextra -Wconversion -Wshadow -std=c++23

.SUFFIXES:
.SUFFIXES: .cpp .debug

.PHONY: clean help

### ================================
### HELP & DOCUMENTATION
### ================================
help:
	_e=$$'\e'; \
	cmd() { printf "    $${_e}[36mmake %-16s$${_e}[0m %s\n" "$$1" "$$2"; }; \
	sec() { printf "\n  $${_e}[1;33m%s$${_e}[0m\n" "$$1"; }; \
	printf "\n  $${_e}[1;37mModelo de Prova ICPC — Compilação Local$${_e}[0m\n"; \
	printf "  ========================================\n"; \
	sec "Alvos Disponíveis:"; \
	cmd "<Questão>"  "Compila <Questão>.cpp em modo submissão (-O3)"; \
	cmd "<Q>.debug"  "Compila <Q>.cpp com AddressSanitizer e UBSan"; \
	cmd "clean"      "Remove binários gerados ([A-Z], *.debug)"; \
	cmd "help"       "Exibe esta ajuda"; \
	echo ""

### ================================
### SUFFIX RULES
### ================================
.cpp:
	$(CXX) $(CXXFLAGS) $< -o $@

.cpp.debug:
	$(CXX) $(DBGFLAGS) $< -o $@

### ================================
### CLEANUP
### ================================
clean:
	rm -f [A-Z] *.debug
