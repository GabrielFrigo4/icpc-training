# 📚 Temas da Prova — Gym 102428 (LatAm 2019)

> **Modo de Uso:** Leitura recomendada de **Segunda a Quarta**. Utilize estes tópicos e links de referência para calibrar a teoria e o _Team Notebook_ antes do simulado, sem consultar enunciados ou soluções da prova.

---

### 1. Grafos & Relações de Ordem (Posets)

- **Ordenação Topológica & DP em DAGs:** Contagem de caminhos e propagação de estados direcionados acíclicos.
    - 🔗 [CP-Algorithms — Topological Sorting](https://cp-algorithms.com/graph/topological-sort.html)
- **Posets & Dilworth's Theorem:** Famílias de subconjuntos incomparáveis (anticadeias) e redução para emparelhamento bipartido máximo.
    - 🔗 [CP-Algorithms — Kuhn's Algorithm for Maximum Bipartite Matching](https://cp-algorithms.com/graph/kuhn_maximum_bipartite_matching.html)

### 2. Estruturas de Dados

- **Segment Tree (Range Queries & Point Updates):** Consultas de prefixos/sufixos, mínimos e máximos com atualizações pontuais.
    - 🔗 [CP-Algorithms — Segment Tree](https://cp-algorithms.com/data_structures/segment_tree.html)
- **Binary Lifting / Doubling:** Pré-cálculo de saltos em potências de 2 para simular transições determinísticas em $O(\log N)$.
    - 🔗 [CP-Algorithms — Lowest Common Ancestor (Binary Lifting)](https://cp-algorithms.com/graph/lca_binary_lifting.html)

### 3. Geometria Computacional

- **Primitivas Básicas 2D & Produto Vetorial:** Orientação de pontos (sentido horário/anti-horário) e retas no plano.
    - 🔗 [CP-Algorithms — Basic Geometry](https://cp-algorithms.com/geometry/basic-geometry.html)
- **Varredura Polar & Interseção de Semiplanos:** Ordenação radial de vetores, análise de viabilidade angular e semiplanos.
    - 🔗 [CP-Algorithms — Half-plane Intersection](https://cp-algorithms.com/geometry/halfplane-intersection.html)
- **Envoltória Convexa (Convex Hull):** Construção da casca convexa e suporte a testes de continência.
    - 🔗 [CP-Algorithms — Convex Hull (Monotone Chain)](https://cp-algorithms.com/geometry/convex-hull.html)

### 4. Strings

- **Autômato de Sufixos (Suffix Automaton — SAM):** Reconhecimento do maior prefixo que ocorre como substring em tempo linear $O(|T|)$.
    - 🔗 [CP-Algorithms — Suffix Automaton](https://cp-algorithms.com/string/suffix-automaton.html)

### 5. Programação Dinâmica (DP)

- **DP com Otimização por Soma de Prefixos:** Redução de transições $O(K)$ para $O(1)$ acumulando estados adjacentes.
    - 🔗 [USACO Guide — Prefix Sums](https://usaco.guide/silver/prefix-sums)
- **Pilha Monótona (Monotonic Stack) / Maior Retângulo:** Problemas de expansão e limites de histogramas em matrizes $2D$.
- **Processos de Decisão & Teoria dos Jogos (Ponto Fixo):** Decisão estocástica, valor esperado e convergência de probabilidades em jogos em turnos.

### 6. Matemática & Polinômios

- **Propriedades de Polinômios & Alternância de Sinal:** Construção de polinômios com raízes intercaladas para impor sinais em pontos inteiros.
    - 🔗 [CP-Algorithms — Operations on Polynomials](https://cp-algorithms.com/algebra/polynomial.html)

### 7. Técnicas Básicas & Guloso

- **Two Pointers & Arrays Circulares:** Janela deslizante sobre sequências circulares com duplicação do array ($2N$).
    - 🔗 [USACO Guide — Two Pointers Technique](https://usaco.guide/silver/two-pointers)
