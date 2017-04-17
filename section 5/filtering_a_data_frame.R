# Run load_demographic_dataset.R first
source("load_demographic_dataset.R")

head(demographicData)

# Display rows with internet users less than 2
filter <- demographicData$Internet.users < 2
demographicData[filter,]

# Display rows with birth rate greater than 40
demographicData[demographicData$Birth.rate > 40, ]

# Apply 2 conditions
demographicData[demographicData$Birth.rate > 40 & demographicData$Internet.users <2, ]

# Display rows with high income
demographicData[demographicData$Income.Group == "High income",]

# Specific country
demographicData[demographicData$Country.Name == "Philippines",]
