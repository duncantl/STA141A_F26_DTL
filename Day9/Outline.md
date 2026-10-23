# Encoding

```r
ff = "../Data/USA_CA_Mount.Shasta.725957_TMYx.pvsyst"
l = readLines(ff)
l[14]
```
Doesn't look correct.

```r
grep("M", l[14])

Warning in grep("M", l[14]) :
  unable to translate ',,,,,W/m2,W/m2,W/m2,deg.C,m/sec,<b0>' to a wide string
```

```r
l = readLines(ff, encoding = "latin1")
```

+ `l[14]`
   + Displays "correctly"

+ `grep("M", l[14])`
  + No warning.



## NASA data.

See [nasa.R](nasa.R)

### Read a single file

+ start having got the values in the 24x24 grid.
+ add the latitude, longitude
+ fix the latitude and longitude to be +/-  rather than N/S
+ add the date
+ add the variable name.


+ Use browser() in the function
    + browser()
    + if(cond) browser()


--

Check the values are in the same place in all the files

+ longitudes
+ latitudes
+ TIME
+ VARIABLE


Now we know they are, turn our code into a function.


