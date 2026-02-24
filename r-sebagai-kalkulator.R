##--------------------------------------------------
## R Sebagai Kalkulator
## 04 - 02 - 2026
##--------------------------------------------------
100.1+234.9+12.01
x <- 100.1+234.9+12.01
print(x)

2+2
y <- 2+2
print(y)

sqrt(256)
z <- sqrt(256)
print(z)

log10(100)*cos(pi)
i <- log10(100)*cos(pi)
print(i)

cumsum(c(2, 3, 4, 5, 6))
j <- cumsum(c(2, 3, 4, 5, 6))
print(j)

170166719 %% 31079
k <- 170166719 %% 31079
print(k)

48:(14*3)
l <- 48:(14*3)
print(l)

48:14*3
n <- 48:14*3
print(n)

log(10)
m <- log(10)
print(m)

log10(10)
o <- log10(10)
print(o)

exp(2)
p <- exp(2)
print(p)

abs(-4)
q <- abs(-4)
print(q)

a <- matrix(c(5, -4, -1, 1), 2, 2, byrow=TRUE)
b <- c(-10, 2)
print(a)
print(b)
solve(a,b)

# create matrix A and B using given equations
A <- rbind(c(1, 2, 3),
           c(2, 2, 3),
           c(3, 2, 8))
b <- c(20, 100, 200)
solve(A, b)

# 

nilai_hadir<-90
nilai_uts <-80

#3.Operasiantarvariabel
nilai_akhir<-(nilai_hadir + nilai_uts)/ 2

#4.MenampilkanhasilkeConsole
nilai_akhir
#Membuatvektorsudutdari 0hingga2*pi
x<-seq(0,2*pi, length.out= 100)

#Menghitungnilaisinusdancosinus
y_sin<-sin(x)
y_cos<-cos(x)

#Membuatgrafik
plot(x,y_sin,type= "l", col="blue",lwd= 2,
     ylim= c(-1, 1),xlab = "Sudut(radian)", ylab= "Nilai",
     main= "GrafikSinusdanCosinus")

#Menambahkankurvacosinus
lines(x,y_cos, col= "red", lwd= 2)

#Menambahkanlegenda
legend("topright", legend= c("sin(x)", "cos(x)"),
       col= c("blue","red"),lwd= 2)

 #=============================================================

celcius <- c(0, 10, 20, 30, 40)
farenheit <- 9/5 * celcius + 32
conversion <- data.frame(Celcius = celcius, Farenheit = farenheit)
print(conversion)

#=============================================================


