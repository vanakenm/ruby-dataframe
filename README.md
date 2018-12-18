# Steps

## Raw

lab1 + lab2 + plot or predict or both
What make special? Vectors + defaults data sets + Libs!
Data frame example
Compare with ruby code
but... possible with Ruby code?

Looks at the API


## R example

### types & vectors

- Everything is a vector
- Basic types
- Method based (vs object based)

### Data Frame from fixed data

From: http://www.r-tutor.com/r-introduction/data-frame
Then: https://gfc.ucdavis.edu/events/dar2018/_static/labs/lab2_introtoR_2_answers.R

```R
speed = c(100,120,140)
cylinders = c(4,6,6)
names = c("Opel", "Toyota", "Fiat")
df = data.frame(names,speed,cylinders)
df
df[1,2]
df[2,"speed"]
```

### Static Data Frame (cars/mtcars)

```R
cars
mtcars
```

### Basics (rows/headers)

```R
mtcars
nrow(mtcars)
ncol(mtcars)
```

### Plot 

```R
plot(cars)
plot(cars, main="Speed vs Distance")
plot(extra ~ group, data=sleep)
```

```R
install.packages("ggplot2")
library(ggplot2)

mpg #new data set
```

- basic on cars
- ggplot on mtcars (+ install packages)

### Group
### Predict


## Summary

-> we have libs, a way to install them and a central server to host them.
-> a REPL, but can also run scripts (obviously)
-> even a web frameowrk

## Ruby

### I would love a data frame in Ruby

- This is clearly possible
- This means creating a gem

## TDD style

What's TDD?

### Steps

- New empty data frame should have 0 rows -> Just the class
- Create with hash should have X rows & columns
- Create from CSV
- Group? Check API
