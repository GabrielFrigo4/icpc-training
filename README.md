# Treino para a Maratona SBC de Programação (ICPC)

> **Simulados em equipe, upsolving e preparação para as fases da Maratona SBC**

[![Codeforces](https://img.shields.io/badge/Codeforces-Gerbunte-1F8ACB?style=for-the-badge&logo=codeforces&logoColor=white)](https://codeforces.com/profile/Gerbunte)
[![GitHub](https://img.shields.io/badge/GitHub-GabrielFrigo4-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/GabrielFrigo4)
[![Linux](https://img.shields.io/badge/Platform-Linux%20%2F%20GCC-FCC624?style=for-the-badge&logo=linux&logoColor=black)](modelo/README.md#c23-no-linux-gcc)
[![FreeBSD](https://img.shields.io/badge/Platform-FreeBSD%20%2F%20Clang-AB2B28?style=for-the-badge&logo=freebsd&logoColor=white)](modelo/README.md#c23-no-freebsd-clang)
[![Language](https://img.shields.io/badge/C%2B%2B-23-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)](modelo/README.md)
[![Language](https://img.shields.io/badge/Python-3-3776AB?style=for-the-badge&logo=python&logoColor=white)](modelo/README.md#execução-em-python--pypy)
[![Language](https://img.shields.io/badge/PyPy-3-FFD43B?style=for-the-badge&logo=pypy&logoColor=black)](modelo/README.md#execução-em-python--pypy)
[![Editor](https://img.shields.io/badge/Editor-Vim-019733?style=for-the-badge&logo=vim&logoColor=white)](configurações/README.md#vim)
[![Editor](https://img.shields.io/badge/Editor-GNU_Emacs-7F5AB6?style=for-the-badge&logo=gnuemacs&logoColor=white)](configurações/README.md#gnu-emacs)

[Visão Geral](#visao-geral) • [Ciclos de Treino](#ciclos-de-treino) • [Estrutura](#arquitetura-do-repositorio) • [Modelo & Compilação](modelo/README.md) • [Editores](configurações/README.md) • [Consultas](consultas/README.md) • [Regras do Trio](#regras-de-ouro-do-trio)

---

## Visão Geral

Repositório central de treinos do trio para as etapas da **Maratona SBC de Programação (ICPC Latin America)**. O objetivo é registrar o histórico de simulados cronometrados em condições oficiais, armazenar as soluções aceitas em prova e acompanhar o ciclo contínuo de upsolving.

- **Metodologia:** 1 máquina por trio, 5 horas ininterruptas, formato _split_ (3h cegas + 2h com desbloqueio de tópicos).
- **Linguagens:** C++23 (padrão de prova), Python 3 e PyPy 3.
- **Ambientes:** Linux (GCC) e FreeBSD (Clang).
- **Guias Técnicos:** Template, `Makefile` de prova e flags de compilação em [`modelo/`](modelo/README.md), setups de editores em [`configurações/`](configurações/README.md) e caderno de consultas (TRD) em LaTeX em [`consultas/`](consultas/README.md).

---

## Ciclos de Treino

Cada diretório corresponde ao ciclo de preparação para um evento da temporada:

| Diretório                                  | Evento-Alvo           | Sede / Formato        |      Janela de Treino      |     Status      |
| :----------------------------------------- | :-------------------- | :-------------------- | :------------------------: | :-------------: |
| [`maratona/nacional/`](maratona/nacional/) | Final Brasileira 2026 | Uberlândia - MG (UFU) | Finais LatAm (2019 a 2025) | 🟡 Em andamento |

---

## Arquitetura do Repositório

```text
maratona-sbc/
├── maratona/
│   ├── nacional/
│   ├── regional/
│   ├── latino/
│   └── mundial/
├── modelo/
│   ├── Makefile
│   ├── template.cpp
│   └── README.md
├── configurações/
│   └── README.md
├── consultas/
│   └── README.md
└── README.md
```

- **`maratona/`**: Diretório dos ciclos de treino divididos por fase (nacional, regional, latino, mundial), reunindo o cronograma semanal e resoluções de prova.
- **`modelo/`**: Template oficial de prova C++ (`template.cpp`), `Makefile` de bancada e flags de compilação.
- **`configurações/`**: Configurações de 30 segundos para Vim, Emacs e editores de prova.
- **`consultas/`**: Caderno de consultas (TRD) impresso em LaTeX com algoritmos e teoremas de referência.
- **`README.md`**: Visão geral da equipe, índice de ciclos de treino e protocolos de prova do trio.

---

## ⚔️ Regras de Ouro do Trio

```text
┌───────────────────────────────────────────────────────────────────────────┐
│                           PROTOCOLO DE PROVA                              │
├───────────────────────────────────────────────────────────────────────────┤
│ 1. NUNCA CODAR SEM IDEIA FECHADA                                          │
│    Se a complexidade não cabe no limite ou a lógica tem pontas soltas,    │
│    o teclado fica livre para quem já tem código pronto para digitar.      │
│                                                                           │
│ 2. REVEZAMENTO DO TECLADO                                                 │
│    Enquanto um membro digita, os outros dois resolvem no papel, simulam   │
│    casos de teste manuais e debugam saídas com erro de submissão.         │
│                                                                           │
│ 3. REGRA DO WRONG ANSWER                                                  │
│    Tomou WA? Imprima o código ou saia da máquina imediatamente para ler   │
│    com calma. Não gaste tempo de tela caçando bug no escuro.              │
└───────────────────────────────────────────────────────────────────────────┘
```
