.PHONY: fr en clean

en: resume-en.pdf

fr: resume-fr.pdf

resume-fr.pdf: resume-fr.tex
	xelatex --interaction=nonstopmode --max-err=9999 $<

resume-en.pdf: resume-en.tex
	xelatex --interaction=nonstopmode --max-err=9999 $<

clean:
	rm -f *.aux *.log *.out *.pdf

.PRECIOUS: resume-fr.tex resume-en.tex