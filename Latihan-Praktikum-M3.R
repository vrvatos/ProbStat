data(state)
objects()
class(state.x77)

#merubahstrukturobjekmenjadidataframe
state.x77 <-data.frame(state.x77)
head(state.x77)
names(state.x77)
#mengalbilkolom atauvariavelIncome
income<-state.x77$Income
max(income)
min(income)
incomeMax <-which.max(income)
incomeMin <-which.min(income)
row.names(state.x77)[incomeMax]
row.names(state.x77)[incomeMin]
summary(income)