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


+ Day4
   + Combining data from 2 or more vectors or data.frames
   + match()
   + merge()
   + No laptop
   + Chalk & board discussion on 


+ [Day5](Day5)
   + How R finds variables
      + search() 
	  + ls()
   + Basics of function calls
      + lazy evaluation of arguments
   + Matching values in 2 vectors/data.frames
      + subsetting by name in a vector and rownames in a data.frame
      + match()
   + [R session](Day5/Rsession), [R commands](Day5/Rcode.R), [R commands markdown](Day5/Rcode.md)


+ [Day6](Day6)
     + [R session](Day6/Rsession), [R commands](Day6/Rcode.R), [R commands markdown](Day6/Rcode.md)
	 + [Outline](Day6/Outline.md) 	 
     + [merge.md](Day6/merge.md) 	 

+ [Day7](Day7)
	+ [slides](Day7/slides.html)
	    + subsetting
		+ match()
		+ merge
    + [merge.md](Day6/merge.md)
	    + example
		   + match() and merge()
	    + identical()
		+ all.equal()
    + [R session](Day7/Rsession), [R commands](Day7/Rcode.R), [R commands markdown](Day7/Rcode.md)


+ [Day 8](Day8)
    + Read the individual political contribution data from the FEC
	   + Example data [Data/itcont_small.txt](Data/itcont_small.txt)
	+ Start reading the NASA data, e.g. [Data/NASA/temperature1.txt](Data/NASA/temperature1.txt)
    + [R session](Day8/Rsession), [R commands](Day8/Rcode.R), [R commands markdown](Day8/Rcode.md)


+ [Day 9](Day9)
	+ [topics, strategy, steps](Day9/Outline.md)
	    + writing functions 
   	    + browser() and debugging.
    + [nasa functions](Day9/nasa.R)
    + [R session](Day9/Rsession), [R commands](Day9/Rcode.R), [R commands markdown](Day9/Rcode.md)
