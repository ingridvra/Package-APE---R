## Finding the way of make a tree step by step
## I know that a tree is a list with edges, nodes and tip labels, so I'll start


tip.labels=c("A","B","C","D","E")
edges=7 
Nnodes=9
## the edges are the relation between the nodes, aren't a number 
## The nodes are only the internal nodes

## the next attemp, was make after read the instruccions of R

branches<- c(6,6,7,7,8,8,9,9,1,2,3,4,7,5,6,8)
edge<- matrix(branches,8,2)
tip.label<-c("A", "B", "C", "D", "E")
Nnode=4


mytree<- list(edge, tip.label, Nnode=4L)
class(mytree)<-"phylo"
str(mytree)
plot(mytree)

#### If you create a list first and assign the elements, use

mySecondTree <- list()
mySecondTree$edge <- matrix(c(6,6,7,7,8,8,9,9,1,2,3,4,7,5,6,8)
              ,8,2)
mySecondTree$Nnode <- 4
mySecondTree$tip.label <- c("A", "B", "C", "D", "E")
class(mySecondTree) <- "phylo"
mySecondTree$edge
mySecondTree
collapse.singles(mySecondTree)
plot(mySecondTree)
