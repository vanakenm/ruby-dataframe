# R, Ruby and TDD

Where this come from?

- I heard about R several time and how good it was for Data analysis ("Data Science" - why the quotes?)
- I was wondering what made it that good, and got some answers attending FOSS4G
- This is in a way a summary + what it means for us as ruby developers

## R example

### Types & vectors

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

df[1]
df[1,]

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
dim(mtcars)
colnames(mtcars)
head(mtcars)
mtcars$cyl
```

### Operations

Filter

```R
cars[cars$speed == 10, ]
speed10 = cars[cars$speed == 10, ]

class(cars)
class(speed10)

cars
```

Is the filter modifying the object?

Order

```R
per_dist = cars[order(cars$dist),]
```

Aggregate

```R
aggregate(mpg ~ cyl, mtcars, mean)
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

ggplot(cars) + geom_point(mapping = aes(x = speed, y = dist))

mpg #new data set
ggplot(mpg) + geom_point(mapping = aes(x = displ, y = hwy))
ggplot(mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))
```

## Summary

-> we have libs, a way to install them and a central server to host them.
-> a REPL, but can also run scripts (obviously)
-> even a web frameowrk

## Languages

- What make a language different from another?e
- Why do we have so many?
- Could we do the above in Ruby? Why? How?

## Ruby

### I would love to have a data frame in Ruby

- This is clearly possible
- This means creating a gem

## Create a gem

- Cool [guide](https://guides.rubygems.org/make-your-own-gem/)
- I put a placeholder already

## TDD style

What's TDD?

"Red, Green, Refactor"

- 1. Start always with a test
- 2. Run it (it fails)
- 3. Write the minimum amount of code to make it pass
- 4. Go back to 1

### Framework

Let's use MiniTest

How does it work?

- Set fixed data
- Call code to test
- Assert that the result fit a (fixed) expected value

Stupidest example:

### Tests

- initialize (empty)
- initialize (with hash)
- nrow
- ncol
- []
- colnames
- static one
- dim
- to_s
- col(:cyl)

### References

- R tutorial at [foss4g](https://gfc.ucdavis.edu/events/dar2018/_static)
