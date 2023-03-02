#Loading the Data and Necessary Library 
book_data <- read.csv("~/Desktop/info201/Checkouts_by_Title.csv", stringsAsFactors = FALSE)
library("dplyr")
library("tidyverse")
library("stringr")

#Pulling out F. Scott Fitzgerald 
f_scott <- book_data %>% filter(str_detect(book_data$Creator, "F. Scott"))

#Avg Number of Checkouts for "The Great Gatsby" 
avg_num_of_checkouts <- f_scott %>% filter(Checkouts == mean(Checkouts, na.rm = TRUE)) %>% pull(Checkouts)

#Month and Year with Most/Least Checkouts 
checkouts_max_yr <- f_scott %>% filter(Checkouts == max(Checkouts, na.rm = TRUE)) %>% pull(CheckoutYear)
checkouts_max_yr = 2013

checkouts_min_yr <- f_scott %>% filter(Checkouts == min(Checkouts, na.rm = TRUE)) %>% pull(CheckoutYear)
checkouts_min_yr = 2022

#Month and Year with Most/Least Checkouts for Ebooks 
echeckouts_max_yr <- f_scott %>% filter(MaterialType == "EBOOK") %>% filter(Checkouts == max(Checkouts, na.rm = TRUE)) %>% pull(CheckoutYear)
checkouts_max_yr = 2023 

echeckouts_min_yr <- f_scott %>% filter(MaterialType == "EBOOK") %>% filter(Checkouts == min(Checkouts, na.rm = TRUE)) %>% pull(CheckoutYear)
echeckouts_min_yr = 2022

