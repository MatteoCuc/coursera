#Questa è la lista dei comandi utili e di esempi in R:


#per consocere la directory corrente
getwd()

#concatenate
x<-c("T","F")
x
a<-c(1:11)
a

#Factors
x <- factor(c("yes","no","yes","yes","no"))
x
table(x)

x <- factor(c("yes","no","yes","yes","no"), levels = c ("yes","no"))
x


#NA vs NAN
x<-c(1,2,NA,3,4,NaN)
is.na(x)
is.nan(x)


#Data Frame: per salvare dati in colonne con intestazione
x<-data.frame(id = 1:5, age=c(30,12,18,45,66))
x
nrow(x)
ncol(x)

#Names
x<-c(1:3)
x
names(x)<-c("id","age","name")
x

x<-list(a=1,b=4,c=8)
x

x<-matrix(1:6,nrow = 2, ncol = 3)
x
dimnames(x)<-list(c("r1","r2"),c("c1","c2","c3"))
x


#read from file
read.table("dati.txt", header = TRUE)