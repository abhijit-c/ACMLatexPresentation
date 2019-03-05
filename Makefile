name=Presentation
PLatFlags= -jobname=$(name) --shell-escape

default:
	make build
	make build
	make clean

build:
	pdflatex $(PLatFlags) main.tex

clean:
	rm $(name).log $(name).aux $(name).out $(name).nav $(name).toc $(name).snm 
	rm -rf _minted-*
