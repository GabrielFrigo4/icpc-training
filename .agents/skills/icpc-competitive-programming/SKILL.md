---
name: icpc-competitive-programming
description: >-
    Runbook cognitivo e manual de resolução algorítmica para a Maratona de Programação (ICPC/SBC).
    Use ao resolver problemas, analisar complexidade de tempo/espaço, implementar algoritmos em C++23,
    otimizar I/O competitivo (Fast I/O), evitar armadilhas de TLE/MLE e criar scripts de stress test.
---

# ICPC Competitive Programming Runbook

Este runbook instrui agentes de Inteligência Artificial sobre as regras de ouro, padrões de código e invariantes de performance no repositório **Marathon Hub** (`Training/Marathon`).

---

## 1. Padrões de Código C++23

### Fast I/O Mandatório

Nunca utilize `std::endl` (que força flush síncrono do buffer) e sempre desative a sincronização com `stdio`:

```cpp
#include <iostream>

using namespace std;

void fast_io() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
}

int main() {
    fast_io();
    // Use '\n' em vez de endl
    return 0;
}
```

### Prevenção de TLE e Overhead

- Evite alocações repetidas de `std::vector` dentro de loops quentes. Pré-aloque memória via `.reserve()` ou utilize buffers estáticos.
- Para grafos, prefira representação por lista de adjacência direta (`vector<vector<int>>` ou arrays de tamanho fixo para limites estáticos de problema).
- Use tipos de tamanho fixo: `int64_t` ou `long long` quando os valores puderem ultrapassar $2 \times 10^9$.

---

## 2. Invariantes de Compilação & Rigor

- **Flags Canônicas:** Todo código deve compilar limpo sob:
    ```sh
    g++ -std=c++23 -O2 -Wall -Wextra -Wconversion -Wshadow main.cpp
    ```
- **Zero Binários no Repositório:** Binários compilados (`*.out`, `*.o`, `main`) NUNCA devem ser comitados. O pre-commit hook bloqueia ativamente esses arquivos.

---

## 3. Stress Testing com Python

Quando submeter uma solução que falha em teste oculto:

1. Crie um gerador aleatório simples em Python (`gen.py`).
2. Crie uma solução força bruta garantidamente correta (`brute.cpp`).
3. Compare as saídas até encontrar o contraexemplo mínimo.
