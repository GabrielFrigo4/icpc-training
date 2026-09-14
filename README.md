<div align="center">

# 🎈 Treino para a Maratona SBC de Programação (ICPC)

**Simulados em equipe, upsolving e preparação para as fases da Maratona SBC**

[![Codeforces](https://img.shields.io/badge/Codeforces-Gerbunte-1F8ACB?style=for-the-badge&logo=codeforces&logoColor=white)](https://codeforces.com/profile/Gerbunte)
[![GitHub](https://img.shields.io/badge/GitHub-GabrielFrigo4-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/GabrielFrigo4)

[![Linux](https://img.shields.io/badge/Platform-Linux%20%2F%20GCC-FCC624?style=for-the-badge&logo=linux&logoColor=black)](COMPILER.md#c23-no-linux-gcc)
[![FreeBSD](https://img.shields.io/badge/Platform-FreeBSD%20%2F%20Clang-AB2B28?style=for-the-badge&logo=freebsd&logoColor=white)](COMPILER.md#c23-no-freebsd-clang)

[![Language](https://img.shields.io/badge/C%2B%2B-23-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)](COMPILER.md)
[![Language](https://img.shields.io/badge/Python-3-3776AB?style=for-the-badge&logo=python&logoColor=white)](COMPILER.md#execução-em-python--pypy)
[![Language](https://img.shields.io/badge/PyPy-3-FFD43B?style=for-the-badge&logo=pypy&logoColor=black)](COMPILER.md#execução-em-python--pypy)

[![Editor](https://img.shields.io/badge/Editor-Vim-019733?style=for-the-badge&logo=vim&logoColor=white)](EDITOR.md#vim)
[![Editor](https://img.shields.io/badge/Editor-GNU_Emacs-7F5AB6?style=for-the-badge&logo=gnuemacs&logoColor=white)](EDITOR.md#gnu-emacs)

<p align="center">
  <a href="#visao-geral">Visão Geral</a> •
  <a href="#ciclos-de-treino">Ciclos de Treino</a> •
  <a href="#arquitetura-do-repositorio">Estrutura</a> •
  <a href="COMPILER.md">Compilação</a> •
  <a href="EDITOR.md">Editores</a> •
  <a href="MAKEFILE.md">Makefile</a> •
  <a href="#regras-do-trio">Regras do Trio</a>
</p>

---

</div>

<h2 id="visao-geral">📌 Visão Geral</h2>

Repositório central de treinos do trio para as etapas da **Maratona SBC de Programação (ICPC Latin America)**. O objetivo é registrar o histórico de simulados cronometrados em condições oficiais, armazenar as soluções aceitas em prova e acompanhar o ciclo contínuo de upsolving.

- **Metodologia:** 1 máquina por trio, 5 horas ininterruptas, formato _split_ (3h cegas + 2h com desbloqueio de tópicos).
- **Linguagens:** C++23 (padrão de prova), Python 3 e PyPy 3.
- **Ambientes:** Linux (GCC) e FreeBSD (Clang).
- **Guias Técnicos:** Configurações de compilação em [COMPILER.md](COMPILER.md), setups de editores em [EDITOR.md](EDITOR.md) e automação em [MAKEFILE.md](MAKEFILE.md).

---

<h2 id="ciclos-de-treino">🎯 Ciclos de Treino</h2>

Cada diretório corresponde ao ciclo de preparação para um evento da temporada:

| Diretório                          | Evento-Alvo           | Sede / Formato        |      Janela de Treino      |     Status      |
| :--------------------------------- | :-------------------- | :-------------------- | :------------------------: | :-------------: |
| [`nacional-2026/`](nacional-2026/) | Final Brasileira 2026 | Uberlândia - MG (UFU) | Finais LatAm (2019 a 2025) | 🟡 Em andamento |

---

<h2 id="arquitetura-do-repositorio">📂 Arquitetura do Repositório</h2>

```text
maratona-sbc/
├── nacional-2026/
│   ├── README.md
│   ├── 2019/
│   ├── 2020/
│   └── ...
├── COMPILER.md
├── EDITOR.md
├── MAKEFILE.md
├── Makefile
└── README.md
```

- **`nacional-2026/`**: Diretório do ciclo ativo focado na Final Brasileira 2026, reunindo o cronograma semanal e as resoluções de prova.
- **`README.md`**: Cronograma com links diretos do Codeforces Gym, divisão de prova (3h cegas + 2h com tópicos) e tracking de upsolving.
- **`AAAA/`** (`2019/`, `2020/`, ...): Pasta de cada edição simulada com as soluções aceitas (`A.cpp`, `B.py`) e o log de erros pós-prova (`NOTES.md`).

- **`COMPILER.md`**: Comandos e flags de compilação para GCC (Linux), Clang (FreeBSD) e execução em Python/PyPy.
- **`EDITOR.md`**: Configurações mínimas de 30 segundos para Vim e Emacs em máquinas zeradas de Warmup.
- **`MAKEFILE.md`**: Referência de automação POSIX para compilar com flags de prova e modo depuração com sanitizers.
- **`Makefile`**: Arquivo de build universal para terminal (`make A`, `make A.debug`, `make clean`).
- **`README.md`**: Visão geral da equipe, índice de ciclos de treino e protocolos de prova do trio.

---

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
