# R Tutorial

## Section 1
* [ggplot](section%201/ggplot.R)
  * [Mispriced-diamonds data](section%201/mispriced_diamonds.R)

## Section 2: Core Programming Principles
* [Types of variables](section%202/types_of_variables.R)
* [Using variables](section%202/using_variables.R)
* [Logical variables and operators](section%202/logical_variables_and_operators.R)
* ["While" loop](section%202/while_loop.R)
* ["For" loop](section%202/for_loop.R)
* ["If" statement](section%202/if_statement.R)
* Exercise
  * [Law of large numbers](section%202/law_of_large_number.R)

## Section 3: Fundamentals of R
* [Vectors](section%203/vectors.R)
* [Using brackets to access vectors](section%203/using_brackets_to_access_vectors.R)
* [Vectorized operations](section%203/vectorized_operations.R)
* [Functions in R](section%203/functions_in_r.R)
* [Packages in R](section%203/packages_in_r.R)
* Exercise
  * Scenario

    You are a Data Scientist working for a consulting firm. One of your colleagues from the Auditing department has asked you to help them assess the financial statement of organization X.

    You have been supplied with two vectors of data: monthly revenue and monthly expenses for the financial year in question. Your task is to calculate the following financial metrics:
      - Profit for each month
      - Profit after tax for each month (the tax rate is 30%)
      - Profit margin for each month - equals to profit after tax divided by revenue
      - Good months - where the profit after tax was greater than the mean for the year
      - Bad months - where the profit after tax was less than the mean for the year
      - The best month - where the profit after tax was max for the year
      - The worst month - where the profit after tax was min for the year

    All results need to be presented as vectors.

    Results for dollar values need to be calculated with $0.01 precision, but need to be presented in Units of $1000 (i.e. 1k) with no decimal points.

    Note: Your colleague has warned you that it is okay for tax for any given month to be negative (in accounting terms, negative tax translates into a deferred tax asset).

  * [Dataset](section%203/financial_statement_analysis_dataset.R)
  * [Solution](section%203/financial_statement_analysis_solution.R)

## Section 4: Matrices
* [Basketball Data](section%204/basketball_dataset.R)
* [Indexation](section%204/indexation.R)
* [First Matrix](section%204/first_matrix.R)
* [Different ways to create a matrix](section%204/different_ways_to_create_a_matrix.R)
* [Naming Dimensions](section%204/naming_dimensions.R)
* [Matrix operations](section%204/matrix_operations.R)
* [Matplot](section%204/matplot.R)
* [Subsetting](section%204/subsetting.R)
* [Visualizing subsets](section%204/visualizing_subsets.R)
* [Creating a function](section%204/creating_a_function.R)
* Exercise
  * Scenario

    You have been supplied data for two more additional in-game statistics:
    * Free Throws
    * Free Throw Attempts

    You need to create three plots that portray the following insights:
    * Free Throw Attempts per game
    * Accuracy of Free Throws
    * Player playing style (2 vs 3 points preference) excluding Free Throws. Each Free Throw is worth 1 points

    The data has been supplied in the form of vectors. You will have to create the two matrices before you proceed with the analysis.

  * [Dataset](section%204/free_throws_dataset.R)
  * [Solution](section%204/free_throws_solution.R)

## Section 5: Data Frames
* [Importing the dataset](section%205/importing_the_dataset.R)
* [Exploring the dataset](section%205/exploring_the_dataset.R)
* [Using the $ sign](section%205/using_the_dollar_sign.R)
* [Basic operations with a data frame](section%205/basic_operations_with_a_data_frame.R)
* [Filtering a data frame](section%205/filtering_a_data_frame.R)
* [Introduction to qplot](section%205/introduction_to_qplot.R)
* [Visualizing with qplot](section%205/visualizing_with_qplot.R)
  - Produce a scatterplot illustrating Birth Rate and Internet Usage statistics by Country.

    The scatterplot needs to also be categorised by Countries' Income Groups.
* [Building data frames](section%205/building_data_frames.R)
  - Produce a second scatterplot also illustrating Birth Rate and Internet Usage statistics by Country.
    However, this time the scatterplot needs to be categorised by Countries’ Regions.
    Additional data has been supplied in the form of R vectors.
    - [Country & Region vectors](section%205/CountryRegionVectors.R)
