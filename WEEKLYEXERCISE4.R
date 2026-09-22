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
7. Go to the main branch and use the same “Olympics.csv” dataset to answer the following 
questions. Write your code in the previously created “WEEKLYEXERCISE4” R Script. 

a. Which countries had the largest delegation of athletes in 1992? Create a tibble that 
contains only the variables country and athletes. (2pts) 

olympic <- read.csv("Olympics.csv")

olympic.tibble <- olympic |> 
  filter(year == 1992) |> 
  select(country, athletes) |> 
  arrange(desc(athletes)) |> 
  slice_head(n = 6)

olympic.tibble

b. For the following five countries, plot the number of gold medals earned over time: 
  United States, France, Germany, Russia, and China. (4pts) 

library(stringr)

olympic <- olympic |> 
  mutate(across(where(is.character), str_trim))

olympic |>
  filter(country %in% c("United States", "France", "Germany", "Russia", "China")) |> 
  ggplot(aes(year, gold, fill = country)) +
  geom_col(position = "dodge2") +
  theme_classic() +
  labs(x = "Gold Medals", y = "Year", title = "Gold Medals Awarded From 1980 to the Present") +
  paletteer::scale_fill_paletteer_d("colorBlindness::paletteMartin")
  

         
