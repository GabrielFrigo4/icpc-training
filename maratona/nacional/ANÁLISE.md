# 📊 Raio-X da Regional Latino-Americana do ICPC (2019–2025)

**Escopo:** 7 edições completas (2019, 2020, 2021, 2022, 2023, 2024 e 2025) — **90 Problemas Analisados**

---

## 🎯 1. Resposta Direta: Matroides, Fluxo, Geometria, Strings e FFT

### 🔹 Caiu Matroide ou Interseção de Matroides?

1. **Algoritmo Genérico de Interseção de Matroides (Grafo de Trocas): 0 questões.**
    - Nenhuma das 90 questões exigiu implementar o algoritmo geral de interseção de matroides (como Árvore Geradora Colorida ou Floresta + Base de XOR).
2. **Emparelhamento Bipartido, Algoritmo Húngaro e Fluxo em Redes (Interseção de 2 Matroides de Partição): 7 questões principais (~1 por ano, 8 contando `2024 L`).**
    - Com a inclusão de **2021**, fica evidente que além de **Max Flow / Hopcroft-Karp** (`2019 A`, `2020 H`, `2022 F`, `2022 H`, `2024 D`), a banca também cobra **Emparelhamento Bipartido de Custo Mínimo (Algoritmo Húngaro / Assignment Problem)**, que caiu de forma direta em **`2021 H` (Hamilton The Musical)**.
    - **Mudança de padrão:** Até 2022 o fluxo/matching era mais direto (`2019 A`, `2020 H`, `2021 H`, `2022 F`, `2022 H`). Nos anos recentes (`2024 D`, `2025 G`), o fluxo apareceu **camuflado**: em `2024 D` escondido na matriz de adjacência de um Grafo de Linha Bipartido, e em `2025 G` como Corte Mínimo Paramétrico resolvido via Caminho Mínimo no Grafo Dual Planar + Busca Ternária.
3. **Teoria de Sistemas Independentes, Dominância Binária, Circuitos e Troca Gulosa:**
    - **`2021 F` (Fields Division):** Usa a propriedade de dominância supercrescente das potências de 2 ($2^N > \sum_{i=1}^{N-1} 2^i$) sobre cortes/componentes conexas.
    - **`2021 M` (Most Ordered Way):** Escalonamento de tarefas com deadlines (EDD + análise de folga mínima para minimizar lexicograficamente).
    - **`2024 F` (Finding Privacy):** Base de tamanho $K$ (conjunto independente maximal) em um grafo caminho $P_N$.
    - **`2024 B` (Biketopia's Cyclic Track):** Circuito do matroide gráfico cuja remoção não desconecta o grafo (ciclo sem pontes).
    - **`2023 E` (Elevated Profits):** Escalonamento ótimo em árvore com argumento de troca gulosa + DSU.

---

## 📈 2. Estatísticas Gerais por Tópico Principal (2019–2025 • 90 Questões)

Cada uma das 90 questões foi classificada no seu tema principal (com indicação das questões híbridas nas notas):

| Ordem de Frequência / Tema Principal                                     | Qtd. Principal | % da Prova | Média por Ano | Total c/ Híbridas | Nível Típico                |
| :----------------------------------------------------------------------- | :------------: | :--------: | :-----------: | :---------------: | :-------------------------- |
| **1. Gulosos, Ad-Hoc, Simulação e Construtivos**                         |     **16**     | **17.8%**  |      2.3      |        19         | Fácil a Médio-Difícil       |
| **2. Grafos e Árvores (DFS, BFS, Dijkstra, DAG, Centroid, Euler, Hash)** |     **15**     | **16.7%**  |      2.1      |        17         | Fácil-Médio a Muito Difícil |
| **3. Estruturas de Dados (SegTree, BIT, Monotonic Stack, Sqrt, CHT)**    |     **13**     | **14.4%**  |      1.9      |        16         | Fácil-Médio a Muito Difícil |
| **4. Programação Dinâmica (DP) e Probabilidade**                         |     **11**     | **12.2%**  |      1.6      |        14         | Médio a Muito Difícil       |
| **5. Geometria Computacional**                                           |     **11**     | **12.2%**  |      1.6      |        15         | Fácil a Muito Difícil       |
| **6. Strings (Básicas, Hashing, Z-Function, Parsing e Autômatos)**       |     **9**      | **10.0%**  |      1.3      |        11         | Fácil a Muito Difícil       |
| **7. Matemática, Teoria dos Números, Combinatória e FFT**                |     **8**      |  **8.9%**  |      1.1      |        12         | Médio a Muito Difícil       |
| **8. Fluxo em Redes e Emparelhamento (Dinic, Húngaro, König, Dual)**     |     **7**      |  **7.8%**  |      1.0      |         8         | Médio a Muito Difícil       |
| **TOTAL GERAL (7 Edições: 2019–2025)**                                   |     **90**     | **100.0%** |   **12.9**    |         —         | —                           |

---

## 🔄 3. Evolução da Prova: Passado (2019–2022) vs. Recente (2023–2025)

A inclusão de **2021** revela conexões importantes entre anos consecutivos (como **Isomorfismo de Árvores** caindo em `2021 G` e repetindo em `2022 F`):

| Aspecto                  | Passado: 2019, 2020, 2021, 2022 (53 questões)                                                                                                                                                          | Recente: 2023, 2024, 2025 (37 questões)                                                                                                                                                                                                   |
| :----------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Grafos e Árvores**     | **Isomorfismo de Árvores em dose dupla** (`2021 G`, `2022 F`), BFS no Espaço-Tempo (`2021 C`), Grid BFS (`2022 M`, `2022 I`), Componentes (`2021 F`) e DAG (`2019 I`).                                 | **Explosão de Árvores e Grafos Estruturais:** _Centroid Decomposition_ (`2023 J`), _Rerooting + Binary Lifting_ (`2024 G`), _Ciclo sem Pontes_ (`2024 B`), _Caminho Euleriano_ (`2025 A`), _DSU + Greedy em Árvore_ (`2023 E`).           |
| **Estruturas de Dados**  | **Foco em Pilha Monotônica + SegTree:** `2019 C`, `2019 J`, `2019 L`, `2020 E`, `2021 D` (Pilha Monotônica + SegTree Lazy) e `2021 J` (Pilha no perímetro).                                            | **Diversificação de EDs:** _Convex Hull Trick / Li Chao_ (`2023 A`), _XOR Hashing_ (`2023 C`), _Sqrt Decomposition em DAG_ (`2024 H`), _SegTree Lazy + Busca_ (`2025 E`, `2025 H`), _BIT + Parábola_ (`2025 L`).                          |
| **Geometria**            | **Polígonos, Ordenação Radial e Visibilidade:** _Quadriláteros via Sweep Radial_ (`2021 A`), _Soma de Minkowski_ (`2022 G`), _DP Radial_ (`2020 I`), _Rotação/Ângulos_ (`2019 B`, `2019 D`, `2022 J`). | **Geometria Analítica + ED:** _CHT_ (`2023 A`), _Distância de Manhattan $45^\circ$_ (`2023 G`), _Círculo + Semiplanos_ (`2023 H`), _Sombras 1D_ (`2024 J`) e _Parábola + BIT_ (`2025 L`).                                                 |
| **Matemática, FFT e TN** | **Polinômios, FFT e Potências de 2:** _Polinômios_ (`2019 K`), _FFT/NTT + Guloso_ (`2021 B`), _Valor Esperado Combinatório_ (`2021 L`), _Base 2_ (`2020 D`, `2022 C`).                                 | **Teoria dos Números Pesada e Combinatória:** _Pollard's Rho / Miller-Rabin_ (`2025 F`), _Ordem Multiplicativa / Totiente_ (`2025 D`), _DP de Divisibilidade_ (`2025 B`), _Inversões_ (`2023 I`, `2024 I`), _Divisores/Bases_ (`2023 F`). |
| **Fluxo e Matching**     | **Modelagem Direta:** _Dilworth_ (`2019 A`), _Dinic_ (`2020 H`), _Algoritmo Húngaro / Custo Mínimo_ (`2021 H`), _Matching em Árvore_ (`2022 F`), _Hopcroft-Karp_ (`2022 H`).                           | **Reduções Camufladas:** _Grafo de Linha Bipartido_ (`2024 D`), _Ciclos de Permutação / König_ (`2024 L`) e _Corte Mínimo no Dual Planar + Busca Ternária_ (`2025 G`).                                                                    |
| **Strings**              | **Extremamente Pesadas (2019–2022):** _Suffix Automaton / Array_ (`2019 G`, `2020 M`), _Z-Function_ (`2022 L`) e 1 warm-up (`2021 K`).                                                                 | **Mais Acessíveis (2023–2025):** Muitos warm-ups (`2023 D`, `2024 A`, `2024 K`, `2025 J`), _XOR Hashing_ (`2023 C`) e _Parsing_ (`2023 L`).                                                                                               |

---

## 🗂️ 4. Catálogo Completo das 90 Questões por Ano (2019–2025)

### 📅 ICPC Regional 2019 (13 Questões)

- **2019 A - Algorithm Teaching:** Fluxo / Emparelhamento Bipartido (Teorema de Dilworth — Anticadeia Máxima em Poset).
- **2019 B - Build the Perfect House:** Geometria + Busca Binária + Sweep Angular.
- **2019 C - Cut Inequality Down:** Estruturas de Dados (Segment Tree com composição de funções de _clamping_ $[L, U]$ / Binary Lifting).
- **2019 D - Dazzling Stars:** Geometria (Interseção de intervalos angulares / Semiplanos).
- **2019 E - Eggfruit Cake:** Ad-Hoc / Two Pointers / Soma de Prefixos em string circular.
- **2019 F - Fabricating Sculptures:** Programação Dinâmica ($O(S \cdot B)$ com otimização de soma de prefixos dupla).
- **2019 G - Gluing Pictures:** Strings Avançadas (Suffix Automaton ou Suffix Array + Guloso).
- **2019 H - Hold or Continue?:** Programação Dinâmica + Probabilidade / Teoria dos Jogos (Iteração de valor no jogo Pig).
- **2019 I - Improve SPAM:** Grafos (DP em DAG + Contagem de alcançabilidade).
- **2019 J - Jumping Grasshopper:** Estruturas de Dados (Segment Tree mantendo máximos e saltos).
- **2019 K - Know your Aliens:** Matemática (Polinômios, raízes inteiras e expansão de coeficientes).
- **2019 L - Leverage MDT:** Estruturas de Dados / DP (Maior quadrado em histograma 2D com Pilha Monotônica).
- **2019 M - Mountain Ranges:** Ad-Hoc / Implementação (Warm-up).

### 📅 ICPC Regional 2020 (14 Questões)

- **2020 A - Almost Origami:** Grafos / Busca (BFS / IDA* / Backtracking) + Matemática (Frações de Haga).
- **2020 B - Beautiful Mountains:** Estruturas de Dados / Série Harmônica ($O(N \log N)$ checando partições válidas).
- **2020 C - Crisis at the Wedding:** Guloso / Soma de Prefixos em anel circular.
- **2020 D - Dividing Candy:** Guloso / Matemática / Manipulação de Bits (Soma de potências de 2).
- **2020 E - Excellent Views:** Estruturas de Dados (Pilha Monotônica + Array de Diferenças).
- **2020 F - Fascinating Partitions:** Programação Dinâmica Avançada (DP na Cartesian Tree / Pilha Monotônica).
- **2020 G - Game of Slots:** Programação Dinâmica + Probabilidade / Valor Esperado Contínuo.
- **2020 H - Halting Wolf:** Fluxo em Redes (Max Flow — Dinic puro modelando saltos finitos e infinitos).
- **2020 I - Impenetrable Wall:** Geometria + Programação Dinâmica (Ordenação radial + DP de polígonos visíveis).
- **2020 J - Job Allocator:** Ad-Hoc / Força Bruta / Hashing de subconjuntos ($K \le 8$).
- **2020 K - Keylogger:** Programação Dinâmica + Soma de Prefixos + Busca Binária.
- **2020 L - Lola's Schedule:** Simulação / Matemática (Aritmética modular de intervalos).
- **2020 M - May I Add a Letter?:** Strings Avançadas (Suffix Automaton com Rollback / Árvore de versões offline).
- **2020 N - Non-Integer Donuts:** Ad-Hoc / Implementação (Warm-up).

### 📅 ICPC Regional 2021 (13 Questões)

- **2021 A - Ancient Towers:** Geometria Computacional (Ordenação Polar / Sweep Line Radial + Contagem de quadriláteros simples convexos e côncavos de área $\ge S$ com Busca Binária).
- **2021 B - Because, Art!:** Matemática / Polinômios (FFT / NTT — Convolução Polinomial) + Guloso (Emparelhamento de extremos com mesmo sinal e convolução para sinais opostos).
- **2021 C - Cyclists versus Clouds:** Grafos (BFS no Espaço-Tempo) + Geometria em Grid (Polígonos ortogonais em movimento para $t \le 300$).
- **2021 D - Daily Turnovers:** Estruturas de Dados Avançadas (Soma de Prefixos + Pilha Monotônica + Segment Tree com Lazy Propagation para maximizar submatrizes/intervalos válidos após somar $X$).
- **2021 E - Expedition Plans:** Programação Dinâmica (DP de Intervalos $O(N^2)$ estilo árvore de decisão ótima com otimização de monotonicidade / Two Pointers / Deque).
- **2021 F - Fields Division:** Grafos (DFS / Conectividade / Pontes de separação) + Guloso com Potências de 2 (Dominância de $2^N$ e $2^{N-1}$).
- **2021 G - Generator Tree:** Árvores Avançadas (Isomorfismo de Árvores / Tree Hashing Canônico + Rerooting / Partição em componentes de tamanho divisor $d \mid K$).
- **2021 H - Hamilton The Musical:** Fluxo e Emparelhamento (Emparelhamento Bipartido Perfeito de Custo Mínimo — Algoritmo Húngaro / Assignment Problem em $O(N^3)$).
- **2021 I - Invested Money:** Ad-Hoc / Simulação / Aritmética Modular (Ciclo de dias da semana — Warm-up).
- **2021 J - Joining Pairs:** Estruturas de Dados (Pilha / Parênteses Balanceados) + Geometria Básica (Ordenação de pontos ao longo do perímetro do retângulo).
- **2021 K - KIARA is a Recursive Acronym:** Strings Básicas / Ad-Hoc (Marcação de letras iniciais em array de frequência — Warm-up).
- **2021 L - Leaving Yharnam:** Programação Dinâmica / Probabilidade / Combinatória Modular (Valor esperado e distribuição hipergeométrica de pares de assentos vazios).
- **2021 M - Most Ordered Way:** Guloso (Escalonamento com Deadlines — Earliest Deadline First + manutenção da folga mínima $\min_j(D_j - \text{pref}_j)$ em $O(N^2)$).

### 📅 ICPC Regional 2022 (13 Questões)

- **2022 A - Asking for Money:** Grafos (DFS de alcançabilidade a partir de pares de vizinhos, $N \le 1000$).
- **2022 B - Board Game:** Geometria + Busca Binária Paralela + Convex Hull Trick (CHT).
- **2022 C - City Folding:** Matemática / Manipulação de Bits / Recursão ($N \le 60$).
- **2022 D - Daily Trips:** Ad-Hoc / Simulação (Warm-up).
- **2022 E - Empty Squares:** DP (Mochila / Knapsack) / Análise de Casos Gulosos.
- **2022 F - Favorite Tree:** Árvores + DP de Isomorfismo + Emparelhamento Bipartido (Fluxo / Hopcroft-Karp nos filhos).
- **2022 G - Gravitational Wave Detector:** Geometria Avançada (Soma de Minkowski de Polígonos Convexos + Ponto em Polígono).
- **2022 H - Horse Race:** Fluxo / Emparelhamento Bipartido (Hopcroft-Karp para casar cavalos com colocações válidas).
- **2022 I - Italian Calzone & Pasta Corner:** Grafos / Fila de Prioridade (Expansão gulosa estilo Prim/Dijkstra no grid).
- **2022 J - Joining a Marathon:** Geometria / Envoltória de Retas / Eventos Angulares.
- **2022 K - Kind Baker:** Construtivo / Manipulação de Bits em Grid.
- **2022 L - Lazy Printing:** Strings (Z-Function / String Hashing) + Salto Guloso.
- **2022 M - Maze in Bolt:** Grafos (BFS/DFS no espaço de estados $R \times C$) + Rotações de Bitmask/Strings.

### 📅 ICPC Regional 2023 (13 Questões)

- **2023 A - Analyzing Contracts:** Estruturas de Dados / Geometria (Convex Hull Trick / Li Chao Tree + Divide & Conquer).
- **2023 B - Blackboard Game:** Teoria dos Jogos / Guloso (Agrupamento por frequência em triplas).
- **2023 C - Candy Rush:** Estruturas de Dados / Hashing (XOR Hashing aleatório de 64 bits + Soma de Prefixos).
- **2023 D - Deciphering WordWhiz:** Strings Básicas / Ad-Hoc (Simulação de Wordle — Warm-up).
- **2023 E - Elevated Profits:** Grafos / Guloso em Árvores + Union-Find (DSU) + Fila de Prioridade (Argumento de troca).
- **2023 F - Forward and Backward:** Teoria dos Números (Divisores em $O(\sqrt{N})$ + teste de bases $\le \sqrt{N}$).
- **2023 G - GPS on a Flat Earth:** Geometria (Rotação de $45^\circ$ para converter Distância de Manhattan em quadrados/segmentos).
- **2023 H - Health in Hazard:** Geometria (Interseção de Semiplanos / Busca Binária + Interseção Reta-Círculo).
- **2023 I - Inversions:** Matemática / Combinatória + Contagem de inversões com PA.
- **2023 J - Journey of the Robber:** Árvores Avançadas (Centroid Decomposition).
- **2023 K - Keen on Order:** Programação Dinâmica com Bitmask + Guloso (Redução para $K \le 20$).
- **2023 L - Latam++:** Strings / Parsing / Pilha / Divide & Conquer.
- **2023 M - Meeting Point:** Grafos (Dijkstra + Verificação de vértices obrigatórios em caminhos mínimos).

### 📅 ICPC Regional 2024 (12 Questões)

- **2024 A - Append and Panic!:** Strings Básicas / Ad-Hoc (Warm-up).
- **2024 B - Biketopia's Cyclic Track:** Grafos (Árvore de DFS, Pontes / Ciclo cuja remoção preserva conectividade).
- **2024 C - Cindy's Christmas Challenge:** Estruturas de Dados (Segment Tree / Somas de Prefixo para alinhamento em intervalo).
- **2024 D - Diverse T-Shirts:** Fluxo / Emparelhamento Bipartido + Reconstrução de Grafo de Linha (Cliques de cor de texto e fundo).
- **2024 E - Evereth Expedition:** Guloso / Two Pointers (Reconstrução de sequência unimodal).
- **2024 F - Finding Privacy:** Construtivo / Matemática (Conjunto independente maximal de tamanho $K$ em grafo caminho).
- **2024 G - Grand Glory Race:** Árvores (DP de Rerooting + Binary Lifting / LCA para Diagrama de Voronoi na árvore).
- **2024 H - Heraclosures:** Estruturas de Dados / Grafos (DP em DAG + Sqrt Decomposition com buffer de atualizações).
- **2024 I - Inversion Insight:** Programação Dinâmica + Combinatória + Fenwick Tree (BIT).
- **2024 J - Jigsaw of Shadows:** Geometria Básica (Trigonometria) + Sweep Line (União de intervalos 1D — Warm-up).
- **2024 K - Kool Strings:** Strings Básicas / Guloso (Trocas mínimas em blocos consecutivos).
- **2024 L - Latin Squares:** Matemática (Ciclos de Permutação) + Construtivo / Casamento Bipartido.

### 📅 ICPC Regional 2025 (12 Questões)

- **2025 A - Apple Pie:** Grafos (Caminho / Circuito Euleriano no grafo completo $K_N$ com prefixo e sufixo fixos).
- **2025 B - Balanced Balloons:** Programação Dinâmica + Teoria dos Números (Divisibilidade de médias de prefixo).
- **2025 C - Clean Streets:** Guloso / Sweep Line / Two Pointers + Matemática de Frações.
- **2025 D - Displaying Decimals:** Teoria dos Números Avançada (Ordem Multiplicativa, Função Totiente de Euler, Fatoração).
- **2025 E - Emergency Rations:** Estruturas de Dados (Segment Tree com Lazy Propagation + Busca Binária na SegTree).
- **2025 F - Fuzzy Factorization:** Teoria dos Números (Fatoração via Pollard's Rho + Miller-Rabin no prefixo de $X$).
- **2025 G - Gridoland Power Gauge:** Fluxo em Redes (Min-Cut = Caminho Mínimo no Grafo Dual Planar) + Busca Ternária.
- **2025 H - Harder Horizons:** Estruturas de Dados + DP (Segment Tree / Pilha Monotônica).
- **2025 I - Infiltration Route:** Grafos / DP em DAG (BFS em pares de estados $(u, v)$ explorando monotonicidade $S < T$).
- **2025 J - Judgmental Crowd:** Strings Básicas / Ad-Hoc (Contagem de substrings — Warm-up).
- **2025 K - Kings Conquest:** Guloso / Matemática (Expansão ótima de Bounding Box em Grid).
- **2025 L - Lonely Creatures:** Geometria Analítica + Estruturas de Dados (Interseção Reta-Parábola reduzida a contagem de inversões com BIT).

---

## 🏆 5. Plano de Ação Prático para a Equipe

1. **Garantir os 4 a 5 Balões Rápidos (0h–1h30 de prova):**
    - Treinar velocidade de implementação em **Ad-Hoc, Simulação Modular, Strings Básicas, União de Intervalos (Sweep 1D), Pilha e Gulosos com Ordenação/Two Pointers**.
2. **Dominar o Miolo Decisivo de Medalha (1h30–3h30 de prova):**
    - **Grafos e Árvores:** DFS Tree (pontes/ciclos), Dijkstra, BFS Multisource/Espaço-Tempo, Caminho Euleriano, DSU, Binary Lifting/LCA e Rerooting DP.
    - **Estruturas de Dados:** Pilha Monotônica, Segment Tree (normal e Lazy) e Fenwick Tree (BIT).
    - **DP e Matemática:** DP com Prefix Sum, Knapsack/Bitmask, Divisores em $O(\sqrt{N})$, Combinatória Modular e Inversões.
3. **Diferencial para o Topo da Tabela (3h30–5h00 de prova):**
    - **Fluxo e Matching:** Dinic, Hopcroft-Karp e **Algoritmo Húngaro** no caderno, mais reduções clássicas (Dilworth, Dual Planar, Grafo de Linha).
    - **Geometria + ED:** Convex Hull Trick / Li Chao Tree, Rotação de Manhattan ($45^\circ$), Sweep Radial (ordenação por `atan2` / produto vetorial) e Soma de Minkowski.
