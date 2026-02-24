mtcars
library(dplyr)

#Fungsi 1 : select()
mtcars %>%
  select(hp, gear, carb)

#Fungsi 2 : filter()
mtcars %>%
  filter(hp > 100)

#Fungsi 3 : mutate()
mtcars %>%
  mutate(kpl = mpg * 0.425)

#Fungsi 4 : arrange()
mtcars %>%
  arrange(desc(hp))
  
#Fungsi 5 : group_by()
mtcars %>%
  group_by(disp)
  
#Fungsi 6 : summarise()
mtcars %>%
  summarise(rata_disp = mean(disp))
  
#Fungsi 7 : select() pada data iris
iris %>%
  select(Sepal.Length, Species)
  
  
#Fungsi 8 : group_by() + summarise() pada data iris
iris %>%
  group_by(Species) %>%
  summarise(
    rata_sepal_length = mean(Sepal.Length),
    sd_sepal_length = sd(Sepal.Length),
    maks_petal = max(Petal.Length)
  )
  
#Fungsi 9 : filter() pada data iris
iris %>%
  filter(Species == "setosa")
  
#Fungsi 10 : mutate() pada data iris
iris %>%
  mutate(Sepal.Length = Sepal.Length * 10)
