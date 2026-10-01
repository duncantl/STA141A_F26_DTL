
# Considerations for Plots

+ Think carefully about what type of plot is appropriate and how to compose it.
  + "A picture paints a thousand words"
  + That would be a lot of writing and editing.

+ Proper axis labels
+ Title on the plot
+ Caption describing what the reader should note from the plot, i.e., the important points/takeways.
+ Legend as necessary
   + if color or plotting character needs map to explain what they mean.

+ Control the scales/range of the axes
  + xlim, ylim
  + subsetting of the starting data

+ Avoid significant overplotting
  + smoothScatter(), jitter(), ...

+ If creating plots with 100s of thousands of points or more, 
   consider a PNG or JPEG rather than PDF.
   + use
   
```
knitr::opts_chunk$set(dev = "png")
```

or, for an individual plot/chunk,

<pre>
```{r dev="png"}
 ...
```
</pre>
