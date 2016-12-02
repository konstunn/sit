
.PHONY: main.pdf

main.pdf: main.ltx
	pdflatex main.ltx

view: main.pdf
	xdg-open main.pdf || explorer main.pdf

%.pdf : %.tex
	pdflatex $<

clean:
	rm -f *.pdf
	rm -f *.aux
	rm -f *.log
	rm -f *.toc
	rm -f *.out
