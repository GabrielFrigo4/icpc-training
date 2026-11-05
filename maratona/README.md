# 🏁 Maratona — Acervo por Fase da Competição

Acervo de provas passadas, análises e ciclos de preparação organizados por fase do circuito **Maratona SBC de Programação / ICPC**. As pastas têm nomes atemporais: cada temporada nova entra como mais uma edição (`AAAA`) dentro da fase correspondente, sem renomear diretórios.

---

## 🗺️ Fases do Circuito

| Diretório                | Fase                             | Escopo                                                 |     Status      |
| :----------------------- | :------------------------------- | :----------------------------------------------------- | :-------------: |
| [`regional/`](regional/) | Primeira Fase (Regional)         | Sedes regionais da Maratona SBC (classificatória)      |  ⚪ A popular   |
| [`nacional/`](nacional/) | Fase Nacional (Final Brasileira) | Final Brasileira da Maratona SBC — ciclo 2026 em curso | 🟡 Em andamento |
| [`latino/`](latino/)     | ICPC Latin America Championship  | Final Latino-Americana do ICPC                         |  ⚪ A popular   |
| [`mundial/`](mundial/)   | ICPC World Finals                | Final Mundial do ICPC                                  |  ⚪ A popular   |

---

## 📂 Padrão de Organização

Toda fase segue o mesmo esqueleto da [`nacional/`](nacional/), agrupando os artefatos por tipo e nomeando-os pelo ano da edição:

```text
<fase>/
├── enunciados/
│   └── AAAA.pdf
├── exercicios/
│   └── AAAA.md
├── temas/
│   └── AAAA.md
└── README.md
```

- **`enunciados/AAAA.pdf`**: Caderno de problemas oficial da edição.
- **`temas/AAAA.md`**: Guia de estudo sem spoiler com os tópicos da prova.
- **`exercicios/AAAA.md`**: Gabarito de técnicas por problema (liberado às 3h00 do simulado ou no upsolving).
- **`README.md`**: Visão geral da fase, calendário de simulados e índice das edições.

[⬅️ Voltar para o README principal](../README.md)
