# Note: Run basketball_data.R first

# Specific player

myplot <- function (rows) {
  data <- MinutesPlayed[rows,,drop=F]
  matplot(t(data), type="b", pch = 15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch = 15:18, horiz = F)
}

myplot(c(3,6))
myplot(1:5)

myplot2 <- function (tempData, rows=1:10) {
  data <- tempData[rows,,drop=F]
  matplot(t(data), type="b", pch = 15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch = 15:18, horiz = F)
}

myplot2(Salary, 1:5)
myplot2(Salary) # defaults to 10
myplot2(MinutesPlayed/Games)
myplot2(MinutesPlayed/Games, 3)

myplot2(Games)
myplot2(Points)
myplot2(Points/Games)
myplot2(FieldGoals/FieldGoalAttempts)
myplot2(FieldGoalAttempts/Games)
myplot2(MinutesPlayed/Games)
myplot2(FieldGoals/Games)
myplot2(Games/Games)
myplot2(FieldGoals/MinutesPlayed)
myplot2(Points/FieldGoals)