# k-mean clustering from material

dataset = read.csv('houseprice.csv')
head(dataset)
dim(dataset)
n = dim(dataset)[1];n
p = dim(dataset)[2];p
colnames(dataset)
dataset_scaled <- scale(dataset)
##########################################
# k-means algorithm
clusters2.dataset =kmeans(dataset_scaled,centers=2,nstart=25)
clusters2.dataset$cluster
clusters2.dataset$withinss
# Using the elbow method to find the optimal number of clusters
#Initialization
SSW <- vector(mode = "numeric", length = 15)

#Variability of all data together (as a single cluster)

SSW[1] <- (n - 1) * sum(apply(dataset_scaled ,2,var)) 

#Variability for each model, varying from 2 to 15 clusters

for (i in 2:15) SSW[i] <- sum(kmeans(dataset_scaled ,centers=i,nstart=25)$withinss)

#Plotting the result
plot(1:15, SSW, type="b", xlab="Number of Clusters", ylab="Sum of squares within groups",pch=19, col="steelblue4")

#We choose 4 as the ideal number of clusters. 5 and 6 clusters seem to be also good solutions. 

######################################
# k-means 
clusters4.dataset <- kmeans(dataset_scaled, 4, nstart = 25)
#Next we calculate the centroids:
centroides=aggregate(dataset_scaled,by=list(clusters4.dataset  $cluster),FUN=mean) 
t(centroides)  
################################################
#Next we will represent the clusters. First using scatter plots:
  
nk=4 # nk es el numero de clusters 
pairs(dataset_scaled,col= clusters4.dataset$cluster,pch=19)
points(clusters4.dataset$centers, col = 1:nk, pch = 19, cex=2)
#####################################################
#Another solution is to first reduce data dimensión using PCA and then to plot the 2 first principal components:
# We store the cluster labels for each country
clusters4 <- clusters4.dataset$cluster
# Vamos a hacer PCA para poder graficar los clusters en 2dimensiones!
library(cluster)
clusplot(dataset_scaled, clusters4, color=TRUE, shade=TRUE, labels=2,lines=0)


