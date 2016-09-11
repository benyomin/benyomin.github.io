tools::texi2pdf('./marco.tex', clean = FALSE, quiet = TRUE,
                          texi2dvi = getOption("texi2dvi"),
                          texinputs = NULL, index = TRUE)
