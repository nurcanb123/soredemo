n<-10
p<- seq(0.1,0.9,by=0.1)
x<-0:n
 
binom_table<-sapply(p,function(p){
  round(dbinom(x,size=n,prob=p),4)
})

colnames(binom_table)<- p
rownames(binom_table)<- x

print(binom_table) 

