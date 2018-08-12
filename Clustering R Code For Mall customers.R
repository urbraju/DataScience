# K-Means Clustering

# Importing the dataset
# install.packages('readr')
library(readr)
dataset <- read_csv("Mall_Customers.csv")

# Select col 4 & 5
dataset = dataset[4:5]
dataset

# Splitting the dataset into the Training set and Test set
# install.packages('caTools') - Machine Learning package
library(caTools)

# Setting a starting point - can be any random starting point 
set.seed(123)
split = sample.split(dataset, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Using the elbow method to find the optimal number of clusters
set.seed(6)

# wcss - within center sum of squares algoritm
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 10)
kmeans$size
y_kmeans = kmeans$cluster

# Visualising the clusters
library(cluster)
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')

nrow(dataset)
