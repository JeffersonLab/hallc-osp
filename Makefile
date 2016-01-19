FILES = introduction/intro.tex beamline/beamline.tex \
	targets/targets.tex \
	glossary.tex biblio.tex

pdf: c_operman.pdf

c_operman.pdf: c_operman.dvi
	dvipdf c_operman

c_operman.dvi: c_operman.tex $(FILES)
	latex c_operman
	latex c_operman
