TEX = platex
RM = rm -f
MV = mv -f
TARGET = Resume
SRC = $(TARGET).tex conf/*.tex conf/*.sty

.PHONY : all pdf nkf clean

all: $(TARGET).dvi
pdf: $(TARGET).pdf

$(TARGET).dvi: $(SRC)
	- ebb figure/*.png
	- ebb.exe figure/*.png
	- extractbb figure/*.png
	- extractbb.exe figure/*.png
	- $(MV) *.bb figure/
	- $(MV) *.xbb figure/
	$(TEX) $< && $(TEX) $<

$(TARGET).pdf: $(TARGET).dvi
	dvipdfmx $<
	- open $(TARGET).pdf

nkf:
	nkf -w -Lu --overwrite *.tex
	nkf -w -Lu --overwrite conf/*
	- nkf -w -Lu --overwrite src/*

listings:
	cp -rf ./src/listings /cygdrive/c/w32tex/share/texmf-dist/tex/platex/misc/

clean:
	$(RM) $(TARGET).pdf $(TARGET).dvi $(TARGET).ps
	$(RM) *.aux *.log *.lof *.lot *.out *.toc *.pdf *~ figure/*.bb figure/*.xbb
