# Run load_demographic_dataset.R first
source("load_demographic_dataset.R")

demographicData[3,3]
demographicData[3, "Birth.rate"]

# $ sign is used to access data inisde a data frame. It does NOT work in matrices
demographicData$Birth.rate[3]

# These two are identical
demographicData$Birth.rate
demographicData[, "Birth.rate"]

# Retrive the levels
levels(demographicData$Income.Group)
