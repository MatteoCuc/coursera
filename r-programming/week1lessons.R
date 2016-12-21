#Questa è la lista dei comandi utili e di esempi in R:


#per consocere la directory corrente
getwd()

#concatenate o combine -> per la creazione di un vettore
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
read.table("dati.txt")
read.table("dati.txt", header = TRUE)
read.table("dati.txt", skip = 2)
read.table("dati.txt", nrows = 6)
read.table("dati.txt", header = TRUE, nrows = 6)

#Textual format
y<-data.frame(a=1:3, b=c("a","b","c"))
y
dput(y)
dput(y, file = "y.R") #scrive codice R che poi puo' essere trasformato in oggetti

a<-dget("y.R")
a
source("y.R")
y

#Connessioni a file
# - file (per i file testuali)
# - gzfile, bzfile (per gli archivi)
# - url (per le pagine web)

conn <- url("http://www.google.it","r")
l<-readLines(conn, 30)
l

#[  
x<-c("a","b","c","d","e","a")
x[1]#si ottiene un vettore di un sigolo carattere
x[1:4]
x[x > "b"]

u <- x > "b"
u

# [[

y<-list(a=1:5, b=c("a","b"),c=3.5)
y[1]
y[2]
y[[2]]

name<-"a"
y[[name]]
y$name #element called name in list doesnt exist
y$a

#matrici
x<-matrix(1:6,2,3)
x

y<-list(matteo=c(4,5,6,7))
y
y$m #la m matcha con la colonna matteo
y[["m"]]
y[["m", exact=FALSE]]


#removing NA values
x<-c(1,2,3,NA,5,6,8, NA, 10)
bad<-is.na(x)
bad
x[!bad]
good<-complete.cases(x)
good
x[good]

#vettorizzazione
x<-c(1:6)
x
y<-c(7:12)
y
x+y
x+y == 10

#matrix multiplication
x<-matrix(1:9,3,3)
x
y<-matrix(1:9,3,3)
y
x*y
x%*%y
