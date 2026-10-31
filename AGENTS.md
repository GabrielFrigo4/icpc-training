# 🤖 Marathon Hub — AI Agent Briefing

> Diretrizes canônicas para agentes de IA no repositório de treinamento e simulação oficial para a Maratona SBC / Final Nacional do ICPC.

---

## 🧭 Identidade e Papel

O objetivo deste projeto é o treinamento intensivo e simulação de provas da equipe de maratona rumo à **Final Nacional do ICPC** e competições associadas:

- **Stack:** C++23, Python 3.12+ (stress tests).
- **Foco:** Resolução ótima sob restrições severas de tempo/memória.

---

## 📁 Estrutura do Repositório

```text
Marathon/
├── .agents/                   # Governança e regras locais de IA
├── .githooks/                 # Quality gates de pre-commit e commit-msg
├── .github/workflows/         # Workflows de CI do GitHub Actions
├── nacional-2026/             # Simulações de provas oficiais (2019 .. 2025)
├── AGENTS.md                  # Este briefing de engenharia
├── COMPILER.md                # Configurações de compilador e flags oficiais
├── EDITOR.md                  # Configurações de editor de terminal
├── LICENSE                    # Licença MIT
├── MAKEFILE.md                # Documentação das regras de build
├── Makefile                   # Orquestrador POSIX silencioso
├── PRINCIPLES.md              # 22 Princípios de Engenharia aplicados
├── README.md                  # Apresentação do Marathon Hub
└── TODO.md                    # Matriz de progresso de simulações
```

---

## ⚠️ Regras Críticas para Agentes de IA

1. **Compilação Estrita:** Todo código C++ deve compilar com `-std=c++23 -O2 -Wall -Wextra`.
2. **Zero Poluição:** Nunca comitar binários compilados (`*.out`, `*.o`, `main`).
3. **Padrão de Arquitetura:** Respeitar a estrutura real de simulações em `nacional-2026/`.
4. **Formatador:** Documentações devem respeitar o `.prettierrc` canônico.
5. **Commits Semânticos:** Mensagens de commit devem seguir o padrão Conventional Commits.

6. **Taxonomia Tripartite de Comentários:** O código adota estritamente três categorias: 1. Comentários de Sistema = PERMITIDOS (shebangs, pragmas, linters); 2. Comentários Estruturais de 64/32 colunas = PERMITIDOS (cabeçalhos de 64 `-`, seções de 32 colunas `### ===` e `### ---` com títulos em MAIÚSCULO, réguas de 64 `=` em `.gitignore` com títulos em MAIÚSCULO, sem vazamento); 3. Comentários Explicativos/Narrativos = PROIBIDOS em código, configs E blocos de código dentro de Markdowns.

---

## 🛡️ Regra da Proatividade e Correção Contínua (Boy Scout Rule)

O agente de IA atua de forma proativa na manutenção e aplicação dos padrões canônicos deste repositório.

Ao identificar linhas ou artefatos fora dos padrões estabelecidos:

1. **Notificar concisamente** o usuário sobre o ajuste realizado.
2. **Corrigir a inconformidade**, aplicando o padrão correspondente:
    - **Taxonomia Tripartite de Comentários:** Eliminar comentários explicativos óbvios em código, configs e blocos de código em Markdowns, preservando exclusivamente comentários de sistema e delimitadores estruturais (64/32 colunas).
    - **Banners Estruturais:** Ajustar réguas para exatamente 64 hífens no topo ou 32 caracteres com `### ` no corpo (ou 64 `=` em `.gitignore`), com títulos sempre em MAIÚSCULO.
    - **Portabilidade POSIX:** Substituir bashismos (`[[ ]]`, `&>`, arrays, `source`) por sintaxe estrita POSIX `/bin/sh`.
    - **Shebang Universal:** Garantir sempre `#!/usr/bin/env sh` ou `#!/usr/bin/env python3`.
    - **Sequências ANSI & Escapes:** Não use octais (`\033`, `\001`) para caracteres ou escapes. Use `[ -t 1 ] && echo -n $\x27\e...\x27` ou notação hexadecimal (`\x01`, `\x1b`). Octal é exclusivo para permissões POSIX (`chmod 0755`, `chmod 0644`, `umask`).
    - **Redirecionamento Seguro:** Envolver destinos em aspas duplas (ex: `> "/dev/null" 2>&1`).
    - **Makefiles:** Assegurar cabeçalho `.POSIX: .SILENT:`, `MAKEFLAGS += --no-print-directory -s`, alinhamento estético de variáveis e zero `@` redundante.
    - **Permissões Canônicas:** Aplicar 4 dígitos octais (`chmod 0755`, `chmod 0644`, `chmod 0700`, `chmod 0600`).
    - **Invariante Out-of-the-Box:** Garantir modos octais corretos no Git Index e auto-cura em tempo de execução sem requerer intervenção manual pós-clone.
    - **Emissão Semântica de UI:** Substituir `echo` avulsos com emojis pelas rotinas canônicas `_ui_*`.
    - **Antifragilidade & Resiliência:** Resolução ativa de caminhos em cascata, auto-cura de permissões (0600 em chaves/segredos) e validação defensiva de pré-requisitos.
    - **Curadoria Cognitiva:** Capturar decisões estruturais e regras tácitas em skills locais compactas (`.agents/skills/`), mantendo-as atualizadas e expurgando ruído obsoleto.
    - **Refatoração Sem Legado:** Expurgar aliases obsoletos, variáveis mortas e shims de compatibilidade em renomeações.
    - **Elevação Antifrágil & Shift Seguro:** Usar o bloco explícito `if [ "$(id -u)" -ne 0 ]` para resolução de `ELEVATE` (evitando término fatal sob `set -e` como root) e proteger todo comando `shift` com validação prévia de parâmetros (`[ "$#" -ge N ] && shift N`).
    - **Simetria de Documentação:** Mover regras ou invariantes universais documentadas erroneamente em sub-membros específicos para o documento de arquitetura do grupo correspondente, eliminando falsas assimetrias.

---

## 🚀 Comandos de Verificação Rápida (Quality Gates)

| Comando            | Finalidade Operacional                                           |
| :----------------- | :--------------------------------------------------------------- |
| `make help`        | Exibe o catálogo completo de tarefas operacionais                |
| `make setup-hooks` | Configura os githooks locais e permissões executáveis            |
| `make lint`        | Executa verificações estáticas e ausência de binários compilados |
| `make format`      | Formata os arquivos `.md` e `.json` com Prettier                 |
| `make prettier`    | Formata arquivos Markdown com Prettier                           |
| `make test`        | Executa testes de integridade locais                             |
| `make clean`       | Remove artefatos compilados e temporários                        |
| `make ci`          | Executa a pipeline local completa de validação integrada         |

---

## 📖 Referências Obrigatórias

Antes de qualquer modificação neste ecossistema, consulte:

- [README.md](README.md) — Apresentação do Marathon Hub
- [PRINCIPLES.md](PRINCIPLES.md) — 22 Princípios de Engenharia aplicados
- [COMPILER.md](COMPILER.md) — Flags de compilador e ambiente ICPC
- [EDITOR.md](EDITOR.md) — Guia de configuração de editores
- [MAKEFILE.md](MAKEFILE.md) — Especificação de regras de build
- [TODO.md](TODO.md) — Matriz de progresso de simulações
- [LICENSE](LICENSE) — Licença MIT do projeto
- [Makefile](Makefile) — Catálogo de comandos e automações
- [.agents/rules/principles.md](.agents/rules/principles.md) — Princípios operacionais locais
