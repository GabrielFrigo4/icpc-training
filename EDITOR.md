# ⌨️ Configuração de Editores & Produtividade

Configurações mínimas e atalhos rápidos para máquinas virgens no Warmup da prova.

---

## 🟢 Vim

### Configuração Mínima para Digitar no Warmup (4 linhas)

Adicione ao `~/.vimrc`:

```vim
syn on|se nu rnu cin noet ts=4 sw=4 sts=4 bs=2 is hls ww+=<,>,h,l,[,]
let &t_SI="\<Esc>[5 q"|let &t_EI="\<Esc>[1 q"
au BufNewFile *.cpp 0r ~/.template.cpp
map <F5> :w<CR>:!c++ -O3 -std=c++23 % -o %:r && ./%:r < in<CR>
```

### Explicação dos Parâmetros

- **Interface & Visual:**
- `syn on`: Ativa o realce de sintaxe (_syntax highlighting_).
- `nu rnu`: Numeração híbrida (linha absoluta na atual, relativas nas demais) para saltos verticais rápidos com contagem (`10j`, `5k`).
- `is hls`: Busca incremental com destaque imediato em todas as ocorrências (`/`).
- `t_SI` / `t_EI`: Altera dinamicamente o cursor no terminal: **barra (`|`)** no modo _Insert_ e **bloco (`█`)** no modo _Normal_.

- **Indentação & Teclado:**
- `cin`: Indentação automática padrão C/C++ (alinha chaves `{}` e blocos ao dar Enter).
- `noet`: Preserva caracteres de tabulação literais.
- `ts=4 sw=4 sts=4`: Trava a largura da tabulação e indentação em 4 colunas.
- `bs=2`: Torna o backspace flexível (apaga quebras de linha e texto pré-existente).
- `ww+=<,>,h,l,[,]`: Permite que as setas naveguem fluidamente entre o fim de uma linha e o início da próxima.

- **Automação de Prova:**
- `au BufNewFile *.cpp 0r ~/.template.cpp`: Copia automaticamente o template da _home_ sempre que criar um arquivo `.cpp` novo.
- `map <F5>`: Salva o código, compila em C++23 e executa lendo a entrada do arquivo `in` em um único toque.

### Atalho de Compilação Manual

```vim
:!c++ -O3 -std=c++23 % -o %:r && ./%:r < in
```

- `%`: Expande para o nome do arquivo atual (ex: `A.cpp`).
- `%:r`: Remove a extensão do arquivo (ex: vira `A`), gerando o binário executável correspondente.

---

## 🟣 GNU Emacs

### Configuração Rápida

Cole no `~/.emacs` ou avalie no buffer `*scratch*` com `M-x eval-buffer`:

```elisp
(global-display-line-numbers-mode 1)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq compilation-scroll-output t)
(global-set-key (kbd "<f5>") 'compile)
```

### Explicação dos Parâmetros

- `global-display-line-numbers-mode 1`: Ativa números de linha em todos os buffers.
- `indent-tabs-mode nil`: Utiliza espaços em vez de tabulações literais.
- `c-basic-offset 4`: Define o recuo padrão do modo C/C++ para 4 espaços.
- `compilation-scroll-output t`: Rola a tela do buffer de compilação automaticamente até a última linha de saída.
- `global-set-key (kbd "<f5>") 'compile`: Mapeia a tecla `<F5>` para disparar a rotina de compilação.

### Fluxo de Compilação & Navegação de Erros

1. Pressione `<F5>` (ou execute `M-x compile`) e digite o comando:

```text
c++ -O3 -Wall -Wextra -std=c++23 solution.cpp -o solution && ./solution < in
```

2. O Emacs divide a tela e exibe o buffer assíncrono `*compilation*`.
3. Caso ocorra erro de compilação:

- **`C-x \``** ou **`M-g n`**: Pula o cursor diretamente para a linha e coluna do próximo erro apontado pelo compilador.
- **`M-g p`**: Retorna ao erro anterior.
- **`g`** (no buffer `*compilation*`): Executa o comando de compilação novamente (_recompile_ imediato).
