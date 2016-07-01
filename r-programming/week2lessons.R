#(curly braces -> {})

#if else
x<-5
x
if(x<3){
  y<-4
} else {
  y<-3
}
y

x<-5
x
y <- if(x<3){
  4
} else {
  3
}
y

#for
for(i in 1:7){
  print(i)
}

car<-c("a","b","c","d")
for(i in 1:4){
  print(car[i])
}
for(letter in car){
  print(letter)
}