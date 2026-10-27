
# Reading the NCBI data tables

The following lists the gradual improvements from an initial exploration to 
creating functions that reliably read the data tables in such as file.


+ ncbi.R
  + Explore the NCBIQuery.txt file to develop a strategy for reading the 2 data tables

+ procBlock0.R
  + initial version of procBlock() function to process a chunk of the NCBIQuery.txt file
     containing one of the data tables.
  + this has errors and is incomplete but worth looking at to see how we iteratively add code and
    other functions	 

+ ncbiFuns.R
  + An updated procBlock() function with most errors fixed
  + computeWidths() function
  + mkNames() and an earlier version mkNames0() for  computing
     the column names.

+ ncbiFuns2.R
  + Update on ncbiFuns.R
    + We were not including the last column.
	+ **lazy evaluation**
	
+ ncbiFuns3.R
  + Update to ncbiFuns2.R
     + add fixCols() to clean-up the columns before returning the data.frame
	   + trimws() the character columns
   	   + convert % for "Query cover" column to numeric.

+ ncbiFuns4.R
  + change all the references to `a` to `df` in `fixCols()`. 
