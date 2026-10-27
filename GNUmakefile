all: Rsession.md Rsession.R

Rsession.md: Rsession
	Rscript -e 'library(FormatSession); toMd(getCode("Rsession"), "Rsession.md")'

Rsession.R: Rsession
	Rscript -e 'library(FormatSession); cat(getCode("Rsession"), file = "Rsession.R", sep = "\n\n")'

%.R: %
	Rscript -e "library(FormatSession); cat(getCode(\"$<\"), file = \"$@\", sep = \"\n\n\")"

%.md: %
	Rscript -e "library(FormatSession); toMd(getCode(\"$<\"), \"$@\")"