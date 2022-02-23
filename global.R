#library(tm)
library(shinythemes)
library(shinyWidgets)
library(DT)

sakha_dict <- read.csv(file = 'www/Sakha-English-dict.csv', sep=",")
dict_POS <- list()