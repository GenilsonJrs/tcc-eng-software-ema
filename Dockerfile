FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    ghostscript \
    latexmk \
    make \
    texlive-publishers \
    texlive-lang-portuguese \
    texlive-lang-french \
    texlive-lang-spanish \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-fonts-recommended \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /home/latex
