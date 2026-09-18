# 🏆 Preparação: Final Nacional 2026 (Uberlândia - MG)

Cronograma semanal de simulados e estudos em equipe para a Final Brasileira da Maratona SBC. Provas disputadas em ordem cronológica (2019 a 2025), sempre às quintas-feiras.

- **Linguagens:** C++23, Python 3 e PyPy 3
- **Ambiente de Simulado:** 1 computador compartilhado, 5 horas ininterruptas, sem internet externa.
- **Formato Split (3h + 2h):**
    - **Primeiras 3h (Simulação Pura):** Leitura cega, caça aos problemas fáceis/médios e resolução sem qualquer pista externa.
    - **Últimas 2h (Desbloqueio de Temas):** Liberação da lista com os algoritmos/tópicos de cada questão restante, trocando o bloqueio de ideia por treino pesado de modelagem e implementação.

---

## 🔁 Dinâmica do Ciclo Semanal

```text
┌──────────────────────────┐        ┌──────────────────────────┐        ┌──────────────────────────┐
│       QUINTA-FEIRA       │        │     SEXTA A DOMINGO      │        │     SEGUNDA A QUARTA     │
├──────────────────────────┤        ├──────────────────────────┤        ├──────────────────────────┤
│  Simulado Oficial (5h)   │  ───►  │  Upsolving Imediato      │  ───►  │  Estudo & Templates      │
│  • 0h–3h: Prova às cegas │        │  • Questões "na trave"   │        │  • Tema teórico do ciclo │
│  • 3h–5h: Revela tópicos │        │  • Análise de erros/WA   │        │  • Implementação guiada  │
│  • 1 PC compartilhado    │        │  • Código até o Accepted │        │  • Refinar Team Notebook │
└─────────────┴────────────┘        └──────────────────────────┘        └─────────────┬────────────┘
              ▲                                                                       │
              └────────────────────────  [ Repete o Ciclo ] ──────────────────────────┘
```

- **Quinta-feira (Simulado com Desbloqueio):**
- **0h00 às 3h00 (Foco Competitivo):** Trio operando em condições 100% reais de prova. Identificar balões rápidos, alinhar estratégia de teclado e abrir o placar.
- **3h00 às 5h00 (Foco de Aprendizado):** Entrega do "gabarito de temas" (tags dos problemas). Em vez de o time ficar travado sem saber por onde começar, a discussão vira: _"sabendo que isso é 2-SAT / Convex Hull Trick, como a gente modela a entrada para essa técnica?"_.

- **Sexta a Domingo (Upsolving):** Análise pós-prova, discussão do que deu errado na implementação e finalização dos códigos até bater o `Accepted`.
- **Segunda a Quarta (Estudo Temático & Notebook):** Treino deliberado nos tópicos teóricos da prova semanal ([`TEMAS.md`](2019/TEMAS.md)) e inclusão de código testado no caderno do time.

---

## 📅 Calendário de Simulados & Temas Semanais

|    Semana    | Data (Quinta) | Prova Oficial                                                |      Temas da Prova       |        Temas dos Exercícios         | Status | Upsolved |
| :----------: | :-----------: | :----------------------------------------------------------- | :-----------------------: | :---------------------------------: | :----: | :------: |
| **Semana 1** |     17/09     | [Gym 102428 (LatAm 2019)](https://codeforces.com/gym/102428) | [TEMAS.md](2019/TEMAS.md) | [EXERCICIOS.md](2019/EXERCICIOS.md) |  [x]   |  5 / 13  |
| **Semana 2** |     24/09     | [Gym 103185 (LatAm 2020)](https://codeforces.com/gym/103185) | [TEMAS.md](2020/TEMAS.md) | [EXERCICIOS.md](2020/EXERCICIOS.md) |  [ ]   |  0 / 14  |
| **Semana 3** |     01/10     | [Gym 103640 (LatAm 2021)](https://codeforces.com/gym/103640) | [TEMAS.md](2021/TEMAS.md) | [EXERCICIOS.md](2021/EXERCICIOS.md) |  [ ]   |  0 / 13  |
| **Semana 4** |     08/10     | [Gym 104252 (LatAm 2022)](https://codeforces.com/gym/104252) | [TEMAS.md](2022/TEMAS.md) | [EXERCICIOS.md](2022/EXERCICIOS.md) |  [ ]   |  0 / 13  |
| **Semana 5** |     15/10     | [Gym 104736 (LatAm 2023)](https://codeforces.com/gym/104736) | [TEMAS.md](2023/TEMAS.md) | [EXERCICIOS.md](2023/EXERCICIOS.md) |  [ ]   |  0 / 13  |
| **Semana 6** |     22/10     | [Gym 105505 (LatAm 2024)](https://codeforces.com/gym/105505) | [TEMAS.md](2024/TEMAS.md) | [EXERCICIOS.md](2024/EXERCICIOS.md) |  [ ]   |  0 / 13  |
| **Semana 7** |     29/10     | [Gym 106178 (LatAm 2025)](https://codeforces.com/gym/106178) | [TEMAS.md](2025/TEMAS.md) | [EXERCICIOS.md](2025/EXERCICIOS.md) |  [ ]   |  0 / 13  |
| **Semana 8** |     05/11     | _Viagem / Warmup Oficial (UFU)_                              |             —             |                  —                  |   —    |    —     |

---

## 📂 Organização das Pastas

Cada prova simulada possui seu diretório dedicado dentro de `nacional-2026/`:

```text
nacional-2026/
├── 2019/
│   ├── A.cpp
│   ├── B.py
│   ├── TEMAS.md
│   └── EXERCICIOS.md
├── 2020/
│   ├── TEMAS.md
│   └── EXERCICIOS.md
└── README.md
```

- **A.cpp / B.py**: Soluções em C++23 ou Python/PyPy aceitas em prova ou finalizadas no upsolving.
- **TEMAS.md (Temas da Prova)**: Relação concisa dos tópicos algorítmicos abordados na prova com links de fontes canônicas (CP-Algorithms, USACO Guide) para revisão teórica de Segunda a Quarta. Livre de spoilers e sem citar as questões do simulado.
- **EXERCICIOS.md (Temas dos Exercícios)**: Mapeamento direto de cada problema [A..M] com seu respectivo tema, técnica e complexidade esperada. Mantido em sigilo nas primeiras 3h de simulado e liberado às 3h00 ou no upsolving.

---

## 🔗 Recursos Oficiais

- **[Histórico da Maratona SBC](https://www.google.com/search?q=https://maratona.sbc.org.br/hist/hist.html)**: Pacotes oficiais com cadernos de problemas originais (PDFs), editoriais dos autores e casos de teste brutos (entradas e saídas) para depuração local.
- **[Codeforces Gym](https://codeforces.com/gyms)**: Plataforma para executar os simulados virtuais de 5 horas em equipe, com contagem regressiva, congelamento de placar e submissões contra os testes oficiais.
- **[Beecrowd Contests](https://judge.beecrowd.com/)**: Juiz com o acervo histórico da Maratona SBC, ideal para submeter e validar soluções individuais durante o período de upsolving.
