# STA141A Fall 2026 
## Professor Duncan Temple Lang


This is the repository for Duncan Temple Lang's Fall 2026 STA141A  course.

+ Day 1
   + [Slides/](Day1/Day1.html)
   + [data](Data/SFHouses.rds)
   + [R session](Day1/Rsession)

   + readRDS()
   + ls() - list the variables in your workspace/global environment
   + class() & typeof()
   + nrow(), ncol(), dim() - number of rows and columns of a data.frame.
   + $ (e.g. d$date) to access an individual column/element in a list/data.frame
   + format() - converting a Date to a different format - and many other types of data
   + table() - frequence table/counts of the different possible values

+ [Day2](Day2)
   + [R session](Day2/Rsession)
   + [Useful functions](Day2/UsefulFunctions.md)
   + [Rmarkdown example](Day2/eg.Rmd)
       + create PDF - `rmarkdown::render("eg.Rmd", "pdf_document")`
	   + extract all R code - `knitr::purl("eg.Rmd", documentation = 0)`
