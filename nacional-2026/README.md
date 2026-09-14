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
- **Segunda a Quarta (Estudo Temático & Notebook):** Treino deliberado no tema semanal do cronograma e inclusão de código testado no caderno do time.

---

## 📅 Calendário de Simulados & Temas Semanais

| Semana       | Data (Quinta) | Prova Oficial                                                | Tema de Foco (Seg - Qua)                                                            | Status | Upsolved |
| ------------ | ------------- | ------------------------------------------------------------ | ----------------------------------------------------------------------------------- | ------ | -------- |
| **Semana 1** | 17/09         | [Gym 102428 (LatAm 2019)](https://codeforces.com/gym/102428) | **Base & Estratégia:** Ad-hoc, Guloso estruturado e Busca Binária                   | [ ]    | 0 / 13   |
| **Semana 2** | 24/09         | [Gym 103185 (LatAm 2020)](https://codeforces.com/gym/103185) | **Data Structures 1:** SegTree (Lazy), Fenwick 2D e DSU                             | [ ]    | 0 / 14   |
| **Semana 3** | 01/10         | [Gym 103640 (LatAm 2021)](https://codeforces.com/gym/103640) | **Grafos 1:** Pontes/Articulações, 2-SAT e Matching Bipartido (Kuhn)                | [ ]    | 0 / 13   |
| **Semana 4** | 08/10         | [Gym 104252 (LatAm 2022)](https://codeforces.com/gym/104252) | **DP:** DP em Árvore, DP com Bitmask / SOS DP                                       | [ ]    | 0 / 13   |
| **Semana 5** | 15/10         | [Gym 104736 (LatAm 2023)](https://codeforces.com/gym/104736) | **Strings & Hash:** Hashing duplo, KMP, Z-function e Aho-Corasick                   | [ ]    | 0 / 13   |
| **Semana 6** | 22/10         | [Gym 105505 (LatAm 2024)](https://codeforces.com/gym/105505) | **Matemática & Teoria dos Números:** Crivos, Exponenciação de Matriz e Combinatória | [ ]    | 0 / 13   |
| **Semana 7** | 29/10         | [Gym 106178 (LatAm 2025)](https://codeforces.com/gym/106178) | **Grafos 2 & Geometria:** Fluxo Máximo (Dinic), Min-Cut e Primitivas 2D             | [ ]    | 0 / 13   |
| **Semana 8** | 05/11         | _Viagem / Warmup Oficial (UFU)_                              | **Descanso, alinhamento psicológico e impressão do Notebook**                       | —      | —        |

---

## 📂 Organização das Pastas

Cada prova simulada possui seu diretório dedicado dentro de `nacional-2026/`:

```text
nacional-2026/
├── 2019/
│   ├── A.cpp
│   ├── B.py
│   └── NOTES.md
├── 2020/
└── README.md
```

- **A.cpp**: Solução em C++23 aceita durante a prova ou resolvida no upsolving, com complexidade anotada no cabeçalho.
- **B.py**: Solução alternativa ou script em Python 3 / PyPy 3, indicada para problemas de precisão arbitrária ou parsing extenso.
- **NOTES.md**: Registro pós-simulado contendo placar final do time, cronologia dos balões, motivos de penalidades (WA/TLE) e a lista de questões para upsolving imediato.

---

## 🔗 Recursos Oficiais

- **[Histórico da Maratona SBC](https://www.google.com/search?q=https://maratona.sbc.org.br/hist/hist.html)**: Pacotes oficiais com cadernos de problemas originais (PDFs), editoriais dos autores e casos de teste brutos (entradas e saídas) para depuração local.
- **[Codeforces Gym](https://codeforces.com/gyms)**: Plataforma para executar os simulados virtuais de 5 horas em equipe, com contagem regressiva, congelamento de placar e submissões contra os testes oficiais.
- **[Beecrowd Contests](https://judge.beecrowd.com/)**: Juiz com o acervo histórico da Maratona SBC, ideal para submeter e validar soluções individuais durante o período de upsolving.
