library(scales)
library(ggplot2)
library(plotly)
library("stringr")

the_great_gatsby <- f_scott %>% filter(str_detect(f_scott$Title, "The Great Gatsby"))

line_plot <- ggplot(data = the_great_gatsby) +
  geom_line(aes(x = CheckoutMonth,
                y = Checkouts,
                color = Title
                )) +
  labs(title = "The Great Gatsby Total # of Checkouts",
       x = "Months in a Year",
       y = "Total # of Checkouts",
       color = "Different Versions of The Great Gatsby")

ggplotly(line_plot, tooltip = "text")
