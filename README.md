# TCC — Genilson (Engenharia de Software, FGA/UnB)

Repositório do meu Trabalho de Conclusão de Curso, baseado no
**Template TCC FGA-UnB** (em LaTeX/abnTeX2), desenvolvido pelo professor
Edson Alves e licenciado em Creative Commons Atribuição 3.0
(http://creativecommons.org/licenses/by/3.0/).

> Tema: plataforma de Realidade Virtual para reabilitação de marcha, integrada
> à robótica assistiva e à Eletroestimulação Funcional (Projeto EMA — LARA/UnB).

O build foi **modernizado para `pdflatex` + `latexmk`**, o que permite usar imagens
**PNG/JPG/PDF** diretamente (o template original, via DVI, só aceitava `.eps`).

## Pré-requisitos

Apenas o **Docker** (Docker Desktop no Windows). Não é preciso instalar LaTeX na
máquina — toda a compilação roda dentro do container.

- Docker: https://docs.docker.com/engine/install/

Construa a imagem uma vez (ou após mudar o `Dockerfile`):

```powershell
docker compose build latex
```

## Como escrever

- Edite os arquivos em `latex/editaveis/`. A montagem do documento está em `latex/tcc.tex`.
- Seus dados (autor, título, orientador, etc.) ficam em `latex/editaveis/informacoes.tex`.
- **Imagens:** coloque os arquivos em `latex/figuras/` e inclua **sem a extensão**:

  ```latex
  \begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{figuras/minha-foto}
    \caption{Descrição da figura}
    \label{fig:minha-foto}
  \end{figure}
  ```

  Funciona com `minha-foto.png`, `.jpg` ou `.pdf`.

## Gerar o PDF

No Windows (PowerShell), a partir da raiz do repositório:

```powershell
./build.ps1            # compila -> latex/tcc.pdf
./build.ps1 -Open      # compila e abre o PDF
./build.ps1 -Clean     # limpa artefatos e recompila do zero
```

Ou diretamente com Docker (qualquer SO):

```bash
docker compose run --rm latex make      # gera latex/tcc.pdf
docker compose up                        # equivalente (usa o command padrão)
```

O PDF final fica em `latex/tcc.pdf` (uma cópia também é salva como `latex/TCC_FGA.pdf`).

## Limpar arquivos gerados

```powershell
./clean.ps1
```

ou

```bash
docker compose run --rm latex make clean
```

## Estrutura

```
latex/
  tcc.tex            # documento principal (ordem das seções)
  editaveis/         # <- você edita aqui (introdução, capítulos, resumo, etc.)
  fixos/             # configuração do template (geralmente não mexer)
  figuras/           # imagens (PNG/JPG/PDF; capa.pdf)
  bibliografia.bib   # referências (BibTeX)
  Makefile           # build via latexmk
build.ps1 / clean.ps1  # atalhos para Windows
Dockerfile / docker-compose.yml  # ambiente de compilação
.ia/                 # contexto local (NÃO versionado)
```
