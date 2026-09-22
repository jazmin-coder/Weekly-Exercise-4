library(usethis)
git_default_branch()

#[1] "main"

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
  

         