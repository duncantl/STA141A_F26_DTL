
#
# Want 2 data.frames
# one for each Query #<n>
# May want the Query metadata.


l = readLines("../Data/NCBIQuery.txt")
w = l == "Sequences producing significant alignments:"
table(w)

# could figure out the line numbers and loop over these.
# However, a better way is
# split(, cumsum(isStartOfBlock))

g = split(l, cumsum(w))

# Have
#  preamble
#  1st block
#  2nd block
#  ...

# Process each block hoping the same structure

# Each block has the
# data we want first
#  2 blank lines
# Alignments:
# .....

# Process each one 
# Ignore first line
# column names in first 2 lines. Later!
# find first blank line and discard that and subsequent lines
# now have data


# What format is it?

