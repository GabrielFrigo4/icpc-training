# 🎯 Guia de Questões por Tema (Zero Troca de Contexto Mental) — ICPC LatAm (2019–2025)

Este guia agrupa todas as **90 questões** das 7 edições (2019, 2020, 2021, 2022, 2023, 2024 e 2025) para você estudar **um tema por vez do começo ao fim**, sem trocar de contexto mental.

### 🧭 Como este arquivo está ordenado:

1. **Ordem Macro dos 8 Blocos:** Do tema **mais frequente e mais rápido de pontuar** até o **menos frequente e mais específico**.
2. **Ordem Interna de cada Bloco:** Dividido em **Subtemas** (para manter a mesma estrutura mental na cabeça) e ordenado estritamente da questão **mais fácil (`🟢 Fácil`)** até a **mais difícil (`🔴 Muito Difícil`)**.
3. **Referências Diretas:** Todos os subtemas apontam diretamente para a página correspondente no [https://cp-algorithms.com/](https://cp-algorithms.com/).

---

## ⚡ Trilha Expressa por Nível de Dificuldade Global (Caso queira varrer por Nível)

Se você preferir fazer primeiro **todos os subtemas fáceis** da prova antes de subir de nível, siga esta ordem de subtemas:

1. **Nível 1 (`🟢 Fácil / Warm-up` — Garantir os 3 a 4 primeiros balões):**
    - `Subtema 1.1` (Ad-Hoc e Simulação Direta) $\to$ `Subtema 6.1` (Strings Básicas e Frequência) $\to$ `Subtema 5.1` (Geometria 1D / Sweep de Intervalos).
2. **Nível 2 (`🟡 Médio` — Base de Medalha):**
    - `Subtema 1.2` (Two Pointers e Prefix Sum) $\to$ `Subtema 1.3` (Gulosos, Potências de 2 e Escalonamento) $\to$ `Subtema 3.1` (Pilha e Pilha Monotônica) $\to$ `Subtema 2.1` (DFS, BFS e Alcançabilidade) $\to$ `Subtema 2.2` (Dijkstra e Grid Expansion) $\to$ `Subtema 7.1` (Manipulação de Bits e Divisores $O(\sqrt{N})$) $\to$ `Subtema 4.1` (DP Clássica: Knapsack, Prefix Sum e Bitmask).
3. **Nível 3 (`🟠 Difícil` — Diferencial Competitivo):**
    - `Subtema 1.4` (Construtivos e Jogos) $\to$ `Subtema 2.3` (Pontes, Ciclos e Euleriano) $\to$ `Subtema 3.2` (Fenwick Tree / BIT e Hashing) $\to$ `Subtema 3.3` (Segment Tree e Lazy Propagation) $\to$ `Subtema 8.1` (Matching Bipartido e Húngaro) $\to$ `Subtema 4.2` (DP de Intervalos, Árvore Cartesiana e Combinatória) $\to$ `Subtema 4.3` (DP de Probabilidade e Valor Esperado) $\to$ `Subtema 5.2` (Geometria Analítica, Rotação $45^\circ$ e CHT) $\to$ `Subtema 6.2` (Z-Function, KMP e Parsing) $\to$ `Subtema 7.2` (Combinatória, Ciclos de Permutação e Polinômios).
4. **Nível 4 (`🔴 Muito Difícil` — Bosses da Regional):**
    - `Subtema 2.4` (Árvores Avançadas: DSU, Rerooting, Centroid, Isomorfismo) $\to$ `Subtema 3.4` (Sqrt Decomposition e Li Chao Tree) $\to$ `Subtema 5.3` (Sweep Radial, Semiplanos e Minkowski) $\to$ `Subtema 7.3` (Totiente, Ordem Multiplicativa, Pollard's Rho e FFT) $\to$ `Subtema 8.2` (Max Flow Dinic, Grafo de Linha e Dual Planar) $\to$ `Subtema 6.3` (Suffix Automaton e Suffix Array).

---

## 1️⃣ BLOCO 1: Gulosos, Ad-Hoc, Simulação e Construtivos (16 Questões — 17.8%)

> **Foco Mental:** Invariantes, ordenação, dois ponteiros, somas de prefixo, aritmética modular de ciclos e escolhas gulosas.
> **Referência Base:** [https://cp-algorithms.com/schedules/schedule_one_machine.html](https://cp-algorithms.com/schedules/schedule_one_machine.html)

### 🔹 Subtema 1.1: Ad-Hoc, Implementação Pura e Simulação Modular (`🟢 Fácil`)

- **Referência CP-Algorithms:** [Modular Arithmetic](https://cp-algorithms.com/algebra/module-inverse.html)
    - **2019 M - Mountain Ranges** (`🟢 Fácil`) — _Subtema:_ Iteração linear, maior segmento contíguo com diferença adjacente $\le X$.
    - **2020 N - Non-Integer Donuts** (`🟢 Fácil`) — _Subtema:_ Leitura de strings monetárias, soma de centavos módulo $100$.
    - **2022 D - Daily Trips** (`🟢 Fácil`) — _Subtema:_ Simulação direta de estado (estoque de guarda-chuvas em dois locais).
    - **2021 I - Invested Money** (`🟢 Fácil`) — _Subtema:_ Aritmética modular de dias da semana ($\bmod 7$), simulação de ciclos de renovação de 30 dias.
    - **2020 L - Lola's Schedule** (`🟢 Fácil-Médio`) — _Subtema:_ Aritmética modular de intervalos ($\bmod X$), contagem de conflitos em janela de 480 minutos.
    - **2020 J - Job Allocator** (`🟡 Médio`) — _Subtema:_ Geração de multiconjuntos pequenos ($R, K \le 8$), tabela hash / contagem de frequência de máscaras.

### 🔹 Subtema 1.2: Two Pointers, Janela Deslizante e Soma de Prefixos (`🟢 Fácil` $\to$ `🟡 Médio`)

- **Referência CP-Algorithms:** [Search the subsegment with the maximum/minimum sum](https://cp-algorithms.com/others/maximum_average_segment.html) | [Binary Search](https://cp-algorithms.com/num_methods/binary_search.html)
    - **2019 E - Eggfruit Cake** (`🟢 Fácil-Médio`) — _Subtema:_ String circular (duplicação de array), distância até o próximo caractere `'E'` / Two Pointers.
    - **2020 C - Crisis at the Wedding** (`🟡 Médio`) — _Subtema:_ Array circular, soma de prefixos de excessos, execução em duas passadas no anel.
    - **2024 E - Evereth Expedition** (`🟡 Médio`) — _Subtema:_ Two Pointers das extremidades para o pico ($1 \dots N$), preenchimento guloso de sequência unimodal.
    - **2025 C - Clean Streets** (`🟠 Difícil`) — _Subtema:_ Ordenação de eventos por razão $\frac{L_i}{H_i}$ e $\frac{U_i}{H_i}$, Sweep Line / Two Pointers mantendo soma de capacidades $\lfloor \frac{K}{H_i} \rfloor$.

### 🔹 Subtema 1.3: Gulosos de Ordenação, Potências de 2 e Escalonamento (`🟡 Médio`)

- **Referência CP-Algorithms:** [Scheduling jobs on one machine](https://cp-algorithms.com/schedules/schedule_one_machine.html) | [Bit Manipulation](https://cp-algorithms.com/algebra/bit-manipulation.html)
    - **2020 D - Dividing Candy** (`🟡 Médio`) — _Subtema:_ Propriedade de transporte de potências de 2 ($2^x + 2^x = 2^{x+1}$), contagem de bits na soma total.
    - **2025 K - Kings Conquest** (`🟡 Médio`) — _Subtema:_ Expansão gulosa de _Bounding Box_ 2D usando $K$ movimentos de Rei (análise de casos para $N=1, 2$ vs $N \ge 3$).
    - **2021 M - Most Ordered Way** (`🟡 Médio`) — _Subtema:_ Escalonamento por Deadline (EDD — _Earliest Deadline First_), cálculo de folga mínima $\min_j (D_j - \text{pref}_j)$ para escolha gulosa lexicográfica em $O(N^2)$.

### 🔹 Subtema 1.4: Construtivos e Teoria dos Jogos Gulosa (`🟡 Médio` $\to$ `🟠 Difícil`)

- **Referência CP-Algorithms:** [Games on arbitrary graphs](https://cp-algorithms.com/game_theory/games_on_graphs.html) | [Bit Manipulation](https://cp-algorithms.com/algebra/bit-manipulation.html)
    - **2024 F - Finding Privacy** (`🟡 Médio`) — _Subtema:_ Construtivo em linha, partição em blocos de espaços de tamanho $2$ (`X-`) e $3$ (`X--`), conjunto independente maximal.
    - **2023 B - Blackboard Game** (`🟡 Médio`) — _Subtema:_ Teoria dos jogos de soma, pareamento simétrico, verificação se todas as frequências são múltiplas de $3$.
    - **2022 K - Kind Baker** (`🟠 Difícil`) — _Subtema:_ Construtivo em Grid $100 \times 100$, representação binária com $\lceil \log_2 K \rceil$ camadas conectadas em formato de "pente".

---

## 2️⃣ BLOCO 2: Grafos e Árvores (15 Questões Principais + 2 Híbridas — 16.7%)

> **Foco Mental:** Travessias (DFS/BFS), caminhos mínimos (Dijkstra), componentes conexas, pontes, ciclos eulerianos e algoritmos estruturais em árvores.
> **Referência Base:** [https://cp-algorithms.com/graph/depth-first-search.html](https://cp-algorithms.com/graph/depth-first-search.html)

### 🔹 Subtema 2.1: DFS, BFS, Espaço de Estados e Alcançabilidade (`🟡 Médio`)

- **Referência CP-Algorithms:** [Depth First Search](https://cp-algorithms.com/graph/depth-first-search.html) | [Breadth First Search](https://cp-algorithms.com/graph/breadth-first-search.html) | [Connected Components](https://cp-algorithms.com/graph/search-for-connected-components.html)
    - **2022 A - Asking for Money** (`🟡 Médio`) — _Subtema:_ DFS/BFS no grafo reverso ou a partir de cada vértice marcando alcançabilidade de $X_i$ e $Y_i$ sem passar por $i$ ($N \le 1000$).
    - **2019 I - Improve SPAM** (`🟡 Médio`) — _Subtema:_ Ordenação Topológica / DP de contagem de caminhos em DAG + DFS de visitados. ([Topological Sort](https://cp-algorithms.com/graph/topological-sort.html))
    - **2021 F - Fields Division** (`🟡 Médio`) — _Subtema:_ Componentes conexas sem o vértice $N$, dominância da potência $2^N > \sum_{i < N} 2^i$, alcançabilidade de $N-1$.
    - **2022 M - Maze in Bolt** (`🟡 Médio`) — _Subtema:_ BFS/DFS em Grid Cilíndrico ($R \times C$), pré-cálculo de rotações válidas da string da porca (normal e invertida).
    - **2020 A - Almost Origami** (`🟠 Difícil`) — _Subtema:_ Busca em Largura (BFS) / IDA\* com poda matemática no espaço de estados de pares de frações $(L, R)$.
    - **2021 C - Cyclists versus Clouds** (`🟠 Difícil`) — _Subtema:_ BFS no Espaço-Tempo $(x, y, t)$ com $x, y \le 100$ e $t \le 300$, pré-processamento da ocupação de polígonos ortogonais móveis.
    - **2025 I - Infiltration Route** (`🟠 Difícil`) — _Subtema:_ BFS / DP em DAG no espaço de estados de pares $(u, v)$ (avançando sempre o menor índice para respeitar a restrição de sensores $i$ e $i+N$).

### 🔹 Subtema 2.2: Dijkstra, Fila de Prioridade e Caminhos Mínimos (`🟡 Médio` $\to$ `🟠 Difícil`)

- **Referência CP-Algorithms:** [Dijkstra Algorithm](https://cp-algorithms.com/graph/dijkstra_sparse.html)
    - **2022 I - Italian Calzone & Pasta Corner** (`🟡 Médio`) — _Subtema:_ Expansão gulosa em Grid com `priority_queue` (Min-Heap estilo Prim/Dijkstra) iniciando de cada célula.
    - **2023 M - Meeting Point** (`🟠 Difícil`) — _Subtema:_ Dijkstra a partir de $P$ e de $G$, identificação de pontos com $d(P, X) = 2 \cdot d(P, G)$ onde $G$ é ponto de articulação/dominador no DAG de caminhos mínimos.

### 🔹 Subtema 2.3: Árvore de DFS, Pontes, Ciclos e Caminho Euleriano (`🟠 Difícil`)

- **Referência CP-Algorithms:** [Finding Bridges in $O(N+M)$](https://cp-algorithms.com/graph/bridge-searching.html) | [Eulerian Path](https://cp-algorithms.com/graph/euler_path.html)
    - **2024 B - Biketopia's Cyclic Track** (`🟠 Difícil`) — _Subtema:_ Árvore de DFS, _back-edges_, encontrar ciclo cuja remoção não desconecta o grafo (evitar desconectar subárvores dependentes de uma única _back-edge_).
    - **2025 A - Apple Pie** (`🟠 Difícil`) — _Subtema:_ Caminho / Circuito Euleriano no grafo completo $K_N$ após remover as arestas já usadas no prefixo $L$ e no sufixo $R$ (graus pares/ímpares e conectividade).

### 🔹 Subtema 2.4: Árvores Avançadas (DSU, LCA, Rerooting, Centroid e Tree Hashing) (`🟠 Difícil` $\to$ `🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Disjoint Set Union](https://cp-algorithms.com/data_structures/disjoint_set_union.html) | [LCA - Binary Lifting](https://cp-algorithms.com/graph/lca_binary_lifting.html)
    - **2023 E - Elevated Profits** (`🟠 Difícil`) — _Subtema:_ Escalonamento ótimo em árvore (Argumento de Troca de Sidney/Smith), mesclagem de nós na `priority_queue` pela maior média usando DSU.
    - **2024 G - Grand Glory Race** (`🟠 Difícil`) — _Subtema:_ DP em Árvore (folha mais próxima de cada vértice) + Rerooting DP + Binary Lifting / LCA para responder queries de mudança de raiz.
    - **2023 J - Journey of the Robber** (`🔴 Muito Difícil`) — _Subtema:_ _Centroid Decomposition_ na árvore processando vértices em ordem decrescente de riqueza.
    - **2021 G - Generator Tree** (`🔴 Muito Difícil`) — _Subtema:_ Isomorfismo de Árvores (_Tree Hashing_ canônico) + teste de partição da árvore em blocos de tamanho divisor $d \mid K$.
    - _(Híbrida)_ **2022 F - Favorite Tree** (`🟠 Difícil`) — _Subtema:_ DP de Isomorfismo de Subárvore combinada com Emparelhamento Bipartido (ver também no Bloco 8).
    - _(Híbrida)_ **2024 H - Heraclosures** (`🟠 Difícil`) — _Subtema:_ DP em DAG combinada com Sqrt Decomposition (ver no Bloco 3).

---

## 3️⃣ BLOCO 3: Estruturas de Dados (13 Questões Principais + 3 Híbridas — 14.4%)

> **Foco Mental:** Pilhas monotônicas, somas/XOR de prefixo, Fenwick Tree (BIT), Segment Tree (com e sem Lazy Propagation), Sqrt Decomposition e estruturas geométricas (CHT / Li Chao).
> **Referência Base:** [https://cp-algorithms.com/data_structures/segment_tree.html](https://cp-algorithms.com/data_structures/segment_tree.html)

### 🔹 Subtema 3.1: Pilha, Pilha Monotônica e Pré-processamento Harmônico (`🟡 Médio`)

- **Referência CP-Algorithms:** [Minimum stack / Minimum queue](https://cp-algorithms.com/data_structures/stack_queue_modification.html)
    - **2021 J - Joining Pairs** (`🟡 Médio`) — _Subtema:_ Filtrar pares com ambas as pontas na borda do retângulo $W \times H$, mapear coordenadas 2D da borda para 1D no perímetro e testar parênteses balanceados com Pilha.
    - **2020 E - Excellent Views** (`🟡 Médio`) — _Subtema:_ Pilha Monotônica (próximo prédio maior à esquerda e à direita) + Array de Diferenças (soma em intervalo estático).
    - **2019 L - Leverage MDT** (`🟡 Médio`) — _Subtema:_ Redução de linhas para paridade igual, Maior Quadrado de `1`s em Matriz Binária usando Pilha Monotônica em Histograma.
    - **2020 B - Beautiful Mountains** (`🟡 Médio`) — _Subtema:_ Pré-cálculo de extensões monótonas crescentes/decrescentes + teste de todos os tamanhos de bloco $K$ usando Série Harmônica $\sum \frac{N}{K} = O(N \log N)$.

### 🔹 Subtema 3.2: Hashing Aleatório e Fenwick Tree (BIT) (`🟡 Médio` $\to$ `🟠 Difícil`)

- **Referência CP-Algorithms:** [Fenwick Tree](https://cp-algorithms.com/data_structures/fenwick.html) | [String Hashing](https://cp-algorithms.com/string/string-hashing.html)
    - **2023 C - Candy Rush** (`🟡 Médio`) — _Subtema:_ _XOR Hashing_ / Soma de vetores aleatórios de 64 bits onde a soma dos $K$ pesos é $0$, buscando o primeiro prefixo repetido em um `map`/hash table.
    - _(Híbrida)_ **2024 I - Inversion Insight** (`🟠 Difícil`) — _Subtema:_ Fenwick Tree (BIT) + Busca Binária na BIT para reconstruir a $K$-ésima permutação (ver no Bloco 4).
    - _(Híbrida)_ **2025 L - Lonely Creatures** (`🟠 Difícil`) — _Subtema:_ Fenwick Tree (BIT) para contar pares de intervalos/cordas que se cruzam na parábola (ver no Bloco 5).

### 🔹 Subtema 3.3: Segment Tree, Lazy Propagation e Walk na SegTree (`🟠 Difícil` $\to$ `🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Segment Tree (and Lazy Propagation)](https://cp-algorithms.com/data_structures/segment_tree.html)
    - **2024 C - Cindy's Christmas Challenge** (`🟠 Difícil`) — _Subtema:_ Soma de Prefixos + Segment Tree (RMQ) para minimizar custo de edição para uma sequência $R^r B^b$ em subintervalos $[L, U]$.
    - **2025 H - Harder Horizons** (`🟠 Difícil`) — _Subtema:_ DP otimizada com Segment Tree / Pilha Monotônica mantendo o menor máximo possível do último grupo para maximizar o número de divisões.
    - **2019 J - Jumping Grasshopper** (`🟠 Difícil`) — _Subtema:_ Segment Tree com atualização pontual e busca binária na árvore para achar o próximo maior à esquerda/direita e o topo do salto.
    - **2025 E - Emergency Rations** (`🟠 Difícil`) — _Subtema:_ Segment Tree Dinâmica / Comprimida com Lazy Propagation mantendo $\min_k (k + \text{qtd de caixas} > k)$ após inserções e remoções.
    - **2019 C - Cut Inequality Down** (`🔴 Muito Difícil`) — _Subtema:_ Segment Tree mantendo composição de funções lineares com _clamping_ $\min(U, \max(L, x + \Delta))$ (ou Binary Lifting de transições nos limites $L$ e $U$).
    - **2021 D - Daily Turnovers** (`🔴 Muito Difícil`) — _Subtema:_ Soma de Prefixos + Pilha Monotônica + Segment Tree com Lazy Propagation para avaliar o ganho de adicionar o _glitch_ $X$ em cada posição $i$.

### 🔹 Subtema 3.4: Sqrt Decomposition e Convex Hull Trick / Li Chao Tree (`🟠 Difícil` $\to$ `🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Sqrt Decomposition](https://cp-algorithms.com/data_structures/sqrt_decomposition.html) | [Convex Hull Trick and Li Chao Tree](https://cp-algorithms.com/geometry/convex_hull_trick.html)
    - **2024 H - Heraclosures** (`🟠 Difícil`) — _Subtema:_ Sqrt Decomposition sobre eventos (buffer de tamanho $B \approx \sqrt{E \cdot M}$) + recálculo periódico de caminhos no DAG.
    - **2023 A - Analyzing Contracts** (`🔴 Muito Difícil`) — _Subtema:_ _Divide and Conquer_ / Segment Tree sobre intervalos de fornecedores + _Convex Hull Trick_ (CHT) / _Li Chao Tree_ para maximizar $(R_j - P_i)(E_j - S_i + 1)$.

---

## 4️⃣ BLOCO 4: Programação Dinâmica (DP) e Probabilidade (11 Questões Principais + 3 Híbridas — 12.2%)

> **Foco Mental:** Transições de estados, otimização com somas de prefixo, DP com máscaras de bits, DP em intervalos, árvore cartesiana e valor esperado.
> **Referência Base:** [https://cp-algorithms.com/dynamic_programming/divide-and-conquer-dp.html](https://cp-algorithms.com/dynamic_programming/divide-and-conquer-dp.html)

### 🔹 Subtema 4.1: DP Clássica (Knapsack, Prefix Sum Optimization, Bitmask e Divisibilidade) (`🟡 Médio` $\to$ `🟠 Difícil`)

- **Referência CP-Algorithms:** [Profile Dynamics / Bitmask DP](https://cp-algorithms.com/dynamic_programming/profile-dynamics.html)
    - **2022 E - Empty Squares** (`🟡 Médio`) — _Subtema:_ DP de Mochila Booleana (Knapsack) para encaixar peças distintas nos dois lados livres $E$ e $N - K - E$.
    - **2020 K - Keylogger** (`🟡 Médio`) — _Subtema:_ DP em $O(N \cdot K)$ otimizada com Soma de Prefixos + Busca Binária (`lower_bound`/`upper_bound`) nas linhas da matriz ordenada $T$.
    - **2019 F - Fabricating Sculptures** (`🟡 Médio`) — _Subtema:_ DP de partições piramidais em $O(S \cdot B)$ otimizada mantendo soma de prefixos simples e soma de prefixos ponderada.
    - **2023 K - Keen on Order** (`🟠 Difícil`) — _Subtema:_ Poda pelo princípio da casa dos pombos (se $K > 20$, sempre falta uma permutação; construir gulosamente pelo elemento mais tardio) + DP com Bitmask ($2^K$) para $K \le 20$.
    - **2025 B - Balanced Balloons** (`🟠 Difícil`) — _Subtema:_ DP sobre a média inteira no passo $i$ (explorando que as transições reduzem o espaço de estados possíveis rapidamente para $\min(N, K)$ passos).

### 🔹 Subtema 4.2: DP de Intervalos, Combinatória e Árvore Cartesiana (`🟠 Difícil` $\to$ `🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Knuth's Optimization](https://cp-algorithms.com/dynamic_programming/knuth-optimization.html) | [Divide and Conquer DP](https://cp-algorithms.com/dynamic_programming/divide-and-conquer-dp.html)
    - **2024 I - Inversion Insight** (`🟠 Difícil`) — _Subtema:_ DP de contagem de permutações de tamanho $n$ com $k$ inversões (limitado a $n \le 20$ pois $20! > 4 \cdot 10^{18}$) + reconstrução dígito a dígito com BIT.
    - **2021 E - Expedition Plans** (`🔴 Muito Difícil`) — _Subtema:_ DP de Intervalos $O(N^2)$ para árvore de decisão ótima, separando o custo de ir para a esquerda ou direita do ponto de divisão $k$ e usando Two Pointers / Deque monotônico.
    - **2020 F - Fascinating Partitions** (`🔴 Muito Difícil`) — _Subtema:_ DP de partição em $k$ subarrays minimizando/maximizando soma dos máximos via Árvore Cartesiana / Pilha Monotônica em $O(N^2)$.
    - _(Híbrida)_ **2020 I - Impenetrable Wall** (`🟠 Difícil`) — _Subtema:_ DP Poligonal após ordenação radial (ver no Bloco 5).

### 🔹 Subtema 4.3: DP de Probabilidade, Valor Esperado e Jogos Estocásticos (`🟠 Difícil` $\to$ `🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Modular Inverse](https://cp-algorithms.com/algebra/module-inverse.html) | [Binomial Coefficients](https://cp-algorithms.com/combinatorics/binomial-coefficients.html)
    - **2021 L - Leaving Yharnam** (`🟠 Difícil`) — _Subtema:_ Linearidade do Valor Esperado + Combinatória Modular ($\bmod 10^9+7$) sobre o número de pares de assentos completamente vazios após o embarque do grupo $G$.
    - **2020 G - Game of Slots** (`🟠 Difícil`) — _Subtema:_ DP de Valor Esperado Contínuo em $O(N^3)$ ou $O(N^2)$ baseada na ordem relativa das cartas de Alice e Bob.
    - **2019 H - Hold or Continue?** (`🔴 Muito Difícil`) — _Subtema:_ DP de Probabilidade com Ciclos (Iteração de Valor / Ponto Fixo) para calcular $P(\text{vencer} \mid c, h, x)$ no jogo de dados _Pig_.

---

## 5️⃣ BLOCO 5: Geometria Computacional (11 Questões Principais + 4 Híbridas — 12.2%)

> **Foco Mental:** Produto escalar e vetorial, trigonometria, rotação de eixos ($45^\circ$), ordenação radial (`atan2` / cross product), envoltória de retas, interseção de semiplanos e soma de Minkowski.
> **Referência Base:** [https://cp-algorithms.com/geometry/basic-geometry.html](https://cp-algorithms.com/geometry/basic-geometry.html)

### 🔹 Subtema 5.1: Geometria Básica, Trigonometria e União de Intervalos 1D (`🟢 Fácil`)

- **Referência CP-Algorithms:** [Basic Geometry](https://cp-algorithms.com/geometry/basic-geometry.html) | [Length of the union of segments](https://cp-algorithms.com/geometry/length-of-segments-union.html)
    - **2024 J - Jigsaw of Shadows** (`🟢 Fácil`) — _Subtema:_ Projeção trigonométrica $[X_i, X_i + H_i / \tan \theta]$ + algoritmo clássico de união de intervalos 1D (Sweep Line).
    - _(Híbrida)_ **2021 J - Joining Pairs** (`🟡 Médio`) — _Subtema:_ Mapeamento de coordenadas do perímetro de um retângulo para 1D + Pilha (ver no Bloco 3).

### 🔹 Subtema 5.2: Geometria Analítica, Distância de Manhattan ($45^\circ$), Parábolas e Retas (`🟠 Difícil`)

- **Referência CP-Algorithms:** [Convex Hull Trick](https://cp-algorithms.com/geometry/convex_hull_trick.html) | [Manhattan Distance / Nearest Pair](https://cp-algorithms.com/geometry/nearest_points.html)
    - **2023 G - GPS on a Flat Earth** (`🟠 Difícil`) — _Subtema:_ Rotação de coordenadas em $45^\circ$ ($u = x + y$, $v = x - y$) transformando círculos de Manhattan em bordas de quadrados paralelos aos eixos; interseção de segmentos.
    - **2025 L - Lonely Creatures** (`🟠 Difícil`) — _Subtema:_ Interseção de reta $y = M_i x + C_i$ com a parábola $y = A x^2 + B$, reduzindo a condição de encontro interno ao cruzamento de cordas $[x_{i,1}, x_{i,2}]$ contado com Fenwick Tree (BIT).
    - **2022 J - Joining a Marathon** (`🟠 Difícil`) — _Subtema:_ Dualidade Ponto-Reta / Intervalos de inclinação angular no plano $(t, x)$ para identificar fotos sem corredores.
    - **2022 B - Board Game** (`🔴 Muito Difícil`) — _Subtema:_ Busca Binária Paralela + Envoltória Convexa Dinâmica / _Convex Hull Trick_ (CHT) para encontrar o primeiro jogador cuja reta passa acima de cada ponto.

### 🔹 Subtema 5.3: Ordenação Polar (Sweep Radial), Semiplanos, Círculos e Soma de Minkowski (`🟠 Difícil` $\to$ `🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Half-plane intersection](https://cp-algorithms.com/geometry/halfplane-intersection.html) | [Circle-Line Intersection](https://cp-algorithms.com/geometry/circle-line-intersection.html) | [Minkowski sum of convex polygons](https://cp-algorithms.com/geometry/minkowski.html) | [Check if point belongs to the convex polygon in $O(\log N)$](https://cp-algorithms.com/geometry/point-in-convex-polygon.html)
    - **2019 D - Dazzling Stars** (`🟡 Médio-Difícil`) — _Subtema:_ Produto vetorial, interseção de semiplanos angulares (direções de rotação válidas no círculo unitário) para cada par de estrelas com $B_i > B_j$.
    - **2019 B - Build the Perfect House** (`🟠 Difícil`) — _Subtema:_ Simetria de $\frac{\pi}{2}$ (rotacionar pontos para o 1º quadrante) + Busca Binária no raio $R$ + União de intervalos angulares proibidos (Sweep Angular).
    - **2020 I - Impenetrable Wall** (`🟠 Difícil`) — _Subtema:_ Ordenação Radial em torno da casa $H$ (`atan2` / produto vetorial) + DP Poligonal em $O(N^3)$ ou $O(N^2)$ garantindo ângulos $< 180^\circ$.
    - **2023 H - Health in Hazard** (`🟠 Difícil`) — _Subtema:_ Busca Binária no tempo $k$ + Interseção de Semiplanos (ou interseção de cada reta com o círculo de raio $D$ mantendo intervalos de arcos bloqueados).
    - **2021 A - Ancient Towers** (`🔴 Muito Difícil`) — _Subtema:_ Ordenação Polar / Sweep Line de todas as $\binom{N}{2}$ retas mantendo os pontos ordenados pela distância orientada à reta + Busca Binária para contar quadriláteros convexos e côncavos de área $\ge S$.
    - **2022 G - Gravitational Wave Detector** (`🔴 Muito Difícil`) — _Subtema:_ Soma de Minkowski de Polígonos Convexos ($P_1 + P_2$, $2P_1 - P_2$, $2P_2 - P_1$) + Teste de Ponto em Polígono Convexo em $O(\log M)$.

---

## 6️⃣ BLOCO 6: Strings — Do Básico aos Autômatos (9 Questões Principais + 2 Híbridas — 10.0%)

> **Foco Mental:** Manipulação de caracteres, janelas de frequência, Z-Function, KMP, String Hashing, Parsing de expressões e Autômato de Sufixos (SAM).
> **Referência Base:** [https://cp-algorithms.com/string/string-hashing.html](https://cp-algorithms.com/string/string-hashing.html)

### 🔹 Subtema 6.1: Strings Básicas, Frequência e Guloso em Strings (`🟢 Fácil`)

- **Referência CP-Algorithms:** [String Hashing](https://cp-algorithms.com/string/string-hashing.html)
    - **2025 J - Judgmental Crowd** (`🟢 Fácil`) — _Subtema:_ Busca linear das substrings fixas `"ha"`, `"boooo"` e `"bravo"`.
    - **2021 K - KIARA is a Recursive Acronym** (`🟢 Fácil`) — _Subtema:_ Marcar um array booleano de 26 posições com a primeira letra de cada palavra e testar se alguma palavra usa apenas letras marcadas.
    - **2024 A - Append and Panic!** (`🟢 Fácil`) — _Subtema:_ Contar quantos caracteres distintos existem na string $S$ (ou achar o sufixo estritamente crescente) e subtrair de $|S|$.
    - **2023 D - Deciphering WordWhiz** (`🟢 Fácil`) — _Subtema:_ Simulação da máscara de retorno do _Wordle_ (`*`, `!`, `X`) para cada palavra do dicionário contra a palavra secreta.
    - **2024 K - Kool Strings** (`🟢 Fácil-Médio`) — _Subtema:_ Agrupamento em blocos de caracteres iguais consecutivos (_Run-Length Encoding_), invertendo a cada $K$-ésimo caractere (com caso especial $K = 2$).

### 🔹 Subtema 6.2: Z-Function, String Hashing e Parsing de Expressões (`🟠 Difícil`)

- **Referência CP-Algorithms:** [Z-function](https://cp-algorithms.com/string/z-function.html) | [Prefix function (KMP)](https://cp-algorithms.com/string/prefix-function.html) | [Expression parsing](https://cp-algorithms.com/string/expression_parsing.html)
    - **2022 L - Lazy Printing** (`🟠 Difícil`) — _Subtema:_ Salto guloso maximizando o alcance $\max_{1 \le p \le D} (p + \text{LCP}(T[i..], T[i+p..]))$ calculado via Z-Function ou _Polynomial Rolling Hash_ + Busca Binária.
    - **2023 L - Latam++** (`🟠 Difícil`) — _Subtema:_ Parsing de expressões aritméticas bem formadas com Pilha de parênteses e contagem de blocos válidos separados por operadores.

### 🔹 Subtema 6.3: Suffix Automaton (SAM) e Suffix Array (`🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Suffix Automaton](https://cp-algorithms.com/string/suffix-automaton.html) | [Suffix Array](https://cp-algorithms.com/string/suffix-array.html)
    - **2019 G - Gluing Pictures** (`🟠 Difícil`) — _Subtema:_ Construir _Suffix Automaton_ (ou _Suffix Array_) da string da cidade $C$ e avançar gulosamente pelo maior prefixo que é substring de $C$.
    - **2020 M - May I Add a Letter?** (`🔴 Muito Difícil`) — _Subtema:_ _Suffix Automaton_ (SAM) mantendo a soma $\sum (\text{len}(u) - \text{len}(\text{link}(u)))$ dos estados com `cnt >= 2` sobre uma árvore de versões offline (com rollback).

---

## 7️⃣ BLOCO 7: Matemática, Teoria dos Números, Combinatória e FFT (8 Questões Principais + 4 Híbridas — 8.9%)

> **Foco Mental:** Divisores, aritmética modular, função totiente de Euler ($\phi$), ordem multiplicativa, testes de primalidade (Miller-Rabin), fatoração (Pollard's Rho), polinômios e FFT/NTT.
> **Referência Base:** [https://cp-algorithms.com/algebra/factorization.html](https://cp-algorithms.com/algebra/factorization.html)

### 🔹 Subtema 7.1: Manipulação de Bits, Recursão Binária e Divisores em $O(\sqrt{N})$ (`🟡 Médio`)

- **Referência CP-Algorithms:** [Bit Manipulation](https://cp-algorithms.com/algebra/bit-manipulation.html) | [Integer factorization / Trial division](https://cp-algorithms.com/algebra/factorization.html)
    - **2022 C - City Folding** (`🟡 Médio`) — _Subtema:_ Rastreamento reverso dos bits de $P-1$ e $H-1$ ao longo de $N \le 60$ dobras em uma tira de tamanho $2^N$.
    - **2023 F - Forward and Backward** (`🟡 Médio`) — _Subtema:_ Teste direto de palíndromos para bases $b \le \sqrt{N}$ + enumeração de divisores de $N$ para bases $b > \sqrt{N}$ (onde $N = d \cdot b + d \implies b = \frac{N}{d} - 1$).

### 🔹 Subtema 7.2: Combinatória, Inversões, Polinômios e Ciclos de Permutação (`🟡 Médio` $\to$ `🟠 Difícil`)

- **Referência CP-Algorithms:** [Binomial Coefficients](https://cp-algorithms.com/combinatorics/binomial-coefficients.html) | [Modular Inverse](https://cp-algorithms.com/algebra/module-inverse.html)
    - **2019 K - Know your Aliens** (`🟡 Médio`) — _Subtema:_ Construção de raízes ímpares $2i+1$ sempre que há troca entre `'H'` e `'A'`, seguida de multiplicação polinomial $\prod (x - r_k)$ em $O(D^2)$.
    - **2023 I - Inversions** (`🟡 Médio`) — _Subtema:_ Contagem de inversões internas em $S$ + pares $(c_1, c_2)$ entre cópias distintas multiplicados pela progressão aritmética $\binom{N}{2} \pmod{10^9+7}$.
    - **2024 L - Latin Squares** (`🟠 Difícil`) — _Subtema:_ Decomposição das permutações de linhas e colunas em ciclos disjuntos; verificação de se os comprimentos dos ciclos de linhas e colunas coincidem para construir o Quadrado Latino invariante.

### 🔹 Subtema 7.3: FFT / NTT, Ordem Multiplicativa, Totiente e Pollard's Rho (`🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Fast Fourier Transform (FFT)](https://cp-algorithms.com/algebra/fft.html) | [Euler's totient function](https://cp-algorithms.com/algebra/phi-function.html) | [Primality tests (Miller-Rabin)](https://cp-algorithms.com/algebra/primality_tests.html) | [Integer factorization (Pollard's rho)](https://cp-algorithms.com/algebra/factorization.html)
    - **2021 B - Because, Art!** (`🔴 Muito Difícil`) — _Subtema:_ Emparelhamento guloso dos maiores positivos/negativos de mesmo sinal + **Convolução Polinomial (FFT / NTT)** para obter todas as somas ótimas dos elementos restantes de sinais opostos.
    - **2025 D - Displaying Decimals** (`🔴 Muito Difícil`) — _Subtema:_ Fatoração prima com crivo, remoção dos fatores $2$ e $5$ do denominador reduzido $\frac{A_j}{\gcd(A_i, A_j)}$, e cálculo do período da dízima via **Ordem Multiplicativa de $10 \bmod m$** dividindo $\phi(m)$.
    - **2025 F - Fuzzy Factorization** (`🔴 Muito Difícil`) — _Subtema:_ Extrair os primeiros ~18 dígitos significativos de $X$ (multiplicado por $2^a 5^b$ para cobrir o sufixo) e buscar no intervalo $[P - 10^9, P + 10^9]$ um inteiro $B$-suave (todos os fatores primos $\le 10^{18}$) usando **Miller-Rabin + Pollard's Rho**.

---

## 8️⃣ BLOCO 8: Fluxo em Redes e Emparelhamento Bipartido (7 Questões Principais + 1 Híbrida — 7.8%)

> **Foco Mental:** Emparelhamento bipartido máximo (Kuhn / Hopcroft-Karp / Dinic), emparelhamento perfeito de custo mínimo (Algoritmo Húngaro), Teorema de Dilworth, Fluxo Máximo (Dinic) e dualidade Max-Flow Min-Cut em grafos planares.
> **Referência Base:** [https://cp-algorithms.com/graph/dinic.html](https://cp-algorithms.com/graph/dinic.html)

### 🔹 Subtema 8.1: Emparelhamento Bipartido, Dilworth e Algoritmo Húngaro (`🟡 Médio` $\to$ `🟠 Difícil`)

- **Referência CP-Algorithms:** [Kuhn's Algorithm for Maximum Bipartite Matching](https://cp-algorithms.com/graph/kuhn_maximum_bipartite_matching.html) | [Hungarian Algorithm for Assignment Problem](https://cp-algorithms.com/graph/hungarian-algorithm.html)
    - **2021 H - Hamilton The Musical** (`🟡 Médio`) — _Subtema:_ **Algoritmo Húngaro (Min-Cost Perfect Matching)** em grafo bipartido $\lceil N/2 \rceil \times \lceil N/2 \rceil$, onde o custo de alocar a cidade ímpar $u$ na posição $2k-1$ é $L_{2k-2, u} + L_{u, 2k}$.
    - **2022 H - Horse Race** (`🟡 Médio`) — _Subtema:_ Determinar para cada cavalo o conjunto de posições possíveis (interseção de restrições e $\ge W_i$) e rodar **Emparelhamento Bipartido Perfeito (Hopcroft-Karp / Dinic)**.
    - **2019 A - Algorithm Teaching** (`🟠 Difícil`) — _Subtema:_ Gerar os subconjuntos de algoritmos ensinados (estados do Poset) e encontrar a maior anticadeia pelo **Teorema de Dilworth** via Emparelhamento Bipartido.
    - **2022 F - Favorite Tree** (`🟠 Difícil`) — _Subtema:_ DP de Isomorfismo de Subárvore enraizada onde a transição entre os filhos de $u \in T_1$ e os filhos de $v \in T_2$ é resolvida com **Emparelhamento Bipartido**.
    - **2024 D - Diverse T-Shirts** (`🔴 Muito Difícil`) — _Subtema:_ Decompor as arestas da matriz $A$ em cliques de linha (cor de texto) e cliques de coluna (cor de fundo), reconstruindo o grafo bipartido subjacente para rodar **Maximum Bipartite Matching**.

### 🔹 Subtema 8.2: Fluxo Máximo (Dinic) e Corte Mínimo no Grafo Dual Planar (`🟠 Difícil` $\to$ `🔴 Muito Difícil`)

- **Referência CP-Algorithms:** [Dinic's Algorithm](https://cp-algorithms.com/graph/dinic.html) | [Ternary Search](https://cp-algorithms.com/num_methods/ternary_search.html) | [Dijkstra](https://cp-algorithms.com/graph/dijkstra_sparse.html)
    - **2020 H - Halting Wolf** (`🟠 Difícil`) — _Subtema:_ Modelagem direta de **Max Flow (Dinic)**: arestas de saltos finitos têm capacidade igual à frequência na lista, e saltos infinitos têm capacidade $\infty$ (checando ciclos alcançáveis que voltam ao nó $1$).
    - **2025 G - Gridoland Power Gauge** (`🔴 Muito Difícil`) — _Subtema:_ Teorema Max-Flow Min-Cut em Grid Planar: para um tempo fixo $t$, o fluxo máximo de $(1,1)$ a $(N,M)$ equivale ao **Caminho Mínimo (Dijkstra) no Grafo Dual Planar**; como o mínimo de funções afins $C_{ij} + t \cdot R_{ij}$ é uma função côncava em $t$, aplica-se **Busca Ternária** no intervalo $[0, K]$.
