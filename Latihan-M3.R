x <- 5
class(x)
y < 5.678
class(y)

typeof(x)

z <- 5L
class(z)
typeof(z)

t <- 123
t > 67

hari <- "Kamis"
hari2 <- 'Kamis'
hari
hari2

countries <- c('Indonesia', 'China', 'Japan', 'South Korea', 'Singapore')
countries
class(countries)
typeof(countries)
length(countries)
nchar(countries)
paste(countries, collapse=' -- ')

x <- 5:50
x

rm(list=ls())
dataPenduduk <- c(456, 758, 1278, 230, 124, 55)
dataPenduduk
length(dataPenduduk)
names(dataPenduduk) <- c("Jateng", "Jatim", "DKI Jakarta", "Banten", "Sumut", "Papua Barat")
dataPenduduk

x <- c(10,20,30,40,50)
x
x[1]
x[6]
x[5]
x[-1]
x[-c(2,3)]

x[x>25]
x > 25
x[2:4]

nilai <- c(Ferdi = 80, Tiara = 90, Fufufafa = 85)
nilai
nilai["Tiara"]

d1 <- c(55, 78, 90, 85, 80)
d1
d1[-4]
d1 <- d1[-4]
d1

v <- seq(1,1000,by=10)
v
is.vector(v)
v[74]
v <- c(87, 19, 37, 9, 6, 1, 90, 65, 29, 46, 43, 67)
sort(v)
sort(v, decreasing = TRUE)
rev(v)
length(v)
unique(v)
sum(v)
mean(v)
round(mean(v),2)
which(v > 46)
v[5]
v[10]
7 %in% v
any(v > 46)
any(v > 146)

# Matriks

matrix(ncol = 3, nrow = 2)
matrix(1:6,nrow = 2, ncol = 3)
matrix(1:6,nrow = 2, ncol = 3, byrow = TRUE)
m <- matrix(1:6, ncol = 2, nrow = 3)
m
t(m)

a<-c(1,2,3)
a
b<-5:7
b
matriks1 <- cbind(a,b)
matriks1
matriks2 <- rbind(a,b)
matriks2
nrow(matriks1) #banyak nya baris
ncol(matriks1) #banyak nya kolom
dim(matriks1) #banyak nya baris dan kolom

# dimensions of m (nrow, ncol))
dim(matriks1)
dim(matriks2)

# number of cells, or nrow(m) * ncol(m)
length(matriks1)
length(matriks2)
m1 <- 1:9
m2 <- 23:31
m3 <- cbind(m2,m1)
print(m3)
colnames(m3)<-c("umur","no_ID")
print(m3)

# Data Frame

ID_site <-c("A1.01", "A1.02", "B1.01", "B1.02") #judul kolom
Soil_PH <-c(5.6, 7.3, 4.1, 6.0) #judul kolom
num_spesies<-c(17, 23,15, 7)
Treatment <-c("Fert", "Ferr","No_Fert", "No_Fert")
length(ID_site);length(Soil_PH);length(num_spesies);length(Treatment) #setiap vektok harus memiliki panjang yg sama
df <- data.frame(ID_site, Soil_PH, num_spesies, Treatment) #buat tabel
df
str(df) #structure
df$ID_site #pake symbol dollar untuk melihat salah satu data nya
df$Treatment
df_num <- df[, c(2, 3)] #mengambil numeric saja
df_num
mean(df$Soil_PH)
mean(df$num_spesies)
summary(df$num_spesies)

df_penelitian <- data.frame(
  id = 1:4, 
  nama = c("Responden A", "Responden B", "Responden C", "Responden D"),
  skor = c(85, 92, 78, 88),
  status = c("Aktif", "Pasif", "Aktif", "Aktif")
)

summary(df_penelitian)






