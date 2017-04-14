# Note: Run basketball_dataset.R and free_throws_dataset.R first

# Create the matrices
FreeThrows <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
colnames(FreeThrows) <- Seasons
rownames(FreeThrows) <- Players

FreeThrowAttempts <- rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
colnames(FreeThrowAttempts) <- Seasons
rownames(FreeThrowAttempts) <- Players

myplot2 <- function (tempData, rows=1:10) {
  data <- tempData[rows,,drop=F]
  matplot(t(data), type="b", pch = 15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch = 15:18, horiz = F)
}

# FTA per game
myplot2(FreeThrowAttempts/Games)

# FT%
myplot2(FreeThrows/FreeThrowAttempts)

# Player playing style
myplot2((Points - FreeThrows)/FieldGoals)
