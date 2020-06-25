#bring in caetetusdataframe
WLP<-read.csv("C:/Users/micha/Dropbox/Data/Summer2019/CaetetusCollarData.csv")


#load required packages
#library(tidyverse)
#library(lubridate)
#library(lme4)
#library(dplyr)
#library(ggplot2)
#library(popbio)

#reformat data for logistic regressions and plots
WLP$Hour <- WLP$Time3

WLP$sinTime <- sin(2* pi * WLP$Hour / 24)


WLP$cosTime <- cos(2 * pi * WLP$Hour / 24)


WLP$State<- as.logical(WLP$Active.Inactive=="active")


#create subsets with 12 am, 3 am and 6 am data excluded
Day<-subset(WLP, Hour!=21 &Hour!=23 &Hour != 0 &Hour!=1 &Hour != 3 & Hour!=5 &Hour !=6)

