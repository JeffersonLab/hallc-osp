FILES = introduction/intro.tex beamline/beamline.tex \
	glossary.tex biblio.tex

pdf: c_operman.pdf

c_operman.pdf: c_operman.dvi

c_operman.dvi: c_operman.tex
	latex c_operman
	latex c_operman
