library(Lahman)

s16 = Salaries[ Salaries$yearID == 2016, ]

order(s16$salary, decreasing = TRUE)

head(s16$salary[ order(s16$salary, decreasing = TRUE) ], 20)

range(s16$salary)

l = s16[order(s16$salary, decreasing = TRUE)[1:10],]

head(l)

l

names(People)

head(People)

m = match(l$playerID, People$playerID)

m

table(is.na(m))

p = People[m,]

p

cbind(l$playerId, p$playerId)

cbind(l$playerID, p$playerID)

l$playerID == p$playerID

table(l$playerID == p$playerID)

cbind(l, p)

t16.2 = merge(l, People,  "playerID")

t16 = cbind(l, p)

identical(t16, t16.2)

all.equal(t16, t16.2)

dim(t16)

dim(t16.2)

names(t16)

names(t16.2)

all(names(t16.2) %in% names(t16))

table(names(t16))

which(names(t16) == "playerId")

which(names(t16) == "playerID")

which(names(t16) == "playerID")[2]

tt = t16[ - which(names(t16) == "playerID")[2], ]

tt = t16[ , - which(names(t16) == "playerID")[2] ]

dim(tt)

cbind(names(tt), names(t16.2))

length(intersect(names(tt), names(t16.2)))

names(tt[, names(t16.2)]) == names(t16.2)

table(names(tt[, names(t16.2)]) == names(t16.2))

identical(tt[, names(t16.2)], t16.2)

all.equal(tt[, names(t16.2)], t16.2)

names(Parks)

head(Parks)

names(Teams)

table(Teams$park %in% Parks$park.key)

table(Teams$park %in% Parks$park.name)

table(Teams$park %in% Parks$park.alias)

table(Teams$park.name[Teams$yearID >= 1986 & Teams$yearID < 2017] %in% Parks$park.alias)

table(Teams$park[Teams$yearID >= 1986 & Teams$yearID < 2017] %in% Parks$park.name)

setdiff(Teams$park[Teams$yearID >= 1985 & Teams$yearID < 2017], Parks$park.name)

grep("Anaheim", Parks$park.name, value = TRUE)

grep("pacbell", Parks$park.name, value = TRUE, ignore.case = TRUE)

grep(" I+$", Parks$park.name, value = TRUE)

w = grepl(" I", Parks$park.name) | grepl(" II", Parks$park.name) | grepl(" III", Parks$park.name)

table(w)

Parks$park.name[w]

z = gregexpr(" I+$", Parks$park.name)

z[1:5]

z

z = gregexpr(" I+$", c("Agricultural County Fair Grounds II", "League Park II", "Inlet Park II"                      ))

z


