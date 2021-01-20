# Lesson 2: Base R vs Tidy R- learning the tidyverse
# Created by: Caitlin Allen Akselrud
# Contact: caitlin.allen_akselrud@noaa.gov
# Created: 2020-01-13
# Modified: 2021-01-18


# packages ----------------------------------------------------------------

install.packages('tidyverse')
library(tidyverse)

install.packages('janitor')
library(janitor)

install.packages('renv')
library(renv)

# data --------------------------------------------------------------------

install.packages('gapminder')
library(gapminder)


# tidy data ---------------------------------------------------------------

# 1. Each variable must have its own column.
# 2. Each observation must have its own row.
# 3. Each value must have its own cell.

gapminder

?gapminder

# tibble ------------------------------------------------------------------

# regular data frame: shows a lot of rows, little info on columns
as.data.frame(gapminder)

# tibble: cleaner viewing, shows 10 rows, info on columns and df size
gapminder

# see all column names and row info:
str(gapminder)

# * pivoting tibbles ------------------------------------------------------

# rotate your tables longer or wider to manipulate data as you need, or to tidy your data set

# * * pivot wider ---------------------------------------------------------

?pivot_wider

gapminder

# expand years out into columns, and fill with life expectancy for each row in each year
pivot_wider(data = gapminder, names_from = year, values_from = lifeExp)

# expand years out into columns, and fill with life expectancy AND population for each row in each year
# # NOTE: remember, we can use the concatenate 'c()' function to string things together
pivot_wider(data = gapminder, names_from = year, values_from = c(lifeExp, pop))

# expand years out into columns, and fill with life expectancy for each row in each year AND on each continent
pivot_wider(data = gapminder, names_from = c(continent, year), values_from = lifeExp)


# * * pivot longer --------------------------------------------------------

?pivot_longer

# for each location and year, create an individual row for: life expectancy, population, and GDP 
pivot_longer(data = gapminder, cols = c(lifeExp, pop, gdpPercap))

# TRY THIS:
# try to combine country and continent


# then use the ?pivot_longer to see how to name your two new columns


# * renaming tibbles ------------------------------------------------------

gapminder

rename(.data = gapminder, i_live = lifeExp)

# TRY THIS:
# try to rename more than one column. do you need the c() function?


# janitor package: clean_names() changes column headers to follow best coding convention from
  # the R Style Guide: https://style.tidyverse.org/
  # we will introduce this in detail at a later lecture

gapminder

janitor::clean_names(gapminder)


# best practice: renv() ---------------------------------------------------

# At the start of a project, run: 
  renv::init()

# During a project, run: 
  renv::snapshot()

# When reopening the project or opening on a different computer, run: 
  renv::restore()

# You will need to make sure you have a copy of the RProfile file and the renv.lock files, and 
  # that you share those files when sharing your code with others or between computers.

