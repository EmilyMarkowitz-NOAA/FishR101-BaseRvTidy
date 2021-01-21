# Lesson 2: Base R vs Tidy R - Homework
# Created by: Emily Markwowitz
# Contact: Emily.Markowitz@noaa.gov
# Created: 2020-01-19
# Modified: 2021-01-19

# 1. Let's explore Tidyverse!
  
## a. Think of Tidyverse as a family of packages. Which packages are loaded with {tidyverse}? What do each of these packages do? Check out: https://tidyverse.tidyverse.org/
  

## b. Which package is `pivot_wider` from?


## c. Which package is `rename` from?


## d. Can you use {tidyverse} without {base} R?: 


# 2. Let's play with some data! 

# You can view the dataset CO2 in more detail using ` View(CO2) ` and learn about it using `?CO2`. CO2 comes from the {datasets} package which should already be automatically loaded in your R. 

# Some info about the CO2 dataset: "The CO2 data frame has 84 rows and 5 columns of data from an experiment on the cold tolerance of the grass species *Echinochloa crus-galli*."

CO2<-datasets::CO2
head(CO2)

## a. `rename()` the "conc" column to "Concenctration mL/L" and "treatment" column to "condition". The new name for the conc column is not a great name (dare I say 'tidy' name?) so we'll fix that in the next question. 


## b. Use the {janitor} function `clean_names` on the CO2 data. What does it do? How did {janitor} change our "Concenctration mL/L" column?


## c. Use `pivot_wider` make columns of uptake (value_from) for each plant (names_from). 


## d. Use `pivot_longer` to undo what you did in 2c. 
# To see how to get the old names back, check out the `names_to` and `values_to` variable in `?pivot_longer`. This will likely incure some new rows with `NA`s, so you'll need to remove that here with `values_drop_na`. You can check if you actually got it back to origional form by seeing if the dimensions of the data.frame are the same as the origional dataset. As stated earlier, `dim(datasets::CO2)` was 84 rows and 5 columns. 

