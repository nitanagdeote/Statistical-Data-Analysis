# K-Means Clustering

# Importing the dataset
dataset = read.csv('houseprice.csv')
head(dataset)
nrow(dataset)
x <- dataset[c(1,7)]

# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(x, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('Cluster of houses'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x, centers = 4,iter.max=100,nstart=10) 
# nstart initial random sets
y_kmeans = kmeans$cluster
##########################

# Visualising the clusters
library(cluster)
clusplot(x,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of houses'),
         xlab = 'Living area',
         ylab = 'Price')

########################################
average_area <- mean(x$Living.Area)
average_price <- mean(x$Price)
