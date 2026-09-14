# 🛠️ Automação com Makefile POSIX

Arquivo de automação portável compatível com GNU Make (`gmake`) no Linux e BSD Make (`bmake`) no FreeBSD, sem extensões proprietárias.

---

## 📄 Conteúdo do `Makefile`

```makefile
.POSIX:

CXX      = c++
CXXFLAGS = -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23
DBGFLAGS = -fsanitize=address,undefined -g -Wall -Wshadow -std=c++23

.SUFFIXES:
.SUFFIXES: .cpp .debug

.cpp:
	$(CXX)$(CXXFLAGS) $< -o$@

.cpp.debug:
	$(CXX)$(DBGFLAGS) $< -o$@

clean:
	rm -f [A-Z] *.debug
```

---

## 🔍 Detalhamento das Diretivas

- **`.POSIX:`**: Instrui o `make` a seguir estritamente a especificação padrão POSIX (desativando extensões proprietárias e garantindo execução via `/bin/sh`), assegurando comportamento idêntico e portável entre `gmake` (Linux) e `bmake` (FreeBSD).
- **`CXXFLAGS` vs `DBGFLAGS**`:
- `CXXFLAGS`: Otimizações máximas (`-O3`) para submissão oficial e medição realista de tempo de execução.
- `DBGFLAGS`: Ativa _AddressSanitizer_ e _UndefinedBehaviorSanitizer_ (`-fsanitize=...`) com símbolos de depuração (`-g`) para capturar acessos fora de vetor (_out of bounds_) e estouros de pilha locais.

- **`.SUFFIXES: .cpp .debug`**: Registra as extensões reconhecidas pelo motor de inferência do `make`.
- **`.cpp:`**: Regra de sufixo simples que compila `A.cpp` gerando o executável de prova `./A`.
- **`.cpp.debug:`**: Regra de sufixo duplo POSIX que transforma `A.cpp` no executável depurável `./A.debug`.
- **`clean`**:
- **`[A-Z]`**: Padrão _glob_ que seleciona apenas arquivos de um único caractere maiúsculo (os executáveis das questões). Não afeta `A.cpp`, `Makefile`, `NOTES.md` ou entradas como `in`.
- **`*.debug`**: Remove todos os binários gerados em modo de depuração.

---

## 🚀 Uso Prático em Prova

### 1. Compilação Normal (Modo Submissão)

Gera o binário rápido para testar tempo e enviar no juiz:

```sh
make A
```

Execução:

```sh
./A < in
```

### 2. Compilação com Sanitizers (Modo Debug)

Gera um binário alternativo instrumentado para caçar falhas de segmentação (_Runtime Error_) sem sobrescrever o binário otimizado:

```sh
make A.debug
```

Execução:

```sh
./A.debug < in
```

### 3. Limpeza Geral

Remove instantaneamente todos os binários gerados na pasta (`A` a `Z` e seus `.debug`):

```sh
make clean
```
