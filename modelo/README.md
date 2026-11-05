# 🧩 Modelo de Prova — Template, Makefile & Compilação

Pasta-modelo copiada no início de cada simulado ou prova oficial. Reúne o template C++23, o `Makefile` POSIX de prova e o guia de compilação que reproduz localmente o rigor dos juízes oficiais de maratona (BOCA, Codeforces, Beecrowd).

---

## 📂 Conteúdo da Pasta

| Arquivo                  | Finalidade                                                                     |
| :----------------------- | :----------------------------------------------------------------------------- |
| [`main.cpp`](main.cpp)   | Template C++23 com _fast I/O_ e laço de múltiplos casos de teste (`task()`)    |
| [`Makefile`](Makefile)   | Automação POSIX: modo submissão (`-O3`), modo depuração (sanitizers) e limpeza |
| [`input.txt`](input.txt) | Arquivo de entrada local lido pelos binários (`./A < input.txt`)               |

---

## 🚀 Fluxo Rápido em Prova

```sh
cp -r modelo/ prova/ && cd prova/
cp main.cpp A.cpp
make A
./A < input.txt
```

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
python3 solution.py < input.txt
```

Interpretador padrão do sistema, indicado para scripts auxiliares, geradores de teste e problemas puramente matemáticos com precisão infinita.

### PyPy 3 (JIT)

```sh
pypy3 solution.py < input.txt
```

Interpretador com compilação _Just-in-Time_. **Obrigatório para soluções competitivas em Python**, reduzindo o tempo de execução em até 10x e evitando vereditos de _Time Limit Exceeded_ (TLE).

---

## 🔍 Depuração Local com Sanitizers (GCC / Clang)

Ao tomar `Runtime Error` ou resultados erráticos causados por acesso fora de limites de vetores (_out-of-bounds_) ou _memory leak_, compile localmente com:

```sh
c++ -fsanitize=address,undefined -g -Wall -Wshadow -std=c++23 solution.cpp -o debug
./debug < input.txt
```

---

## 🛠️ Automação com Makefile POSIX

O [`Makefile`](Makefile) é portável e compatível com GNU Make (`gmake`) no Linux, BSD Make (`bmake`) no FreeBSD/OpenBSD/NetBSD, o BusyBox Make (`busybox make`) e o POSIX Make (`make`), sem extensões proprietárias.

### 🔍 Detalhamento das Diretivas

- **`.POSIX:`**: Instrui o `make` a seguir estritamente a especificação padrão POSIX (desativando extensões proprietárias e garantindo execução via `/bin/sh`), assegurando comportamento idêntico e portável entre ambientes Linux e BSD.

- **`CXXFLAGS` vs `DBGFLAGS`**:
    - `CXXFLAGS`: Otimizações agressivas (`-O3`) para medição realista de tempo e submissão final no juiz online.
    - `DBGFLAGS`: Ativa _AddressSanitizer_ e _UndefinedBehaviorSanitizer_ com símbolos de depuração (`-g`) para capturar acessos fora de limites (_out-of-bounds_), _UB_ e estouros de pilha locais.

- **Gerenciamento de Sufixos (`.SUFFIXES`)**:
    - **`.SUFFIXES:` (vazio)**: Limpa a lista interna de regras e sufixos pré-configurados do sistema (`.c`, `.o`, `.f`, `.p`, etc.). Isso desativa regras implícitas legadas (Fortran, Pascal, C arcaico), evita buscas desnecessárias no sistema de arquivos e garante que a compilação seja 100% determinística.
    - **`.SUFFIXES: .cpp .debug`**: Registra formalmente as únicas extensões reconhecidas pelo motor de inferência. Sem isso, o `make` interpretaria regras como `.cpp:` ou `.cpp.debug:` como arquivos literais comuns, falhando na dedução automática do código-fonte.

- **Regras de Inferência (Suffix Rules)**:
    - **`.cpp:`**: Regra de sufixo simples. Compila um arquivo fonte `.cpp` gerando diretamente um executável sem extensão (ex.: `A.cpp` $\to$ `A`).
    - **`.cpp.debug:`**: Regra de sufixo duplo. Transforma `A.cpp` no binário instrumentado `A.debug`.
    - **Variáveis automáticas**: `$<` expande para o arquivo fonte correspondente (`A.cpp`) e `$@` expande para o alvo desejado (`A` ou `A.debug`).

- **Alvo `clean`**:
    - **`[A-Z]`**: Padrão _glob_ que remove apenas arquivos com nome de um único caractere maiúsculo (os binários de cada questão). Não afeta o código-fonte (`A.cpp`), o template (`main.cpp`), o `Makefile` nem o arquivo de entrada (`input.txt`).
    - **`*.debug`**: Remove todos os binários gerados para depuração.

### 🚀 Uso Prático em Prova

#### 1. Compilação Normal (Modo Submissão)

Gera o binário rápido para testar tempo e enviar no juiz:

```sh
make A
```

Execução:

```sh
./A < input.txt
```

#### 2. Compilação com Sanitizers (Modo Debug)

Gera um binário alternativo instrumentado para caçar falhas de segmentação (_Runtime Error_) sem sobrescrever o binário otimizado:

```sh
make A.debug
```

Execução:

```sh
./A.debug < input.txt
```

#### 3. Limpeza Geral

Remove instantaneamente todos os binários gerados na pasta (`A` a `Z` e seus `.debug`):

```sh
make clean
```
