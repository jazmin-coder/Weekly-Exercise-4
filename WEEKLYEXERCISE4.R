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

gold.country <- olympic |> 
  group_by(country) |> 
  summarise(gold.medals = sum(gold))

c. For each year, how many total medals were given out? (2pts) 

medals_p_year <- olympic |> 
  group_by(year) |> 
  summarise(all.medals = sum(total.medals, na.rm = T))
