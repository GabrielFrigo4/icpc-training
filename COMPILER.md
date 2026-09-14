# ⚙️ Guia de Compilação & Ambientes de Execução

Padronização de comandos e flags para reproduzir localmente o rigor dos juízes oficiais de maratona (BOCA, Codeforces, Beecrowd).

---

## 🛡️ Flags Essenciais de Compilação (C++)

Aplicadas universalmente no GCC e no Clang:

- `-O3`: Nível máximo de otimização de código do compilador.
- `-Wall -Wextra`: Ativa a checagem ampla contra más práticas e comportamentos indefinidos (_UB_).
- `-Wconversion`: Alerta conversões implícitas de tipo perigosas (ex: converter `long long` para `int` e estourar overflow silencioso).
- `-Wshadow`: Avisa quando uma variável local mascara uma variável global homônima (evita bugs clássicos em grafos e matrizes).
- `-std=c++23`: Garante compatibilidade com recursos modernos do padrão C++23.

---

## 🐧 C++23 no Linux (GCC)

### Invocação Direta

```sh
g++ -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23 solution.cpp -o solution
```

Chama explicitamente o driver do compilador GNU.

### Via Wrapper do Sistema

```sh
c++ -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23 solution.cpp -o solution
```

Link simbólico padrão do sistema operacional apontando para a versão do GCC configurada no path.

---

## 😈 C++23 no FreeBSD (Clang)

### Invocação Direta

```sh
clang++ -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23 solution.cpp -o solution
```

Chama explicitamente o driver do compilador Clang/LLVM.

### Via Wrappers Nativos do Sistema Base

```sh
c++ -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23 solution.cpp -o solution
```

```sh
CC -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23 solution.cpp -o solution
```

- `c++`: Wrapper nativo do sistema base FreeBSD apontando para a toolchain Clang instalada.
- `CC`: Binário Unix/BSD tradicional em maiúsculas (específico do FreeBSD; não existe por padrão na maioria dos Linux).

---

## 🐍 Execução em Python & PyPy

### CPython 3

```sh
python3 solution.py < in
```

Interpretador padrão do sistema, indicado para scripts auxiliares, geradores de teste e problemas puramente matemáticos com precisão infinita.

### PyPy 3 (JIT)

```sh
pypy3 solution.py < in
```

Interpretador com compilação _Just-in-Time_. **Obrigatório para soluções competitivas em Python**, reduzindo o tempo de execução em até 10x e evitando vereditos de _Time Limit Exceeded_ (TLE).

---

## 🔍 Depuração Local com Sanitizers (GCC / Clang)

Ao tomar `Runtime Error` ou resultados erráticos causados por acesso fora de limites de vetores (_out-of-bounds_) ou _memory leak_, compile localmente com:

```sh
c++ -fsanitize=address,undefined -g -Wall -Wshadow -std=c++23 solution.cpp -o debug
./debug < in
```
