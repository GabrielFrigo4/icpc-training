.POSIX:
.SILENT:

MAKEFLAGS += --no-print-directory -s

# ----------------------------------------------------------------
# Makefile: ICPC Team Reference Document (TRD) LaTeX
# ----------------------------------------------------------------

LATEXMK    = latexmk
PDFLATEX   = pdflatex

TARGETS    = main.pdf

CHAPTERS   != find . -maxdepth 1 -name "cap*.tex" 2> "/dev/null" || true

.PHONY: default help all main clean clear distclean format format-md

.SUFFIXES:
.SUFFIXES: .tex .pdf

default: main

### ================================
### HELP & DOCUMENTATION
### ================================
help:
	_e=$$'\e'; \
	cmd() { printf "    $${_e}[36mmake %-20s$${_e}[0m %s\n" "$$1" "$$2"; }; \
	sec() { printf "\n  $${_e}[1;33m%s$${_e}[0m\n" "$$1"; }; \
	printf "\n  $${_e}[1;37mICPC TRD LaTeX — Caderno de Consultas da Maratona$${_e}[0m\n"; \
	printf "  ============================================================\n"; \
	sec "Compilação:"; \
	cmd "main"                "Compila o caderno principal (main.pdf) [alvo padrão]"; \
	cmd "all"                 "Compila todos os documentos LaTeX"; \
	sec "Qualidade & Formatação:"; \
	cmd "format"              "Formata documentação Markdown (prettier)"; \
	sec "Limpeza:"; \
	cmd "clean"               "Remove pasta build/ e arquivos temporários (.aux, .log)"; \
	cmd "clear"               "Alias de clean"; \
	cmd "distclean"           "Limpeza profunda (remove temporários e PDFs gerados)"; \
	echo ""

### ================================
### BATCH TARGETS
### ================================
all: $(TARGETS)
	printf "\n==> Todos os documentos foram compilados com sucesso!\n"

main: main.pdf

format: format-md

format-md:
	if command -v prettier > "/dev/null" 2>&1; then \
		printf "%s\n" "Formatando documentação Markdown do LaTeX com prettier..."; \
		prettier --write "*.md" > "/dev/null" 2>&1 || true; \
	fi

### ================================
### DOCUMENTS
### ================================
main.pdf: main.tex $(CHAPTERS)

.tex.pdf:
	mkdir -p build
	printf "%s" "-> Compilando $@... "
	if command -v $(LATEXMK) > "/dev/null" 2>&1; then \
		$(LATEXMK) -pdf -silent -interaction=nonstopmode -outdir=build $< > "/dev/null" 2>&1; \
	else \
		$(PDFLATEX) -interaction=batchmode -output-directory=build $< > "/dev/null" 2>&1 || true; \
		$(PDFLATEX) -interaction=batchmode -output-directory=build $< > "/dev/null" 2>&1 || true; \
	fi
	cp build/$@ $@ 2> "/dev/null" || true
	printf "%s\n" "[OK]"

### ================================
### CLEANUP
### ================================
clean:
	rm -rf build
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.fls *.fdb_latexmk

clear: clean

distclean: clean
	rm -f $(TARGETS)
	if command -v $(LATEXMK) > "/dev/null" 2>&1; then $(LATEXMK) -C > "/dev/null" 2>&1 || true; fi
