
%.aux: %.ltx
	pdflatex $<

main.pdf: main.ltx main.aux
	pdflatex $<

view: main.pdf
	xdg-open main.pdf || explorer main.pdf &

clean:
	rm -f *.pdf
	rm -f *.aux
	rm -f *.log
	rm -f *.toc
	rm -f *.out
