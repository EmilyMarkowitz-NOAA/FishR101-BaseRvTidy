# Lesson 2: Base R vs Tidy R- packages and libraries
# Created by: Caitlin Allen Akselrud
# Contact: caitlin.allen_akselrud@noaa.gov
# Created: 2020-01-13
# Modified: 2021-01-18

# workflow ----------------------------------------------------------------

dirs <- c("code", "data", "documentation", "figures", "functions", "output")

for (i in 1:length(dirs)) {
  if (dir.exists(dirs[i]) == FALSE) {
    dir.create(dirs[i])
  }
}


# install packages --------------------------------------------------------



# load package libraries --------------------------------------------------


