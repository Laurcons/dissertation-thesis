.PHONY: all full clean

all:
	mkdir -p out
	pdflatex -output-directory=out -interaction=nonstopmode main.tex

full:
	mkdir -p out
	pdflatex -output-directory=out -interaction=nonstopmode main.tex
	bibtex out/main
	pdflatex -output-directory=out -interaction=nonstopmode main.tex
	pdflatex -output-directory=out -interaction=nonstopmode main.tex

clean:
	rm -rf out
