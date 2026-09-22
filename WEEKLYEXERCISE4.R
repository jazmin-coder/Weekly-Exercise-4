library(usethis)
git_default_branch()

#[1] "main"

olympic <- read.csv("Olympics.csv")

pacman::p_load(readr, ggplot2, tidyverse)

[Again, make sure you commit and push after writing code for each question.

a. Calculate a new variable, called ‘total.medals’, which is the sum of gold, silver, and 
bronze, and add it to the Olympic dataset. (2pts)

olympic <- olympic |> 
  mutate(total.medals = (gold + silver + bronze))
  
b. For each country, how many gold medals has it won? (2pts) 



c. For each year, how many total medals were given out? (2pts) 


7. Go to the main branch and use the same “Olympics.csv” dataset to answer the following 
questions. Write your code in the previously created “WEEKLYEXERCISE4” R Script. 
a. Which countries had the largest delegation of athletes in 1992? Create a tibble that 
contains only the variables country and athletes. (2pts) 
b. For the following five countries, plot the number of gold medals earned over time: 
  United States, France, Germany, Russia, and China. (4pts) 
8. Merge the “DEV” branch to the main branch. When resolving the merge conflicts, rather 
than selecting a part of the code, make sure to keep all the code. Once merged, the 
“WEEKLYEXERCISE4” R Script in the main branch should consist of all code answering Q4, Q6 
and Q7. (10pts) 
9. Create a new issue and name it “WEEKLY EXERCISE 4”. Label it as “WEEKLY EXERCISE 4” and 
place it under the milestone that should be named “Weekly Exercises”. Add a description to 
the issue and submit it. (10pts) 
10. Share the GitHub repository link on the submission link on Canvas. 