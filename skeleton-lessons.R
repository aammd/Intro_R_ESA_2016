## surveys <- read.csv(file="data/surveys.csv")
args(read.csv)
## read.csv(file="data/surveys.csv", header=TRUE) # is identical to:
## read.csv("data/surveys.csv", TRUE)
## read.csv(file="data/surveys.csv", header=TRUE) # is identical to:
## read.csv(header=TRUE, file="data/surveys.csv")
## ?barplot
## args(lm)
## ??geom_point
## help.search("kruskal")
dput(head(iris)) # iris is an example data.frame that comes with R
## saveRDS(iris, file="/tmp/iris.rds")
## some_data <- readRDS(file="~/Downloads/iris.rds")
sessionInfo()


### Creating objects (assignments)
### Vectors and data types


# Presentation of the survey data
## if (!require("curl")) {
##   install.packages("curl")
## }
## library("curl")
## curl_download("https://dl.dropboxusercontent.com/u/22808457/portal_data_joined.csv",
##               "data/portal_data_joined.csv")
## Exercise
## Based on the output of `str(surveys)`, can you answer the following questions?
## * What is the class of the object `surveys`?
## * How many rows and how many columns are in this object?
## * How many species have been recorded during these surveys?
### Factors
sex <- factor(c("male", "female", "female", "male"))
food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
food <- factor(food, levels=c("low", "medium", "high"))
levels(food)
min(food) ## doesn't work
food <- factor(food, levels=c("low", "medium", "high"), ordered=TRUE)
levels(food)
min(food) ## works!
f <- factor(c(1, 5, 10, 2))
as.numeric(f)               ## wrong! and there is no warning...
as.numeric(as.character(f)) ## works...
as.numeric(levels(f))[f]    ## The recommended way.
## Question: How can you recreate this plot but by having "control"
## being listed last instead of first?
exprmt <- factor(c("treat1", "treat2", "treat1", "treat3", "treat1", "control",
                   "treat1", "treat2", "treat3"))
table(exprmt)
barplot(table(exprmt))


## The data.frame class
example_data <- data.frame(animal=c("dog", "cat", "sea cucumber", "sea urchin"),
                           feel=c("furry", "furry", "squishy", "spiny"),
                           weight=c(45, 8, 1.1, 0.8))
str(example_data)
example_data <- data.frame(animal=c("dog", "cat", "sea cucumber", "sea urchin"),
                           feel=c("furry", "furry", "squishy", "spiny"),
                           weight=c(45, 8, 1.1, 0.8), stringsAsFactors=FALSE)
str(example_data)
## ##  There are a few mistakes in this hand crafted `data.frame`,
## ##  can you spot and fix them? Don't hesitate to experiment!
## author_book <- data.frame(author_first=c("Charles", "Ernst", "Theodosius"),
##                              author_last=c(Darwin, Mayr, Dobzhansky),
##                              year=c(1942, 1970))
## ## Can you predict the class for each of the columns in the following example?
## ## Check your guesses using `str(country_climate)`. Are they what you expected?
## ##  Why? why not?
## country_climate <- data.frame(country=c("Canada", "Panama", "South Africa", "Australia"),
##                                climate=c("cold", "hot", "temperate", "hot/temperate"),
##                                temperature=c(10, 30, 18, "15"),
##                                north_hemisphere=c(TRUE, TRUE, FALSE, "FALSE"),
##                                has_kangaroo=c(FALSE, FALSE, FALSE, 1))
## Indexing and sequences
### The function `nrow()` on a `data.frame` returns the number of
### rows. Use it, in conjuction with `seq()` to create a new
### `data.frame` called `surveys_by_10` that includes every 10th row
### of the survey data frame starting at row 10 (10, 20, 30, ...)





