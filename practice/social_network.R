###install.packages("igraph")


#social data analysis
library(igraph)
g <- graph(c(1,2,2,3,3,4,4,1), directed = FALSE, n=7)
plot(g, vertex.color = "green",
     vertex.size = 40,
     edge.color = "red")
g[]

g1 <- graph(c("Amy", "Ram", "Ram", "Li", "Li", "Amy", "Amy", "Li", "Kate", "Li"))

plot(g1, vertex.color = "green",
     vertex.size = 40,
     edge.color = "red")
g1[]

#Network measures
degree(g1, mode = "all")
degree(g1, mode = "in")
degree(g1, mode = "out")

diameter(g1, directed = F, weights = NA)
edge_density(g1, loops=F) 
ecount(g1)/(vcount(g1)*(vcount(g1)-1))

reciprocity(g1)
closeness(g1, mode="all", weights = NA)
betweenness(g1, directed = T, weight=NA)

#reading csv

data <- read.csv(file.choose(), header=T)
