# 📊 Raio-X da Regional Latino-Americana do ICPC (2019–2025)

**Escopo:** 6 edições (2019, 2020, 2022, 2023, 2024 e 2025) — **77 Problemas Analisados**

---

## 🎯 1. Resposta Direta: Matroides, Fluxo, Geometria e Strings

### 🔹 Caiu Matroide ou Interseção de Matroides?

1. **Algoritmo Genérico de Interseção de Matroides (Grafo de Trocas): 0 questões.**
    - Nenhuma das 77 questões exigiu implementar o algoritmo geral de interseção de matroides (como Árvore Geradora Colorida ou Floresta + Base de XOR). Esse tópico fica restrito a Finais Mundiais ou Codeforces Div 1.
2. **Emparelhamento Bipartido e Fluxo em Redes (O caso clássico de Interseção de 2 Matroides de Partição): 7 questões (~1 por ano!).**
    - Embora a interseção genérica não caia, o seu caso particular mais famoso (**Bipartite Matching / Max Flow**) é figurinha carimbada.
    - **Mudança de padrão:** Até 2022 o fluxo era mais direto (`2019 A`, `2020 H`, `2022 F`, `2022 H`). Nos anos recentes (`2024 D`, `2025 G`), o fluxo apareceu **camuflado**: em `2024 D` ele estava escondido atrás de uma matriz de adjacência de um Grafo de Linha Bipartido, e em `2025 G` virou um problema de Corte Mínimo Paramétrico resolvido com Caminho Mínimo no Grafo Dual Planar + Busca Ternária!
3. **Teoria de Sistemas Independentes, Bases, Circuitos e Troca Gulosa:**
    - A intuição teórica aparece diretamente na modelagem de vários problemas:
        - **`2024 F` (Finding Privacy):** Pede literalmente para encontrar uma **base de tamanho $K$** (conjunto independente maximal) no sistema independente de conjuntos estáveis de um grafo caminho $P_N$ (testando se $\rho(E) \le K \le r(E)$).
        - **`2024 B` (Biketopia's Cyclic Track):** Pede um **circuito** do matroide gráfico que não desconecte o grafo (interseção conceitual entre circuito gráfico e co-independente).
        - **`2023 E` (Elevated Profits):** Escalonamento ótimo em árvore usando argumento de troca gulosa + Union-Find (DSU).
        - **`2025 G` (Gridoland Power Gauge):** Usa a **concavidade/submodularidade** da capacidade dos cortes no tempo para aplicar Busca Ternária.

---

## 📈 2. Estatísticas Gerais por Tópico Principal (2019–2025)

| Categoria Principal                                                | Qtd. de Questões | % da Prova | Média por Ano | Nível Típico          |
| :----------------------------------------------------------------- | :--------------: | :--------: | :-----------: | :-------------------- |
| **1. Grafos e Árvores (DFS, BFS, Dijkstra, DAG, Centroid, Euler)** |        14        |   18.2%    |      2.3      | Médio a Difícil       |
| **2. Programação Dinâmica (DP) e Probabilidade**                   |        13        |   16.9%    |      2.2      | Médio a Difícil       |
| **3. Gulosos, Ad-Hoc, Simulação e Construtivos**                   |        13        |   16.9%    |      2.2      | Fácil a Médio         |
| **4. Estruturas de Dados (SegTree, BIT, Stack, Sqrt)**             |        12        |   15.6%    |      2.0      | Médio a Difícil       |
| **5. Geometria Computacional**                                     |        10        |   13.0%    |      1.7      | Médio a Muito Difícil |
| **6. Matemática, Teoria dos Números e Combinatória**               |        8         |   10.4%    |      1.3      | Médio a Difícil       |
| **7. Fluxo em Redes e Emparelhamento Bipartido**                   |        7         |    9.1%    |      1.2      | Médio a Muito Difícil |
| **8. Strings Avançadas (Suffix Automaton, Z, Hashing)**            |        5*        |   6.5%*    |      0.8      | Médio a Difícil       |

> _\*Nota sobre Strings: Foram 9 problemas envolvendo strings no total (11.7%), mas 4 deles (`2019 E`, `2023 D`, `2024 A`, `2025 J`) são problemas básicos de implementação/aquecimento, restando 5 problemas de algoritmos de strings propriamente ditos._

---

## 🔄 3. Evolução da Prova: Passado (2019–2022) vs. Recente (2023–2025)

| Aspecto              | Provas Passadas (2019, 2020, 2022)                                                                                                                                             | Provas Recentes (2023, 2024, 2025)                                                                                                                                                                                                                  |
| :------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Strings**          | **Muito Pesadas:** Caiu _Suffix Automaton / Suffix Array_ duas vezes seguidas (`2019 G`, `2020 M`) e _Z-Function / KMP_ (`2022 L`).                                            | **Suavizou drasticamente:** Viraram questões de aquecimento (`2023 D`, `2024 A`, `2025 J`), _XOR Hashing_ (`2023 C`) ou _Parsing_ (`2023 L`). Zero autômatos de sufixo!                                                                             |
| **Geometria**        | **Polígonos e Geometria Clássica:** _Soma de Minkowski_ (`2022 G`), _DP Poligonal Radial_ (`2020 I`), rotação de pontos e envoltória (`2019 B`, `2019 D`, `2022 B`, `2022 J`). | **Geometria Analítica + ED:** _Convex Hull Trick_ (`2023 A`), _Distância de Manhattan 45°_ (`2023 G`), _Círculo + Semiplanos_ (`2023 H`), _Sombras 1D_ (`2024 J`) e _Parábola + BIT_ (`2025 L`).                                                    |
| **Fluxo e Matching** | **Modelagem Clássica:** Dilworth em Poset (`2019 A`), Dinic direto (`2020 H`), Matching em DP de Árvore (`2022 F`) e Matching de posições (`2022 H`).                          | **Reduções Ocultas:** Grafo de Linha Bipartido via matriz (`2024 D`), Permutações/König (`2024 L`) e Dual Planar + Busca Ternária (`2025 G`).                                                                                                       |
| **Grafos e Árvores** | Mais focados em DAGs simples (`2019 I`), Grid BFS (`2022 M`, `2022 I`) e alcançabilidade (`2022 A`).                                                                           | **Explosão de Grafos Estruturais:** _Centroid Decomposition_ (`2023 J`), _Rerooting + Binary Lifting_ (`2024 G`), _Ciclo sem Pontes_ (`2024 B`), _Caminho Euleriano_ (`2025 A`), _Greedy em Árvore com DSU_ (`2023 E`).                             |
| **Matemática e TN**  | Presença moderada: Polinômios (`2019 K`), Base 2 (`2020 D`, `2022 C`), Frações (`2020 A`).                                                                                     | **Crescimento Massivo (pico em 2025):** _Pollard's Rho / Fatoração_ (`2025 F`), _Ordem Multiplicativa / Totiente_ (`2025 D`), _DP de Divisibilidade_ (`2025 B`), _Inversões e Combinatória_ (`2023 I`, `2024 I`), _Bases Palindrômicas_ (`2023 F`). |

---

## 🗂️ 4. Catálogo Completo das 77 Questões por Ano

### 📅 ICPC Regional 2019 (13 Questões)

- **A - Algorithm Teaching:** Emparelhamento Bipartido / Fluxo (Teorema de Dilworth — Anticadeia Máxima em Poset).
- **B - Build the Perfect House:** Geometria + Busca Binária + Sweep Angular.
- **C - Cut Inequality Down:** Estruturas de Dados (Segment Tree com composição de funções de _clamping_ $[L, U]$ / Binary Lifting).
- **D - Dazzling Stars:** Geometria (Interseção de intervalos angulares / Semiplanos).
- **E - Eggfruit Cake:** Ad-Hoc / Two Pointers / Soma de Prefixos em string circular.
- **F - Fabricating Sculptures:** Programação Dinâmica ($O(S \cdot B)$ com otimização de soma de prefixos).
- **G - Gluing Pictures:** Strings Avançadas (Suffix Automaton ou Suffix Array + Guloso).
- **H - Hold or Continue?:** Programação Dinâmica + Probabilidade / Teoria dos Jogos ( Convergência de valor esperado).
- **I - Improve SPAM:** Grafos (DP em DAG + Contagem de alcançabilidade).
- **J - Jumping Grasshopper:** Estruturas de Dados (Segment Tree mantendo máximos e saltos).
- **K - Know your Aliens:** Matemática (Polinômios, raízes inteiras e expansão de coeficientes).
- **L - Leverage MDT:** DP / Estruturas de Dados (Maior quadrado/retângulo em histograma com Pilha Monotônica).
- **M - Mountain Ranges:** Ad-Hoc / Implementação (Aquecimento).

### 📅 ICPC Regional 2020 (14 Questões)

- **A - Almost Origami:** Busca (BFS / IDA* / Backtracking) + Matemática (Frações de Haga).
- **B - Beautiful Mountains:** Estruturas de Dados / Série Harmônica ($O(N \log N)$ checando partições válidas).
- **C - Crisis at the Wedding:** Guloso / Soma de Prefixos em anel circular.
- **D - Dividing Candy:** Matemática / Guloso / Manipulação de Bits (Soma de potências de 2).
- **E - Excellent Views:** Estruturas de Dados (Pilha Monotônica + Array de Diferenças).
- **F - Fascinating Partitions:** Programação Dinâmica Avançada (DP na Cartesian Tree / Monotonic Stack / Alien's Trick).
- **G - Game of Slots:** Programação Dinâmica + Probabilidade / Valor Esperado.
- **H - Halting Wolf:** Fluxo em Redes (Max Flow — Dinic puro modelando saltos finitos e infinitos).
- **I - Impenetrable Wall:** Geometria + Programação Dinâmica (Ordenação radial + DP de polígonos visíveis).
- **J - Job Allocator:** Força Bruta / Hashing / Contagem de subconjuntos ($K \le 8$).
- **K - Keylogger:** Programação Dinâmica + Soma de Prefixos + Busca Binária.
- **L - Lola's Schedule:** Simulação / Matemática (Aritmética modular de intervalos).
- **M - May I Add a Letter?:** Strings Avançadas (Suffix Automaton com Rollback / Árvore de versões offline).
- **N - Non-Integer Donuts:** Ad-Hoc / Implementação (Aquecimento).

### 📅 ICPC Regional 2022 (13 Questões)

- **A - Asking for Money:** Grafos (DFS de alcançabilidade a partir de pares de vizinhos, $N \le 1000$).
- **B - Board Game:** Geometria + Busca Binária Paralela + Convex Hull Trick (CHT).
- **C - City Folding:** Matemática / Manipulação de Bits / Recursão ($N \le 60$).
- **D - Daily Trips:** Ad-Hoc / Simulação (Aquecimento).
- **E - Empty Squares:** DP (Mochila) / Análise de Casos Gulosos (peças pequenas).
- **F - Favorite Tree:** Árvores + DP de Isomorfismo + Emparelhamento Bipartido (Fluxo / Hopcroft-Karp nos filhos).
- **G - Gravitational Wave Detector:** Geometria Avançada (Soma de Minkowski de Polígonos Convexos + Ponto em Polígono).
- **H - Horse Race:** Emparelhamento Bipartido (Fluxo / Hopcroft-Karp para casar cavalos com colocações válidas).
- **I - Italian Calzone & Pasta Corner:** Grafos / Fila de Prioridade (Expansão gulosa estilo Prim/Dijkstra no grid).
- **J - Joining a Marathon:** Geometria / Envoltória de Retas / Eventos Angulares.
- **K - Kind Baker:** Construtivo / Manipulação de Bits em Grid (Pentes conectados gerando código binário).
- **L - Lazy Printing:** Strings (Z-Function / String Hashing) + Guloso em $O(N \log N)$ ou $O(N)$.
- **M - Maze in Bolt:** Grafos (BFS/DFS no espaço de estados $R \times C$) + Rotações de Bitmask/Strings.

### 📅 ICPC Regional 2023 (13 Questões)

- **A - Analyzing Contracts:** Geometria / Estruturas de Dados (Convex Hull Trick / Li Chao Tree + Divide & Conquer).
- **B - Blackboard Game:** Teoria dos Jogos / Guloso (Agrupamento por frequência em triplas).
- **C - Candy Rush:** Estruturas de Dados / Hashing (XOR Hashing aleatório de 64 bits + Soma de Prefixos).
- **D - Deciphering WordWhiz:** Ad-Hoc / Strings (Simulação de Wordle — Aquecimento).
- **E - Elevated Profits:** Guloso em Árvores + Union-Find (DSU) + Fila de Prioridade (Argumento de troca / razão ótima).
- **F - Forward and Backward:** Teoria dos Números (Divisores em $O(\sqrt{N})$ + teste de bases $\le \sqrt{N}$).
- **G - GPS on a Flat Earth:** Geometria (Rotação de 45° para converter Distância de Manhattan em quadrados/segmentos).
- **H - Health in Hazard:** Geometria (Interseção de Semiplanos / Busca Binária + Interseção Reta-Círculo).
- **I - Inversions:** Matemática / Combinatória + Contagem de inversões com PA.
- **J - Journey of the Robber:** Árvores Avançadas (Centroid Decomposition).
- **K - Keen on Order:** Guloso + DP com Bitmask (Para $K > 20$ sempre falta permutação; para $K \le 20$ faz DP).
- **L - Latam++:** Strings / Parsing / Pilha / Divide & Conquer.
- **M - Meeting Point:** Grafos (Dijkstra + Verificação de vértices obrigatórios em caminhos mínimos).

### 📅 ICPC Regional 2024 (12 Questões)

- **A - Append and Panic!:** Ad-Hoc / Strings (Aquecimento).
- **B - Biketopia's Cyclic Track:** Grafos (Árvore de DFS, Pontes / Ciclo cuja remoção preserva conectividade).
- **C - Cindy's Christmas Challenge:** Estruturas de Dados (Segment Tree / Somas de Prefixo para alinhamento em intervalo).
- **D - Diverse T-Shirts:** Emparelhamento Bipartido (Fluxo) + Reconstrução de Grafo de Linha (Cliques de cor de texto e fundo).
- **E - Evereth Expedition:** Guloso / Two Pointers (Reconstrução de sequência unimodal).
- **F - Finding Privacy:** Construtivo / Matemática (Conjunto independente maximal de tamanho $K$ em grafo caminho).
- **G - Grand Glory Race:** Árvores (DP de Rerooting + Binary Lifting / LCA para Diagrama de Voronoi na árvore).
- **H - Heraclosures:** Grafos (DP em DAG) + Sqrt Decomposition (Buffer de atualizações em lote).
- **I - Inversion Insight:** Combinatória + Programação Dinâmica + Fenwick Tree (BIT).
- **J - Jigsaw of Shadows:** Geometria Básica (Trigonometria) + Sweep Line (União de intervalos 1D — Aquecimento).
- **K - Kool Strings:** Guloso / Strings (Trocas mínimas em blocos consecutivos).
- **L - Latin Squares:** Matemática (Ciclos de Permutação) + Construtivo / Casamento Bipartido.

### 📅 ICPC Regional 2025 (12 Questões)

- **A - Apple Pie:** Grafos (Caminho / Circuito Euleriano no grafo completo $K_N$ com prefixo e sufixo fixos).
- **B - Balanced Balloons:** Programação Dinâmica + Teoria dos Números (Divisibilidade de médias de prefixo).
- **C - Clean Streets:** Guloso / Sweep Line / Two Pointers + Matemática de Frações.
- **D - Displaying Decimals:** Teoria dos Números Avançada (Ordem Multiplicativa, Função Totiente de Euler, Fatoração).
- **E - Emergency Rations:** Estruturas de Dados (Segment Tree com Lazy Propagation).
- **F - Fuzzy Factorization:** Teoria dos Números (Fatoração de inteiros grandes via Pollard's Rho + Miller-Rabin no prefixo de $X$).
- **G - Gridoland Power Gauge:** Fluxo em Redes (Min-Cut = Caminho Mínimo no Grafo Dual Planar) + Busca Ternária (função côncava no tempo).
- **H - Harder Horizons:** Programação Dinâmica + Estruturas de Dados (Segment Tree / Pilha Monotônica).
- **I - Infiltration Route:** Grafos / DP em DAG (BFS em pares de estados $(u, v)$ explorando a monotonicidade $S < T$).
- **J - Judgmental Crowd:** Ad-Hoc / Strings (Contagem de substrings — Aquecimento).
- **K - Kings Conquest:** Guloso / Matemática (Expansão ótima de Bounding Box em Grid).
- **L - Lonely Creatures:** Geometria Analítica + Estruturas de Dados (Interseção Reta-Parábola reduzida a contagem de inversões/cordas com BIT).

---

## 🏆 5. Plano de Ação Prático para a Equipe

1. **Onde investir pesado (Alto ROI):**
    - **Grafos e Árvores Avançadas:** Dominar Árvore de DFS (pontes/articulações), Rerooting DP, Binary Lifting, Centroid Decomposition e Caminhos Eulerianos.
    - **Estruturas de Dados:** Segment Tree (normal e Lazy), BIT, Pilha Monotônica e Convex Hull Trick / Li Chao Tree.
    - **Fluxo e Matching (e como identificar reduções):** Ter Dinic e Hopcroft-Karp afiados no caderno e treinar reduções (Dilworth, Grafo de Linha, Dual Planar).
    - **Geometria Analítica + Sweep Line:** Focar em transformar problemas 2D (retas, parábolas, distância de Manhattan) em estruturas de dados 1D.
2. **Onde economizar energia (Baixo ROI para a Regional):**
    - **Interseção de Matroides Genérica:** Não caiu nenhuma vez em 6 anos. Entenda bem a intuição de matroides para provar gulosos rápido e usar Base de XOR, mas foque em Fluxo/Matching para a prova.
    - **Autômatos de Strings Pesados (Suffix Automaton):** Caiu em 2019–2020, mas sumiu completamente entre 2022 e 2025. Priorize Hashing (especialmente XOR/Polinomial), Trie, KMP e Z-Function antes de estudar Suffix Automaton.
