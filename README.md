# Aplicação de Engenharia de Software em Sistemas Robóticos de Reabilitação

**Estudos de caso em Realidade Virtual e Ciclismo com Eletroestimulação Funcional no Projeto EMA**

Trabalho de Conclusão de Curso (TCC 1) — **Engenharia de Software**, Faculdade UnB Gama (FGA),
Universidade de Brasília (UnB). Concluído e defendido em **julho de 2026**.

- **Autores:** Genilson Silva de Araújo Júnior · Helder Lourenço de Abreu Marques
- **Orientador:** Prof. Dr. Roberto de Souza Baptista
- **Banca:** Prof. Dr. Renato Coral Sampaio · Prof. Dr. Geovany Araújo Borges

---

## Trabalho completo

<table>
  <tr>
    <td width="40%" align="center" valign="top">
      <a href="docs/TCC1.pdf"><img src="docs/capa-tcc.png" alt="Capa da monografia" width="250"></a>
      <br><br>
      <strong><a href="docs/TCC1.pdf">Monografia completa</a></strong>
      <br><sub>PDF · 54 páginas</sub>
    </td>
    <td width="60%" align="center" valign="top">
      <a href="docs/apresentacao.pdf"><img src="docs/capa-apresentacao.png" alt="Capa dos slides da defesa" width="430"></a>
      <br><br>
      <strong><a href="docs/apresentacao.pdf">Slides da defesa</a></strong>
      <br><sub>PDF · 13 slides</sub>
    </td>
  </tr>
</table>

<p align="center"><em>Ao abrir, o GitHub exibe o PDF em um leitor com navegação de páginas; também é possível baixá-lo.</em></p>

---

## Resumo

O **Projeto EMA**, do Laboratório de Automação e Robótica (LARA) da UnB, desenvolve sistemas de
reabilitação motora que integram eletroestimulação funcional (FES), robótica e realidade virtual.
Muitos desses sistemas funcionam do ponto de vista da pesquisa, mas apresentam fragilidades
recorrentes de Engenharia de Software: arquiteturas acopladas, ausência de documentação,
versionamento desorganizado e uma lacuna sistemática entre o que está **registrado** e o que está
de fato **montado**.

Este trabalho, de natureza aplicada e diagnóstica, adota uma **postura de consultoria** para
analisar dois sistemas em estágios opostos de maturidade — o de **Realidade Virtual** (inativo, com
desafio de reativação) e o de **Ciclismo com FES** (ativo, com desafio de reprodução). Para cada
caso, documenta-se a arquitetura atual, relata-se a tentativa de reprodução e mapeiam-se as
limitações; em seguida, consolidam-se os problemas comuns e propõem-se recomendações de
reestruturação (versionamento, documentação, diagramação e modularização).

**Palavras-chave:** engenharia de software · robótica de reabilitação · documentação · refatoração · Projeto EMA.

---

## Estrutura do repositório

```
docs/                # PDF final do trabalho e imagens de apresentação
latex/
  tcc.tex            # documento principal (ordem das seções)
  editaveis/         # conteúdo dos capítulos, resumo, apêndice, etc.
  fixos/             # configuração do template (abnTeX2 / FGA)
  figuras/           # imagens e diagramas
  bibliografia.bib   # referências (BibTeX)
  Makefile           # build via latexmk
build.ps1 / clean.ps1            # atalhos para Windows
Dockerfile / docker-compose.yml  # ambiente de compilação
```

## Como compilar

Requer apenas **Docker** (não é preciso instalar LaTeX na máquina). A partir da raiz do repositório:

```powershell
./build.ps1          # compila -> latex/tcc.pdf
./build.ps1 -Open    # compila e abre o PDF
./build.ps1 -Clean   # limpa artefatos e recompila do zero
```

Ou, em qualquer sistema operacional:

```bash
docker compose run --rm latex make
```

O documento é escrito em **LaTeX (abnTeX2)**, sobre o Template TCC FGA-UnB desenvolvido pelo
professor Edson Alves e licenciado em Creative Commons Atribuição 3.0
(http://creativecommons.org/licenses/by/3.0/). O build foi modernizado para `pdflatex` + `latexmk`.

## Próximos passos (TCC 2)

A continuidade deste trabalho — a implementação das recomendações, a reativação do sistema de
Realidade Virtual, a reestruturação do Ciclismo com FES e a convergência das duas frentes em um
ecossistema integrado — será conduzida no **TCC 2**, em repositório próprio.
