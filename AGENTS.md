# 🤖 AGENTS.md — Diretrizes para Agentes de IA no Marathon Hub

Bem-vindo ao repositório **Marathon Hub** (`marathon-training`). Este documento serve como diretriz canônica e instrução primária para agentes de Inteligência Artificial operando nesta base de código.

---

## 1. Identidade e Papel

O objetivo deste projeto é o treinamento intensivo e simulação de provas da equipe de maratona rumo à **Final Nacional do ICPC** e competições associadas.

- **Stack:** C++23, Python 3.12+ (stress tests).
- **Foco:** Resolução ótima sob restrições severas de tempo/memória.

---

## 2. Regras Críticas para AIs

1. **Compilação Estrita:** Todo código C++ deve compilar com `-std=c++23 -O2 -Wall -Wextra`.
2. **Zero Poluição:** Nunca comitar binários compilados (`*.out`, `*.o`, `main`).
3. **Padrão de Arquitetura:** Respeitar a estrutura real de simulações, como `nacional-2026/`.
4. **Formatador:** Documentações devem respeitar o `.prettierrc` canônico.
5. **Commits Semânticos:** Mensagens de commit devem seguir Conventional Commits.

---

## 3. Boy Scout Rule

Sempre deixe o acampamento mais limpo do que encontrou:

- [ ] Remova `include`s não utilizados.
- [ ] Otimize loops e estruturas de dados subótimas se não quebrar corretude.
- [ ] Verifique se há arquivos de input/output grandes não ignorados e os remova/ignore.
- [ ] Se criar um mock/script temporário, delete após o uso ou adicione no `.gitignore`.

---

## 4. Comandos de Verificação Rápidos

| Comando       | Descrição                                        |
| ------------- | ------------------------------------------------ |
| `make help`   | Exibe os alvos disponíveis                       |
| `make format` | Formata os arquivos `.md` e `.json` com Prettier |
| `make lint`   | Executa as checagens e verificações estáticas    |
| `make hooks`  | Configura os githooks locais                     |
| `make ci`     | Roda a pipeline simulada localmente              |

---

## 5. Referências

- [Regras de Agentes](.agents/rules/principles.md)
- [Princípios Universais](PRINCIPLES.md)
- [Makefile](Makefile)

---

```text
Marathon/
├── .githooks/
├── .github/workflows/
├── nacional-2026/
│   ├── 2019/ .. 2025/
│   └── README.md
├── AGENTS.md
├── COMPILER.md
├── EDITOR.md
├── MAKEFILE.md
├── Makefile
├── PRINCIPLES.md
├── README.md
└── LICENSE
```
