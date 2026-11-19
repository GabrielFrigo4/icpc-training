---
description: Diretrizes específicas de programação competitiva (ICPC, OBI, Codeforces) e restrições C++23 no repositório Marathon.
globs: "**/*"
always_on: true
---

# ICPC Marathon Hub AI Principles

## 1. Foco e Propósito

Este repositório é dedicado ao treinamento intensivo e simulações para competições de programação (ICPC, OBI, Codeforces). Todas as soluções devem visar complexidade ótima em tempo e espaço.

## 2. Restrições Técnicas Críticas

- **Performance**: O código não deve desperdiçar ciclos de CPU ou memória. Em C++, evite `std::endl`, prefira `\n` e o uso de fast I/O (`cin.tie(NULL)`).
- **Compilação**: Use estritamente C++23. Invariante principal: todo código C++ deve compilar com `-std=c++23 -O3 -Wall -Wextra -Wconversion -Wshadow`.
- **Organização**: Respeite a estrutura canônica de diretórios do repositório (`maratona/` para acervos e simulados por fase/edição, `modelo/` para template C++23 e `Makefile` de prova, `configurações/` para setups rápidos de editores e `consultas/` para o caderno TRD em LaTeX). Nada de arquivos soltos.
- **Limpeza**: NUNCA comite binários ou arquivos temporários.

## 3. Qualidade e Formatação

- Utilize a formatação Prettier (via `.prettierrc`) para arquivos Markdown.
- Commits semânticos e concisos. Siga as orientações em `PRINCIPLES.md` (o documento canônico).

## Referências

Para mais detalhes de governança, veja:

- [PRINCIPLES.md](../../PRINCIPLES.md)
- `.githooks/pre-commit`
