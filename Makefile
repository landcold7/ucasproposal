all: clean thesis.pdf

%.pdf: %.tex
	@echo ./artlatex.sh $<
	@./artlatex.sh xa $< > out.txt 2>&1 || (cat out.txt; exit 1)

clean:
	@echo Cleaning old stuff
	@./killpdf.sh
	@$(RM) -fr Tmp out.txt
