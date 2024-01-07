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

#data <- read.csv(file.choose(), header=T) #вибрати файл вручну
data <- read.csv("./networkdata.csv", header=T)
y <- data.frame(data$first, data$second)

#create graph
net <- graph.data.frame(y, directed = T)
V(net)
E(net)
V(net)$label <- V(net)$name
V(net)$degree <- degree(net)

V(net)$label
V(net)$degree

hist(V(net)$degree,
     col="green",
     main = "Histogram of node degree",
     yLab = "Frequency",
     xlab = "Degree of Vertices"
)

set.seed(222)
plot(net,
     vertex.color = 'green',
     vertex.size = 2,
     edge.arrow.size = 0.1,
     vertex.label.cex = 0.8)
     