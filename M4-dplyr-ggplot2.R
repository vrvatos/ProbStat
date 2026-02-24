library(dplyr)
t_mtcars <- mtcars
names(t_mtcars)
str(t_mtcars)
t_mtcars$hp
t_mtcars$mpg
mean(t_mtcars$hp)
mean(t_mtcars$mpg)
summary(t_mtcars$mpg)

mtcars %>%
  summarise(
    mean_mpg = mean(mpg),
    mean_hp = mean(hp),
    mean_wt = mean(wt)
  )

data_nilai <- data.frame(
  nama = c("Andi", "Budi", "Citra", "Dewi", "Eko"),
  nilai = c(80,65, 90, 70, 85),
  kelas = c("A", "A", "B", "B", "A")
)

data_nilai
data_nilai[,c("nama", "nilai")]

# Fungsi select()
data_nilai %>%
  select(nama, nilai)

#Fungsi Filter()
data_nilai %>%
  filter(nilai >= 80)
y <- data_nilai %>%
  filter(nilai >= 80)
y

#Fungsi mutate()
data_nilai %>%
  mutate(status = ifelse(nilai >= 75, "Lulus", "Tidak Lulus"))

#Fungsi arrange()
data_nilai %>%
  arrange(desc(nilai))

#Fungsi group()
data_nilai %>%
  group_by(kelas)

#Fungsi summarise()
data_nilai %>%
  summarise(
    rata_nilai = mean(nilai),
    nilai_maks = max(nilai)
  )

#Kombinasi group() dan summarise()
data_nilai %>%
  group_by(kelas) %>%
  summarise(
    rata_nilai = mean(nilai)
  )

#================================================

tinggi_badan <- c(188.7, 169.4, 178.6, 181.3, 179, 173.9, 190.1, 174.1, 195.2, 174.4, 188, 197.9, 161.1, 172.2, 173.7,
                  181.4, 172.2, 148.4, 150.6, 188.2, 171.9, 157.2, 173.3, 187.1, 194, 170.7, 172.4, 157.4, 179.6, 168.6,
                  179.6, 182, 185.4, 168.9, 180, 157.8, 167.2, 166.5, 150.9, 175.4, 177.1, 171.4, 182.6, 167.7, 161.3,
                  179.3, 166.9, 189.4, 170.7, 181.6, 178.2, 167.2, 190.8, 181.4, 175.9, 177.8, 181.8, 175.9, 145.1, 177.8,
                  171.3, 176.9, 180.8, 189, 167.7, 188, 178.4, 185.4, 184.2, 182.2, 164.6, 174.1, 181.2, 165.5, 169.6,
                  180.8, 182.7, 179.6, 166.1, 164, 190.1, 177.6, 175.9, 173.8, 163.1, 181.1, 172.8, 173.2, 184.3, 183.2,
                  188.9, 170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
tinggi_badan
tinggi_badan <- data.frame(tinggi_badan)
str(tinggi_badan)
tinggi_badan %>% arrange(tinggi_badan)

#Iris 

iris
data_iris = iris
str(data_iris)
select(where(is.numeric))



df.num<-iris[,1:4]

#ringkasanstatistikdasar
mean(df.num$Sepal.Length)
sd(df.num$Sepal.Length)
min(df.num$Sepal.Length)
max(df.num$Sepal.Length)

#ringkasanseluruhkolomnumerik
summary(df.num)

dat.num <-iris %>%
  select(where(is.numeric))

dat.num %>%
  summarise(
    mean_sepal_length = mean(Sepal.Length),
    sd_sepal_length = sd(Sepal.Length),
    min_sepal_length = min(Sepal.Length),
    max_sepal_length = max(Sepal.Length)
  )

iris %>%
  group_by(Species) %>%
  summarise(
    mean_sepal_length = mean(Sepal.Length),
    mean_petal_length = mean(Petal.Length)
  )


df_state <- state.x77

df_state <- as.data.frame(state.x77)
str(df_state)
mean(df_state$Income)
median(df_state$Income)

df_state <- data.frame(df_state)
names(df_state)
df_state %>%
  summarise(
    rata_income = mean(Income),
    lama_hirup = mean(Life.Exp)
  )

ringkasan_2var <- df_state %>%
  summarise(
    rata_income = mean(Income),
    lama_hirup = mean(Life.Exp)
  )


ringkasan_2var
str(ringkasan_2var)

if (!"ggplot2" %in% installed.packages()){
  install.packages("ggplot2")
}
library(ggplot2)

df <- mtcars
ggplot(data = df)
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth() +
  labs(
    title = "Hubungan Berat Mobil dan Efisiensi Bahan Bakar",
    x = "Berat Mobil (wt)",
    y = "Miles per Gallon (mpg)"
  )
  
