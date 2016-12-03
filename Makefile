
.PHONY: main.pdf

main.pdf: main.ltx
	pdflatex $<
	pdflatex $<

PCAPOUTFILE="out.pcapng"

capture: /usr/bin/tshark
	tshark -a duration:600 -i eth1 -n -N t -F pcapng -w ${PCAPOUTFILE}

stats: ${PCAPOUTFILE}
	tshark -q -r $< -z endpoints,eth 
	tshark -q -r $< -z io,phs
	tshark -q -r $< -z io,stat,0

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
