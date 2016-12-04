####################
# Makefile
####################

RDIR = .
DATA_DIR = $(RDIR)/rawData

BUILDPDF = R < includes/compileWorkingDraft.R --save

all: test

test:
	echo running Makefile;
	$(BUILDPDF)
