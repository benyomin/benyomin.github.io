####################
# Makefile

RDIR = .
DATA_DIR = $(RDIR)/rawData

BUILDPDF = R < compileWorkingDraft.R --save
echo running Makefile
$(BUILDPDF)
