## This is the first attempt for resolution the second chapter´s practice 

## August 26, 2017
## Ingrid Vanessa

## installing the package 'ape'

install.packages("ape")

## Library Actived

library(ape)

#### Exercise 2.8.1 ####

## I have find the way for know my directory

help(print)
## is incorrect

help(get)
## nop

## now this 

getwd()
## Yes! that is correct

## To chance the directory

setwd("D://Documents/")
getwd()


#### Exercise 2.8.2 ####

## To create one matrix with three columns and 1000 rows

matrix(NA, 1000,3)

## To assing a a Poisson distribution

?Poisson

## A attempt to assign a Poisson distribution with rates 1, 5, and 10, respective to three colums of past matrix 

## Creating a vector x with the differents statements, and assign to matrix

x1 <- rpois(1000,lambda=1)
matrix(x1,1000,3)

x2 <- rpois(1000,lambda=5)
matrix(x2,1000,3)

x3 <- rpois(1000,lambda=10)
matrix(x3,1000,3)
## is incorrect

## another way, create the vectors corresponding and assign to matrix "miPrimera", as the bind of three columns

primero<- rpois(n=1000,lambda=1)
segundo<- rpois(n=1000,lambda=5)
tercero<- rpois(n=1000,lambda=10)
miPrimera<- cbind(primero,segundo,tercero)
miPrimera
## Is correct!

## The mean of complete matrix

mean(miPrimera)

## The mean of first row

apply(miPrimera,1,mean)

## The mean of second column

apply(miPrimera,2,mean)

## !Summary for check

#### Exercise 2.8.3 ####

## The third exercise is create a vector of 10 random normal values using three differents methods

## To create and concatenate successively the 10 random values with c, the next method is easy but nothing practical 

a<-rnorm(1)
b<-rnorm(1)
c<-rnorm(1)
d<-rnorm(1)
e<-rnorm(1)
f<-rnorm(1)
g<-rnorm(1)
h<-rnorm(1)
i<-rnorm(1)
j<-rnorm(1)

c(a,b,c,d,e,f,g,h,i,j)

## The next is a vector of length 10 for chance its chance successively

x<-(1:10)
x

## To extract the five number

x[5]

## Expansion as a character

w<- as.character(c(1:10))
w

## To extract the five character

w[5]

## Check the function 'paste'

w<- paste(c(1:10))
w
w[5]

w<- paste(1:10)
w
w[5]

## Is equal with and whitout function 'c'

## Solving with function 'for'

for(i in 1:10){
  print(i)
}

## Another attempt

  a<- c(11:20)


a[5]

for(i in 1:10){

    print(a[i])  
  
a[i]<-rnorm(1)

print(a[i])

}


print (a)

## the most direct method

c<-rnorm(10)
c

#### Exercise 2.8.4 ####

## To read a table 

l<-read.table("tab.txt")
str(l)

## To make label for columns and rows

rownames(l)<-("1","2","3")
colnames(l)<-("v1","v2")
l

## To extract "Mus_musculus"

l["Mus_musculus"]

#### Exercise 2.8.5 ####

## To create the vectors 'Archeae' and 'Bacteria'
  
Archaea <- c("Crenarchaea", "Euryarchaea")
Bacteria <- c("Cyanobacteria", "Spirochaetes","Acidobacteria")
TreeOfLife<-list(Archaea,Bacteria)
str(TreeOfLife)

# To extract the group corresponding to 'Archeae'

TreeOfLife$Archaea
## Is incorrect

TreeOfLife[Archaea]
## Is incorrect


## If you known the position of group 

TreeOfLife[[1]]
## Correct!

## To add to past list a new taxon named 'Eukaryotes'

Eukaryotes <- c("Alveolates", "Cercozoa", "Plants","Opisthokonts")

TreeOfLife[[3]]<- Eukaryotes
TreeOfLife
## Completed


## Update Archaea by adding "Actinobacteria"

TreeOfLife[[Archaea]]
ArchaeaN<- c("Actinobacteria",Archaea)
TreeOfLife[[Archaea]]<-ArchaeaN

## Other solution
TreeOfLife$Archaea<-c(TreeOfLife,Archaea,"Actinobacteria")
