# 📊 Painel Visual — Raio-X ICPC LatAm (2019–2025)

Resumo visual das **77 questões** analisadas nas últimas 6 edições da Regional Latino-Americana do ICPC (2019, 2020, 2022, 2023, 2024 e 2025).

---

## 1. Quadros Resumo (ASCII / Terminal)

### 📌 Distribuição Geral por Tópico Principal

```text
╔══════════════════════════════════════════════════════════════════════╗
║       📊 RAIO-X ICPC LATAM / NACIONAL (2019–2025) • 77 QUESTÕES      ║
╠══════════════════════════╦══════════════════════════════╦════════════╣
║ TÓPICO PRINCIPAL         ║ FREQUÊNCIA NAS 6 PROVAS      ║ QTD (%)    ║
╠══════════════════════════╬══════════════════════════════╬════════════╣
║ 1. Grafos e Árvores      ║ ████████████████████         ║ 14 (18.2%) ║
║ 2. Prog. Dinâmica (DP)   ║ ███████████████████          ║ 13 (16.9%) ║
║ 3. Gulosos e Ad-Hoc      ║ ███████████████████          ║ 13 (16.9%) ║
║ 4. Estruturas de Dados   ║ █████████████████            ║ 12 (15.6%) ║
║ 5. Geometria Comp.       ║ ██████████████               ║ 10 (13.0%) ║
║ 6. Matemática e Teo. Num.║ ███████████                  ║  8 (10.4%) ║
║ 7. Fluxo e Matching      ║ ██████████                   ║  7 ( 9.1%) ║
║ 8. Strings Avançadas*    ║ ███████                      ║  5 ( 6.5%) ║
╠══════════════════════════╩══════════════════════════════╩════════════╣
║ Strings Básicas/Warm-up somam mais 4 questões (Total = 77 + 5 duplas)║
╚══════════════════════════════════════════════════════════════════════╝
```

### 🔄 Comparativo de Tendência: Passado vs. Recente

```text
╔══════════════════════════════════════════════════════════════════════╗
║         🔄 MUDANÇA DE TENDÊNCIA: PASSADO vs. PROVAS RECENTES         ║
╠══════════════════════╦═══════════════════════╦═══════════════════════╣
║ TEMA                 ║ PASSADO (2019–2022)   ║ RECENTE (2023–2025)   ║
╠══════════════════════╬═══════════════════════╬═══════════════════════╣
║ 🕸️ Grafos e Árvores  ║ ███░░ (Moderado)      ║ █████ (EM ALTA! 🚀)   ║
║    Foco:             ║ DAGs, BFS em Grid     ║ Centroid, Rerooting,  ║
║                      ║                       ║ Pontes/Ciclos, Euler  ║
╠══════════════════════╬═══════════════════════╬═══════════════════════╣
║ 🔢 Teoria dos Números║ ██░░░ (Baixo)         ║ █████ (EXPLODIU! 🚀)  ║
║    Foco:             ║ Base 2, Polinômios    ║ Pollard Rho, Totiente,║
║                      ║                       ║ Combinatória, Divisib.║
╠══════════════════════╬═══════════════════════╬═══════════════════════╣
║ 📐 Geometria         ║ █████ (Polígonos)     ║ ████░ (Analítica+ED)  ║
║    Foco:             ║ Minkowski, DP Radial  ║ CHT, Manhattan 45°,   ║
║                      ║                       ║ Parábola+BIT, Círculo ║
╠══════════════════════╬═══════════════════════╬═══════════════════════╣
║ 🌊 Fluxo / Matching  ║ ████░ (Direto)        ║ ████░ (Camuflado 🕵️)  ║
║    Foco:             ║ Dinic, Dilworth,      ║ Grafo de Linha (24 D),║
║                      ║ Matching em Árvore    ║ Dual Planar+Ternária  ║
╠══════════════════════╬═══════════════════════╬═══════════════════════╣
║ 🔤 Strings Avançadas ║ ████░ (Pesado)        ║ █░░░░ (DESABOU! 📉)   ║
║    Foco:             ║ Suffix Automaton (2x),║ Virou Warm-up fácil   ║
║                      ║ Z-Function            ║ ou XOR Hashing (23 C) ║
╠══════════════════════╬═══════════════════════╬═══════════════════════╣
║ 🧩 Matroides (Geral) ║ ░░░░░ (0 questões)    ║ ░░░░░ (0 questões)    ║
║    Veredito:         ║ Usar p/ Gulosos e XOR; focar código em Fluxo! ║
╚══════════════════════╩═══════════════════════╩═══════════════════════╝
```

---

## 2. Gráficos Mermaid Nativos (GitHub / Obsidian / VS Code / Notion)

### 🥧 Proporção de Tópicos (2019–2025)

```mermaid
pie showData
    title Distribuição de Tópicos — ICPC LatAm (2019–2025)
    "Grafos e Árvores" : 14
    "Programação Dinâmica (DP)" : 13
    "Gulosos, Ad-Hoc e Construtivos" : 13
    "Estruturas de Dados (SegTree/BIT)" : 12
    "Geometria Computacional" : 10
    "Matemática e Teoria dos Números" : 8
    "Fluxo e Emparelhamento Bipartido" : 7
    "Strings Avançadas" : 5
```

### 📈 Evolução por Período: Passado (2019–2022) vs. Recente (2023–2025)

> **Legenda das Barras:**
>
> - **1ª Barra (Esquerda):** Provas de **2019, 2020 e 2022**
> - **2ª Barra (Direita):** Provas de **2023, 2024 e 2025**

```mermaid
xychart-beta
    title "Evolução de Questões: Passado (19-22) vs Recente (23-25)"
    x-axis ["Grafos/Árvores", "Teo. Números/Mat", "Geometria", "Fluxo/Matching", "Strings Avançadas", "Interseção Matroide"]
    y-axis "Quantidade de Questões" 0 --> 10
    bar [5, 2, 6, 4, 3, 0]
    bar [9, 6, 4, 3, 2, 0]
```

### 🗺️ Mapa de Prioridade de Estudos da Equipe (Fluxograma Nativo)

```mermaid
flowchart TD
    A["🎯 Preparação ICPC LatAm"] --> B["🔥 Prioridade Máxima (Cai todo ano)"]
    A --> C["⚡ Prioridade Alta (Diferencial de Medalha)"]
    A --> D["🛡️ Manutenção / Base (Garantir Rápido)"]

    B --> B1["🕸️ Grafos & Árvores\n(DFS Tree, Pontes, Rerooting,\nCentroid, Caminho Euleriano)"]
    B --> B2["🌲 Estruturas de Dados\n(SegTree, Lazy, BIT,\nMonotonic Stack, CHT)"]
    B --> B3["🧮 Programação Dinâmica\n(DAGs, Árvores, Otimizações,\nProbabilidade)"]

    C --> C1["🔢 Teoria dos Números\n(Crivo, Totiente, Ordem Mult.,\nPollard's Rho, Combinatória)"]
    C --> C2["🌊 Fluxo & Matching\n(Dinic, Hopcroft-Karp, Dilworth,\nDual Planar, Grafo de Linha)"]
    C --> C3["📐 Geometria + ED\n(Sweep Line, Rotação 45°,\nSemiplanos, Parábolas)"]

    D --> D1["🔤 Strings Essenciais\n(XOR/Poly Hashing, KMP, Z-Func)\n*Evitar focar em Suffix Automaton*"]
    D --> D2["🧩 Intuição de Matroides\n(Provar Gulosos + Base de XOR)\n*Ignorar Interseção Geral*"]
```
