# 🤖 AGENTS.md — Diretrizes para Agentes de IA no Marathon Hub

Bem-vindo ao repositório **Marathon Hub** (`marathon-training`). Este documento serve como diretriz canônica e instrução primária para agentes de Inteligência Artificial operando nesta base de código.

---

## 🎯 Missão e Escopo do Repositório

O objetivo deste projeto é o treinamento intensivo e simulação de provas da equipe de maratona da UFABC (GRUB) rumo à **Final Nacional do ICPC 2026** e competições associadas (OBI, Maratona Paulista, Codeforces Div. 1/2).

- **Linguagens Centrais:** C++23 (primária), Python 3.12+ (stress tests e scripts) e Rust.
- **Foco:** Resolução ótima sob restrições severas de tempo e memória, invariantes matemáticas e modularidade.

---

## 🏗️ Arquitetura de Diretórios

```text
Marathon/
├── contests/                 # Simulações de provas e submissões por maratona
├── templates/                # Templates competitivos rápidos
├── scripts/                  # Ferramentas de estresse, geradores de casos e runners
├── .githooks/                # Quality gates locais
├── .github/workflows/        # CI/CD de validação de compilação
├── Makefile                  # Orquestrador POSIX silencioso
├── PRINCIPLES.md             # 18 Princípios de Engenharia adaptados a maratonas
└── README.md                 # Visão geral do repositório
```

---

## ⚙️ Regras Críticas para Agentes

1. **Compilação Estrita C++23:** Todo código C++ deve compilar com `-std=c++23 -O2 -Wall -Wextra`.
2. **Zero Poluição:** Nunca comitar binários compilados (`*.out`, `*.o`, `main`).
3. **Formatador Prettier:** Documentações Markdown devem respeitar o `.prettierrc` canônico.
4. **Commits Semânticos:** Mensagens de commit devem seguir Conventional Commits (`feat:`, `fix:`, `docs:`, `add:`).
