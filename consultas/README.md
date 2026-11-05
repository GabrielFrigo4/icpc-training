# 📘 Consultas — Team Reference Document (TRD)

Caderno de consultas em LaTeX (estilo KACTL) para levar impresso às provas: paisagem A4, 3 colunas, teoria pragmática enxuta (uso, ideia, armadilhas e complexidade) e templates C++23 prontos para digitar. A divisão dos capítulos segue os 8 blocos temáticos de [`QUESTÕES.md`](../maratona/nacional/QUESTÕES.md).

---

## 📂 Estrutura

| Arquivo                  | Conteúdo                                                                                                       |
| :----------------------- | :------------------------------------------------------------------------------------------------------------- |
| [`main.tex`](main.tex)   | Arquivo mestre: layout, estilos `listings`, sumário e **Seção 0** (templates, Makefile, compilação e editores) |
| [`cap1.tex`](cap1.tex)   | Gulosos, Ad-Hoc, Simulação e Construtivos                                                                      |
| [`cap2.tex`](cap2.tex)   | Grafos e Árvores                                                                                               |
| [`cap3.tex`](cap3.tex)   | Estruturas de Dados                                                                                            |
| [`cap4.tex`](cap4.tex)   | Programação Dinâmica (DP) e Probabilidade                                                                      |
| [`cap5.tex`](cap5.tex)   | Geometria Computacional                                                                                        |
| [`cap6.tex`](cap6.tex)   | Strings: Do Básico aos Autômatos                                                                               |
| [`cap7.tex`](cap7.tex)   | Matemática, Teoria dos Números, Combinatória e FFT/NTT                                                         |
| [`cap8.tex`](cap8.tex)   | Fluxo em Redes, Emparelhamento e Dualidade Planar                                                              |
| [`PROMPT.md`](PROMPT.md) | Prompt usado para gerar o caderno a partir dos enunciados e das análises da Fase Nacional                      |
| [`Makefile`](Makefile)   | Automação POSIX de compilação e limpeza                                                                        |

Os capítulos são incluídos via `\InputIfFileExists`, então o caderno compila mesmo com capítulos ausentes.

---

## 🛠️ Compilação

Requer uma distribuição TeX com `pdflatex` (TeX Live / MiKTeX). Se `latexmk` estiver disponível, ele é usado automaticamente; caso contrário, o `pdflatex` roda duas passadas para resolver o sumário.

| Comando          | Finalidade                                                     |
| :--------------- | :------------------------------------------------------------- |
| `make`           | Compila o caderno principal (`main.pdf`) — alvo padrão         |
| `make main`      | Mesmo que `make`                                               |
| `make all`       | Compila todos os documentos LaTeX                              |
| `make help`      | Exibe o catálogo de tarefas                                    |
| `make format`    | Formata os Markdowns da pasta com Prettier                     |
| `make clean`     | Remove `build/` e arquivos auxiliares (`.aux`, `.log`, `.toc`) |
| `make clear`     | Alias de `make clean`                                          |
| `make distclean` | Limpeza profunda (temporários + `main.pdf`)                    |

Os artefatos intermediários ficam em `build/`, e o PDF final é copiado para `consultas/main.pdf`. Ambos são ignorados pelo Git.

> [!NOTE]
> A Seção 0 do `main.tex` espelha o conteúdo de [`modelo/`](../modelo/) e [`configurações/`](../configurações/). Os comandos impressos no caderno usam o arquivo de entrada `in`, enquanto os da pasta `modelo/` usam `input.txt`.

[⬅️ Voltar para o README principal](../README.md)
