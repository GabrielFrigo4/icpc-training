# 🏆 Fase Nacional — Final Brasileira da Maratona SBC

Acervo da Fase Nacional: enunciados, temas e gabaritos de técnicas das provas passadas, análise estatística consolidada e o cronograma do ciclo de preparação vigente.

> **Ciclo vigente:** Final Nacional 2026 (Uberlândia - MG). Cronograma semanal de simulados e estudos em equipe com as provas disputadas em ordem cronológica (2019 a 2025), sempre às quintas-feiras.

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
- **Segunda a Quarta (Estudo Temático & Notebook):** Treino deliberado nos tópicos teóricos da prova semanal ([`temas/`](temas/)) e inclusão de código testado no caderno do time.

---

## 📅 Calendário de Simulados & Temas Semanais

|    Semana    | Data (Quinta) | Prova Oficial                                                |         Temas da Prova         |           Temas dos Exercícios           | Status | Upsolved |
| :----------: | :-----------: | :----------------------------------------------------------- | :----------------------------: | :--------------------------------------: | :----: | :------: |
| **Semana 1** |     17/09     | [Gym 102428 (LatAm 2019)](https://codeforces.com/gym/102428) | [temas/2019.md](temas/2019.md) | [exercicios/2019.md](exercicios/2019.md) |  [x]   |  5 / 13  |
| **Semana 2** |     24/09     | [Gym 103185 (LatAm 2020)](https://codeforces.com/gym/103185) | [temas/2020.md](temas/2020.md) | [exercicios/2020.md](exercicios/2020.md) |  [ ]   |  0 / 14  |
| **Semana 3** |     01/10     | [Gym 103640 (LatAm 2021)](https://codeforces.com/gym/103640) | [temas/2021.md](temas/2021.md) | [exercicios/2021.md](exercicios/2021.md) |  [ ]   |  - / 13  |
| **Semana 4** |     08/10     | [Gym 104252 (LatAm 2022)](https://codeforces.com/gym/104252) | [temas/2022.md](temas/2022.md) | [exercicios/2022.md](exercicios/2022.md) |  [ ]   |  0 / 13  |
| **Semana 5** |     15/10     | [Gym 104736 (LatAm 2023)](https://codeforces.com/gym/104736) | [temas/2023.md](temas/2023.md) | [exercicios/2023.md](exercicios/2023.md) |  [ ]   |  0 / 13  |
| **Semana 6** |     22/10     | [Gym 105505 (LatAm 2024)](https://codeforces.com/gym/105505) | [temas/2024.md](temas/2024.md) | [exercicios/2024.md](exercicios/2024.md) |  [ ]   |  0 / 13  |
| **Semana 7** |     29/10     | [Gym 106178 (LatAm 2025)](https://codeforces.com/gym/106178) | [temas/2025.md](temas/2025.md) | [exercicios/2025.md](exercicios/2025.md) |  [ ]   |  0 / 13  |
| **Semana 8** |     05/11     | _Viagem / Warmup Oficial (UFU)_                              |               —                |                    —                     |   —    |    —     |

---

## 📂 Organização das Pastas

Os artefatos de cada edição ficam agrupados por tipo, sempre nomeados pelo ano da prova (`AAAA`):

```text
nacional/
├── enunciados/
│   ├── README.md
│   ├── 2019.pdf
│   └── ...
├── exercicios/
│   ├── README.md
│   ├── 2019.md
│   └── ...
├── temas/
│   ├── README.md
│   ├── 2019.md
│   └── ...
├── ANÁLISE.md
├── MERMAID.md
├── QUESTÕES.md
└── README.md
```

- **[`enunciados/`](enunciados/) (`AAAA.pdf`)**: Cadernos de problemas oficiais de cada edição, prontos para impressão no simulado.
- **[`temas/`](temas/) (`AAAA.md` — Temas da Prova)**: Relação concisa dos tópicos algorítmicos abordados na prova com links de fontes canônicas (CP-Algorithms, USACO Guide) para revisão teórica de Segunda a Quarta. Livre de spoilers e sem citar as questões do simulado.
- **[`exercicios/`](exercicios/) (`AAAA.md` — Temas dos Exercícios)**: Mapeamento direto de cada problema [A..N] com seu respectivo tema, técnica e complexidade esperada. Mantido em sigilo nas primeiras 3h de simulado e liberado às 3h00 ou no upsolving.
- **[`ANÁLISE.md`](ANÁLISE.md)**: Raio-X estatístico das 90 questões (2019–2025), com distribuição por tópico, tendências e respostas diretas sobre matroides, fluxo, geometria, strings e FFT.
- **[`MERMAID.md`](MERMAID.md)**: Painel visual (quadros ASCII e gráficos Mermaid) da distribuição de tópicos e da trilha de estudo.
- **[`QUESTÕES.md`](QUESTÕES.md)**: Catálogo das 90 questões agrupadas em 8 blocos temáticos e subtemas, ordenado pela trilha de menor troca de contexto e base do caderno [`consultas/`](../../consultas/).

---

## 🔗 Recursos Oficiais

- **[Histórico da Maratona SBC](https://www.google.com/search?q=https://maratona.sbc.org.br/hist/hist.html)**: Pacotes oficiais com cadernos de problemas originais (PDFs), editoriais dos autores e casos de teste brutos (entradas e saídas) para depuração local.
- **[Codeforces Gym](https://codeforces.com/gyms)**: Plataforma para executar os simulados virtuais de 5 horas em equipe, com contagem regressiva, congelamento de placar e submissões contra os testes oficiais.
- **[Beecrowd Contests](https://judge.beecrowd.com/)**: Juiz com o acervo histórico da Maratona SBC, ideal para submeter e validar soluções individuais durante o período de upsolving.

[⬅️ Voltar para o acervo da Maratona](../README.md)
