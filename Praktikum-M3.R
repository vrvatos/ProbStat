bug_modul <- c(12, 5, 20, 8, 15)

waktu_dev <- c(30, 45, 60, 40, 55)
nama_modul <- c("Auth", "Payment", "Dashboard", "Report", "API")

bug_modul[3]
waktu_dev[-2]
sort(bug_modul, decreasing = TRUE)
rev(nama_modul)
which(bug_modul > 10)
mean_bug <- mean(bug_modul)
mean_bug
prioritas_indeks <- which(bug_modul > mean_bug)
prioritas_indeks
prioritas_modul <- nama_modul[prioritas_indeks]
prioritas_modul

M1 <- matrix(1:48, nrow = 6, ncol = 8)
M1
M1[2,] #baris ke-2
M1[,2] #kolom ke-2
nilaiUTS <- data.frame(45, 67, 78, 45, 36, 45, 23)
nilaiUAS <- data.frame(40, 35, 40, 56, 78, 34, 78)
nilaiTot <- data.frame(nilaiUTS,nilaiUAS)
dim(nilaiUTS)
dim(nilaiUAS)
dim(nilaiTot)

#Data Set

mtcars
df <- mtcars
df
head(df)
head(df, 1)
head(df, 10)
str(df)
dim(df) #Dimensi
names(df)
rownames(df)
?mtcars
max(mtcars$disp)
#which(df$disp == max)
df[df$disp==max(df$disp),]
min(df$disp)
df[df$disp==min(df$disp),]
rownames(df)[which(df$disp==max(df$disp))]

#data() 





















































