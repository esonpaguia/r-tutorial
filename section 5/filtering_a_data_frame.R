library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("DemographicData.csv")

head(data)

# Display rows with internet users less than 2
filter <- data$Internet.users < 2
data[filter,]

# Display rows with birth rate greater than 40
data[data$Birth.rate > 40, ]

# Apply 2 conditions
data[data$Birth.rate > 40 & data$Internet.users <2, ]

# Display rows with high income
data[data$Income.Group == "High income",]

# Specific country
data[data$Country.Name == "Philippines",]
