##
library(ggplot2)
library(scales)
library(dplyr)
library(BenfordTests)
##
rm(list=ls())
set.seed(421)as.data.frame(table(first))
X<-rbenf(n=302)
head(X)
##

df <- read.csv("../DATA/us.csv")
first <- substr(df$cases,1,1)
table <-table$Freq/sum(table$Freq)

ggplot(table) + geom_col(aes(x=first,y=Freq))
###
second <- substr(df$cases,1,2)
table2 <-as.data.frame(table(second))
ggplot(table2) + geom_col(aes(x=second,y=Freq))
