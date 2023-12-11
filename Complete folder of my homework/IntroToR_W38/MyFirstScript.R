# My First R script

# Create order 
# dir.create("data")
# dir.create("figures")
# dir.create("output_data")

#Get data from the internet
download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb")

?download.file()



# Create digtial objects 

area_hectares <- 1.0
area_hectares*10

x <- 125
y <- "animal"

# We are calculating with object
area_hectares <- 2.5
x <- 132

area_acres <- area_hectares*2.47

area_hectares <- 50

# Functions 
b <- sqrt(a)

a <- 100

round(3.14159)

round(3.14159,digits=2) #Argument is named
round(3,14159,2) #Argument not named
round(digits = 2,3.14159)
?round
round(digits = 2, x=5.2345)

# Vectors and data types 

years <- c(10,3,7,6)
animals <- c("horse","duck","canary")

# inspecting objects

length(years)
typeof(years)
class(years)
class(animals)



num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")

class(num_char)
class(num_logical)
num_logical
char_logical
class(charl_logical)
class(char_logical)

tricky
class(tricky)

years >5

libray(tidyverse)

# Subsetting
animals <- c(animals,"guinea pig","chicken","dog")
animals <- c(animals,animals)
animals[2]
animals[2:5]
length(animals)
animals[12:1]
animals[c(2,5)]
newanimals <- animals[c(10,2,2,5)]

years
years <- c(years,years)
years<5
years[c(TRUE,FALSE,TRUE,TRUE,TRUE,FALSE,TRUE,TRUE)]
years[years<5]
years[years<5]
years[years>5]


# Missing data

years <- c(2,1,1,NA,7)
mean(years)
?mean
mean(years,na.rm=TRUE)
max(years,na.rm=TRUE)


# Stripping out missing data 

is.na(years)

years[is.na(years)]
years[complete.cases(years)]

na.omit(years)

years_no_na <- years[!is.na(years)]
	
mean(years_no_na)
years_no_na[years_no_na>2]

# Starting with data

library(tidyverse)

sqrt(100)

interviews <- read_csv("data/SAFI_clean.csv",na=c("NULL","missing"))

head(interviews)
view(interviews)
tail(interviews)
interviews$affect_conflicts

