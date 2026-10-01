# STA141A Fall 2026 
## Professor Duncan Temple Lang


This is the repository for Duncan Temple Lang's Fall 2026 STA141A  course.

+ Day 1
   + [Slides/](Day1/Day1.html)
   + [data](Data/SFHouses.rds)
   + [R session](Day1/Rsession), [R commands](Day1/Rcode.R), [R commands markdown](Day1/Rcode.md)

   + readRDS()
   + ls() - list the variables in your workspace/global environment
   + class() & typeof()
   + nrow(), ncol(), dim() - number of rows and columns of a data.frame.
   + $ (e.g. d$date) to access an individual column/element in a list/data.frame
   + format() - converting a Date to a different format - and many other types of data
   + table() - frequence table/counts of the different possible values

+ [Day2](Day2)
   + [Summary of Topics](Day2/README.md)
   + [R session](Day2/Rsession), [R commands](Day2/Rcode.R), [R commands markdown](Day2/Rcode.md)
   + [Useful functions](Day2/UsefulFunctions.md)
   + [Rmarkdown example](Day2/eg.Rmd)
       + create PDF - `rmarkdown::render("eg.Rmd", "pdf_document")`
	   + extract all R code - `knitr::purl("eg.Rmd", documentation = 0)`

+ [Day3](Day3)
   + [README](Day3/README.md)
      + [Outliers](Day3/outliers.md)
      + [NA and is.na()](Day3/is.na.Rmd)	  
      + [Univariate](Day3/univariate.md)
  	  + [matplot](Day3/matplot.md)
      + [Graphical/plot guidelines](Day3/Plots.md)
 	  + [Report guidelines](Day3/Report.md)

   + [R session](Day3/Rsession), [R commands](Day3/Rsession.R), [R commands markdown](Day3/Rsession.md)
