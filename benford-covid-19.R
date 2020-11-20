## Load DB Data
library(ggplot2)
library(scales)
library(dplyr)
library(BenfordTests)
##
rm(list=ls())
set.seed(421)
X<-rbenf(n=1000)
X <- as.data.frame(X)
first <- substr(X$X,1,1)
first <- as.data.frame(first)
first_count <- table(first)
first_count <- as.data.frame(first_count)
first_count$per <- first_count$Freq/sum(first_count$Freq)
ggplot(first_count) + geom_col(aes(x=first,y=Freq)) +
  labs(title="Benford's Law: 1000 numbers")
ggplot(first_count) + geom_col(aes(x=first,y=per)) +
  scale_y_continuous(label=percent) +
  labs(title="Benford's Law 1000 numbers")
