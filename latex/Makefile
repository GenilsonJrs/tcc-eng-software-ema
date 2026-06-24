# Build do TCC via latexmk + pdflatex.
# O pdflatex aceita imagens PNG/JPG/PDF nativamente (basta colocá-las em figuras/).
# O latexmk cuida sozinho das múltiplas passadas, do bibtex e do makeindex.

TARGET = TCC_FGA.pdf
MAIN   = tcc

.PHONY: all clean dist-clean

all:
	latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex
	@cp $(MAIN).pdf $(TARGET)

clean:
	latexmk -C
	rm -f $(TARGET)

# Alias para limpeza total (mantido por compatibilidade)
dist-clean: clean
