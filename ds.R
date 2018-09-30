#Data Structures in R

#vectors----
x=1:10 #create seq of nos from 1-10
x1 <- 1:30
(x2=c(1,2,13,4,5))
(x3b=c("a","Shivam","4"))
?c
(x4=c(T,FALSE,TRUE,T,F))
(x5z=c(3L,5L))
(xb5 = c(1,'a',T,4L))
?seq
(x6= seq(0,100,by=3))
(x7=c(x6,x2))
methods(class='numeric')
ls() #variables in my environment
length(x6)
x6[20]
x6[3] #access 3rd element
x6[-1] # access all but 1st element
(x7=c(x6,x2))
(sort(x6,decreasing=T))
rev(x6)
(x=-3:2)
#[1] -3 -2 -1 0 1 2
x[2]<-0;x#modify 2nd element
x<0
x[x<0] = 5;x #modify elemenys less than 0
  #[1] 5 0 5 0
  x=[1:4]
  (x=seq(1,5, length.out=10))
  x=null
  X=NULL
  
  
  (X = rnorm(100)) #normal distribution
   ?rnorm
  (x1=rnorm(1000000,mean=50,sd=5))
  mean(x1)
  plot(density(x1))
  abline(v=mean(x1),h=0.04))
plot(density(x1))
  #delete vector






#matrices----
100:111
(m1=matrix(1:12, nrow=4))
(m2=matrix(1:12, ncol=3,byrow=T))
x=101:124
length(x)
matrix(x , ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1

#access elements of matrix
m1[1,2:3]
m1[c(1,3),]

#names of cols and rows
m1
paste("C","D",sep="-")
paste("C",1:100,sep="-")
(colnames(m1)=paste('c',1:3,sep=''))
m1
attributes (m1)

m2[c(1,2),c(2,3)]
m2[,]
m2[-2,]
m2[1:5]
m2[c(TRUE,F,F,F),c(2,3)] #logical indexing
m2[m2 > 5 & m2<10]
m1
#modify vector
m2
m2[2,2]
m2[2,2] = 10
m2
cbind(m2,c(55,65,75,85))
cbind(m2,m2)
m1
colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)
t(m1) #transpose
m1
?sweep
sweep(m1,MARGIN=1, STATS = c(2,3,4,5), FUN= "+" )





addmargins(m1,1,sd) #rowwise function
addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd))) #row & col wise function




(#arrays----

#data frame----
#create vectors to be combined into DF
  (rollno = 1:30)
  (sname=paste('student',1:30, sep=''))
  (marks = floor(rnorm(30, mean=50, sd=10)))
  (gender= sample(c('M','F'), size=30, replace= T, prob=c(0.7,0.3)))
  (marks2 = ceiling(rnorm(30,40,5)))
  (course = sample(c('BBA','MBA') , size=30, replace=T, prob=c(.5,.5)))
  rollno; sname;gender
  marks; marks2;course
 table(gender) 
  
 #create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors=F)
str(df1)   #structure of df
head(df1) #top 6 rows
head(df1, n=3)
 tail(df1) #last 6 rows
 class(df1)
 summary(df1)
 df1$gender= factor(df1$gender)
 df1$course= factor(df1$course)
 str(df1)
 summary(df1)
 df1
 df1$gender
 df1[ ,c(2,4)]
 df1[marks>50 & gender=="F", c('rollno', 'sname', 'gender', 'marks')]
 names(df1)
 #Factors----