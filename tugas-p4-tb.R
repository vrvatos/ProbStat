library(ggplot2)

tinggi <- c(
  188.7, 169.4, 178.6, 181.3, 179, 173.9, 190.1, 174.1, 195.2, 174.4,
  188, 197.9, 161.1, 172.2, 173.7, 181.4, 172.2, 148.4, 150.6, 188.2,
  171.9, 157.2, 173.3, 187.1, 194, 170.7, 172.4, 157.4, 179.6, 168.6,
  179.6, 182, 185.4, 168.9, 180, 157.8, 167.2, 166.5, 150.9, 175.4,
  177.1, 171.4, 182.6,167.7, 161.3, 179.3, 166.9, 189.4, 170.7,
  181.6, 178.2, 167.2,190.8, 181.4, 175.9, 177.8, 181.8, 175.9,
  145.1, 177.8, 171.3,176.9, 180.8, 189, 167.7,188,178.4, 185.4,
  184.2, 182.2, 164.6,174.1, 181.2, 165.5, 169.6, 180.8, 182.7,
  179.6, 166.1, 164, 190.1,177.6, 175.9, 173.8,163.1, 181.1,
  172.8, 173.2, 184.3,183.2, 188.9, 170.2, 181.5, 188.9, 163.9,
  166.4, 163.7, 160.4,175.8, 181.5
)
df_tinggi <- tibble(tinggi_badan = tinggi)
str(df_tinggi)

statistik <-df_tinggi %>%
  summarise(
    jumlah_data= n(),
    minimum= min(tinggi_badan),
    maksimum=max(tinggi_badan),
    rata_rata= mean(tinggi_badan),
    median= median(tinggi_badan),
    simpangan_baku= sd(tinggi_badan)
    )

statistik
statistik <-data.frame(statistik)
statistik

#Histogram
ggplot(df_tinggi, aes(x= tinggi_badan))+
  geom_histogram(binwidth=5, fill= "orange", color= "black") +
  labs(
    title= "DistribusiTinggiBadan",
    x= "TinggiBadan(cm)",
    y= "Frekuensi"
    ) +
  theme_minimal()

#Boxplot
ggplot(df_tinggi, aes(y = tinggi_badan)) +
  geom_boxplot(fill = "tomato") +
  labs(
    title = "Boxplot Tinggi Badan",
    y = "Tinggi Badan (cm)"
) +
theme_minimal()
