## Chapter 3 "Phylogenetic Data in R"

## First step, get your work directory and if you want, can chance it 

setwd("R/")
getwd()

## Now to install and activate the package 'ape'

install.packages(ape)
library("ape")

#################
## Exercise 1

## To create a tree with 10 random number

tre <- rtree(10)
tre


## To see the structure of my tre

str(tre)


## Show the matrix of conecction built

tre[edge]
## Is incorrect because for these object you should use the simbol $ instead of []


tre$edge
## Yes, is correct


## If you want known the dimensions (number of rows and number of columns)

dim(tre$edge)


## To extract the branch lengths and store them in a vector

branchlength <- tre$edge.length
branchlength


## To delete the branch lengths

tre$edge.length<- NULL
tre


## For plot the tree

plot(tre)


## For graph the tree with branch's length for default 

plot.phylo(tre, use.edge.length = F)


## Show the branch's length, in other words, for restore the original branch lengths of the tree

plot.phylo(tre, show.node.label = T)


## To make a random branch lengths from a uniform distribution 

tre$edge.length <- ?rnorm(

        length(tre$edge[,1])
    
    ,0,1)


## For positive values you should use absolute ("abs")

tre$edge.length <- abs(rnorm(
    
    length(tre$edge[,1])
    
    ,0,1))
 

## To graph an object of class phylo

plot.phylo(tre)

#################
## Exercise 2

## First, to create a random tree with 5 tips

tre2<- rtree(5)
print(tre2)
plot(tre2)
tre2


## show the class of tree

class(tre2)


## For delete the class of tree

class(tre2)<- NULL


## For return the class to object

tre3<-as.phylo(class(tre2))
## Didn´t run


tre4<-class(as.phylo(tre2))
## Didn´t run


enable->class(tre2)
## not found enable


class(tre2)<- "phylo"
## Is correct!!

#################
## Exercise 3

## To make three tree with 10 tips

tre31<- rtree(10)
tre32<- rtree(10)
tre33<- rtree(10)


## summary of each tree

summary.phylo(tre31)
summary.phylo(tre32)
summary.phylo(tre33)


## To create a function

createTree<- function(numDeArboles=1,numDeTerminales=10)
  
  {rmtree  (numDeArboles,numDeTerminales)->miarbolito
  
  ;return(miarbolito)}

createTree()


## To write and read a tree

getwd()
Tree<- rtree(3)
write.tree(Tree, "fileTree")
read.tree("fileTree")

#################
## Exercise 5

## To extract the sequences of the cytochrome b gene with the accession numbers U15717–U15724


## For extract the gen corresponding to accession number U15717

a1<-read.GenBank("U15717", species.names=T)


## For see the atributes, name, etc...

attr(a1, "species")


## To resolve this exercise you can make a function as the next

printName<- function(cod){
                     a1<-read.GenBank(
                       paste("U157", 17:24,sep=""), species.names=T)
return
(attr(a1,"species"))
}

## The result is
printName()


## For Print, with a single command, the length of each sequence.

lengthseq<- function(cod){
  a1<-read.GenBank(
    paste("U157", 17:24,sep=""),length(a1))
  return
  (attr(a1,"species"))
}

lengthseq()
## no funciona


### other attempt

vectordna<-paste("U157", 17:24, sep="")
misDaticos<-read.GenBank(vectordna)
misDaticos[[1]]
str(misDaticos[1])


## length of complete list

length(misDaticos)


## length of list´s data

length(misDaticos[[2]])


## The aim of next attempt is to create a function for show the length of downloads sequences 

lengthseq<- function(cod){
  a1<-read.GenBank(
    paste("U157", 17:24,sep=""),length(misDaticos[[1]]))
  return
  (attr(a1,"species"))
}

lengthseq()
## is incorrect


## with apply for a list

lapply(misDaticos, length)


## For arrange in a matrix

matrizdatos<- matrix(data = lengthseq, nrow =8 , ncol = 2)
## is incorrect


as.alignment(misDaticos)->miPseudoAlign

write.nexus(misDaticos)
write.nexus(miPseudoAlign)
## not run


## write as fasta

write.fasta()
## not found


## write as newick

write.dna("miPseudoAlign",file = "miFasta", format="fasta")
## yes, but save the  word miPseudoalign 


write.dna(misDaticos,file = "miFasta1", format="fasta")
## Now yes, save the data of vector misDaticos


write.dna(miPseudoalign,file = "miFasta2", format="fasta")


## See the structure of vector miPseudoalign

str(miPseudoalign[[1]])
str(miPseudoalign[[2]])
str(miPseudoalign[[2]][1])


## Trying with "as character"

(miPseudoChar<- as.character(misDaticos))


## Extract the position 3 of specie 3

miPseudoChar$U15719[3]


## convert to dataFrame

convertido<-as.data.frame(miPseudoChar)
str(convertido<-as.data.frame(miPseudoChar))


## convert to matrix

convertido2<-as.matrix(miPseudoChar)
str(convertido2<-as.matrix(miPseudoChar))


## For remove the class unlist

str(convertido2<-unlist)


## for extract the first, second and third position of sequences

by1<-seq(1,1045, by= 3)
by2<-seq(2,1045, by=3)
by3<-seq(3,1045,by=3)

gg<-convertido[by1,];convertido[by2,];convertido[by3,]
str(gg)

write.dna(gg,file = "miFasta3", format="fasta" )



## EXTRA
## To make a tree multiphylo

myTMP1<-list()
myTMP1[[1]]<-rtree(10)
myTMP1[[2]]<-rtree(10)
class(myTMP1)
class(myTMP1)<-"multiPhylo"
print.multiPhylo(myTMP1)
plot.multiPhylo(myTMP1)

