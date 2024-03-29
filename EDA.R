#EDA

##Install Packages
install.packages('DataExplorer')
install.packages('dplyr')
install.packages('funModeling')
install.packages('ggplot2')
install.packages('GGally')

##Load Library
library(DataExplorer)
library(dplyr)
library(funModeling)
library(ggplot2)
library(GGally)

##Load Dataset
supermarket = read.csv('C:/Users/Personal/Desktop/FYP/Dataset/Clean Data/Clean Dataset v1.1.csv', header = T)

##Data Preview

#find missing value
plot_missing(supermarket)

#data inspection
head(supermarket)
str(supermarket)

##convert selected variables into factor
#a = c('�..Customer.ID', 'Store.ID', 'Product.ID', 'Basket.ID')
#supermarket[a] = lapply(supermarket[a], as.factor)

# Summary of dataset
summary(supermarket)

#boxplot

boxplot(supermarket$Quantity,
        main = toupper("Boxplot of Dataset$Quantity"),
        col = "blue",
        range = 5.5,
        notch = TRUE,
        horizontal = TRUE)

boxplot(supermarket$Product.Sales,
        main = toupper("Boxplot of Dataset$Product.Sales"),
        col = "blue",
        range = 2.5,
        notch = TRUE,
        horizontal = TRUE)

boxplot(supermarket$Transaction.Time,
        main = toupper("Boxplot of Dataset$Transaction.Time"),
        col = "blue",
        range = 2.5,
        notch = TRUE,
        horizontal = TRUE)

boxplot(supermarket$Retail.Discount,
        main = toupper("Boxplot of Dataset$Retail.Discount"),
        col = "blue",
        range = 2.5,
        notch = TRUE,
        horizontal = TRUE)

