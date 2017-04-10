# Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Solution

# Profit for each month
profit <- revenue - expenses

# Tax due per month (the tax rate is 30%)
taxDuePerMonth <- round(0.30 * profit, 2)

# Profit after tax for each month 
profitsAfterTax <- profit - taxDuePerMonth

# Profit margin for each month - equals to profit after tax divided by revenue
# Round To 2 Decimal Points, Then Multiply By 100 To Get %
profitMargins <- round(profitsAfterTax / revenue, 2) * 100

# Mean / average profit after tax for the 12 months
avgProfit <- mean(profitsAfterTax) 

# Good months - where the profit after tax was greater than the mean for the year
goodMonths <- profitsAfterTax >= avgProfit

# Bad months - where the profit after tax was less than the mean for the year
badMonths <- !goodMonths

# The best month - where the profit after tax was max for the year
maxProfit <- max(profitsAfterTax)
bestMonth <- profitsAfterTax == maxProfit

# The worst month - where the profit after tax was min for the year
minProfit <- min(profitsAfterTax)
worstMonth <- profitsAfterTax == minProfit

#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0)
profitsAfterTax.1000 <- round(profitsAfterTax / 1000, 0)

# Print Results
revenue.1000
expenses.1000
profit.1000
profitsAfterTax.1000
profitMargins
goodMonths
badMonths
bestMonth
worstMonth

# Matrix
M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profitsAfterTax.1000,
  profitMargins,
  goodMonths,
  badMonths,
  bestMonth,
  worstMonth
)
M