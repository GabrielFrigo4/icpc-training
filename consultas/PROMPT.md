# Role & Contexto

Você é um medalhista mundial do ICPC (International Collegiate Programming Contest) e especialista em C++ competitivo (C++20/C++23) e LaTeX.

Estou anexando 10 arquivos de referência:

1. As 7 provas completas da Regional Latino-Americana do ICPC (2019 a 2025) em PDF.
2. Três arquivos Markdown (`ANÁLISE.md`, `MERMAID.md` e `QUESTÕES.md`) contendo o mapeamento estatístico e temático das 90 questões dessas edições.

Meu objetivo é construir um **Team Reference Document (TRD) / Handbook de Maratona** completo em LaTeX para levar impresso à Fase Nacional de 2026 neste final de semana.

---

# Diretrizes de Conteúdo e Didática (O Que Eu Quero vs. O Que Não Quero)

1. **NÃO quero um editorial de questões:** Não crie uma lista de resoluções específicas de problemas passados.
2. **NÃO quero um catálogo cego de código sem contexto:** Todo algoritmo precisa de uma explicação teórica pragmática e direta ao ponto.
3. **O equilíbrio ideal (Teoria Pragmática + Código de Produção):**
    - Para cada tópico e subtema, apresente um resumo teórico enxuto: **quando usar, qual o invariante/intuição principal, armadilhas comuns (corner cases/overflow) e complexidades de tempo e espaço**.
    - **Zero furos de conteúdo ou de generalização:** Cubra 100% dos tópicos e subtemas listados no arquivo `QUESTÕES.md`, indo do mais básico/warm-up ao mais avançado dentro de cada tema. Se um conceito possui variações clássicas cobradas em prova (ex.: versão 1D e extensão para 2D; versão estática e versão dinâmica/com rollback; emparelhamento via Kuhn, Hopcroft-Karp e Húngaro; fluxo máximo via Dinic, Min-Cost Max-Flow e reduções como Dilworth, König e Dual Planar), inclua todas as variações necessárias para que eu não precise improvisar deduções durante a prova.
4. **Padrão de Código (Estilo ICPC / KACTL):**
    - Proibido usar pseudocódigo.
    - Todo código deve ser em **C++ moderno (C++20/C++23)**, testado, compacto, legível e pronto para ser digitado e compilado diretamente na prova.

---

# Arquitetura LaTeX e Regras Estritas de Formatação

1. **Projeto Modular Compilável Parcialmente:**
    - O projeto será dividido em um arquivo mestre (`main.tex`) e múltiplos capítulos (`cap1.tex`, `cap2.tex`, etc.), seguindo a estrutura dos blocos temáticos do `QUESTÕES.md`.
    - No `main.tex`, configure um layout otimizado para caderno de maratona (ex.: `landscape`, `twocolumn` ou `multicols` de 2 a 3 colunas, margens reduzidas com `geometry`, cabeçalhos compactos e estilização limpa de código C++ com `listings`).
    - Para incluir os capítulos no `main.tex`, utilize obrigatoriamente `\InputIfFileExists{capX.tex}{}{}` (ou equivalente seguro) para que eu possa compilar o projeto a qualquer momento mesmo antes de todos os capítulos existirem.
2. **REGRA CRÍTICA DE SAÍDA (ZERO PREVIEW):**
    - **NUNCA** envie blocos de código com a tag `latex` ou `tex`, nem acione qualquer ferramenta de renderização/preview ou geração de arquivos.
    - Todo código LaTeX deve ser enviado **exclusivamente dentro de um bloco de texto puro** utilizando ` ```txt ... ``` `, pronto para eu copiar e colar.

---

# Fluxo de Execução (O Que Você Deve Fazer AGORA — Turno 1)

Como o material completo é extenso demais para uma única resposta, trabalharemos em etapas. **Neste primeiro prompt, NÃO gere os capítulos de conteúdo ainda.** Faça apenas o seguinte:

1. **Plano Diretor do Handbook:** Analise o `QUESTÕES.md` e o `ANÁLISE.md` e apresente o sumário estruturado do caderno, detalhando quais serão os arquivos (`cap1.tex`, `cap2.tex`, ...), quais subtemas e algoritmos exatos entrarão em cada arquivo e a estimativa de páginas de cada parte.
2. **Arquivo Mestre (`main.tex`):** Forneça o código completo do `main.tex` dentro de um bloco ` ```txt ` puro, já configurado com todos os pacotes necessários, macros matemáticas/C++, sumário e chamadas `\InputIfFileExists` para todos os capítulos planejados.

Aós a sua resposta, eu solicitarei a geração detalhada de um capítulo por vez (ex.: _"Gere o cap1.tex"_).

---

# Turnos Seguintes (Geração dos Capítulos)

```md
Gere agora o arquivo `capX.tex` completo, cobrindo rigorosamente todos os subtemas, variações (1D/2D, casos extremos, reduções) e templates C++20/23 planejados para este capítulo, sem omitir nem resumir implementações. Lembre-se: entregue tudo exclusivamente dentro de um único bloco `txt ` puro, sem preview.
```
