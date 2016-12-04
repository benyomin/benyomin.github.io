####################
# Makefile
####################

RDIR = .
DATA_DIR = $(RDIR)/rawData

BUILDPDF = R < tools/compileWorkingDraft.R --save

all: pdf

clean:
	@rm -f *.aux *.bbl *.out *.toc currentWorkingDraft.pdf

pdf:
	echo running Makefile;
	$(BUILDPDF)
