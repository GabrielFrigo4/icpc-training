# 📚 Temas da Prova — Gym 105505 (LatAm 2024)

> **Modo de Uso:** Leitura recomendada de **Segunda a Quarta**. Utilize estes tópicos e referências para calibrar a teoria e o _Team Notebook_ antes do simulado, sem consultar enunciados ou soluções da prova.

---

### 1. Teoria dos Grafos & Conectividade

- **DFS Tree, Pontes & 2-Conectividade:** Construção da árvore de busca em profundidade, detecção de arestas de retorno (_back-edges_) e ciclos que mantêm conectividade residual.
    - 🔗 [CP-Algorithms — Finding Bridges in $O(V+E)$](https://cp-algorithms.com/graph/bridge-searching.html)
- **Ordenação Topológica & Caminhos Críticos em DAGs:** Propagação de tempos de execução e chamadas recursivas com memoização.
    - 🔗 [CP-Algorithms — Topological Sorting](https://cp-algorithms.com/graph/topological-sort.html)
- **Line Graph & Reduções para Grafos Bipartidos:** Propriedades de line graphs e cálculo de Conjunto Independente Máximo via Emparelhamento Bipartido Máximo (Teorema de König).
    - 🔗 [CP-Algorithms — Kuhn's Algorithm for Maximum Bipartite Matching](https://cp-algorithms.com/graph/kuhn_maximum_bipartite_matching.html)
- **Rerooting DP em Árvores:** Cálculo de métricas e controle de territórios para todas as raízes possíveis em $O(N)$.
    - 🔗 [CP-Algorithms — Depth First Search](https://cp-algorithms.com/graph/depth-first-search.html)

### 2. Programação Dinâmica & Combinatória

- **Distância de Edição (Edit Distance) Otimizada:** Variações de distância de edição para strings com blocos repetidos ou estados compactados.
- **Contagem de Permutações por Inversões:** Cálculo de distribuições de permutações com número fixo de inversões via DP com somas de prefixos.
    - 🔗 [CP-Algorithms — Operations on Polynomials](https://cp-algorithms.com/algebra/polynomial.html)

### 3. Geometria Computacional & Varredura

- **Linha de Varredura (Sweep-line) & União de Intervalos:** Projeção unidimensional de sombras e cálculo do comprimento da união de segmentos.
    - 🔗 [CP-Algorithms — Segments Intersection](https://cp-algorithms.com/geometry/segments-intersection.html)

### 4. Álgebra & Estruturas de Permutações

- **Decomposição em Ciclos de Permutações:** Comutação e sincronização de permutações de linhas e colunas em matrizes e Quadrados Latinos.

### 5. Técnicas Gulosas & Strings

- **Sequências Bitônicas (Mountain Permutations):** Construção gulosa a partir dos extremos e verificação de viabilidade.
    - 🔗 [USACO Guide — Two Pointers Technique](https://usaco.guide/silver/two-pointers)
- **Manipulação de Strings por Blocos:** Compactação em blocos contíguos de caracteres e análise de casos de borda.
