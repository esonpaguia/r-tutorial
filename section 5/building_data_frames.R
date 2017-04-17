# Run CountryRegionVectors.R first

# first way
mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
head(mydf)
colnames(mydf) <- c("Country", "Code", "Region")

# second way
# Making your own variable name on the fly
rm(mydf)
mydf <- data.frame(Country=Countries_2012_Dataset, 
                   Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset)
head(mydf)
tail(mydf)

summary(mydf)