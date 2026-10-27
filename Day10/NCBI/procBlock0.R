procBlock =
function(x) {
  hdr = x[2:3]
  x = x[ - (1:3) ]
  i = which(x == "")[1]
  dt = x[ 4:i ]
  # or drop - c(1:3, seq(which(i)[1], length(x)))

  # XXX Need the widths.
  read.fwf(textConnection(dt), widths = widths)

  # need the names
}
