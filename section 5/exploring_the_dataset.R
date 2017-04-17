# Run load_demographic_dataset.R first
source("load_demographic_dataset.R")

nrow(demographicData)
ncol(demographicData)

head(demographicData) # top, default to 6
tail(demographicData) # bottom, default to 6

str(demographicData) # structure

summary(demographicData)