library(scales)
library(ggplot2)
library(plotly)

line_plot <- ggplot(f_scott) +
  geom_line(aes(x = as.Date(Date),
                y = ,
                color = Name,
                text = paste("Monthly Checkouts: ", monthly_checkouts ))) +
  labs(title = "Monthly Checkouts of Jane Austen Novels",
       x = "Date",
       y = "Total Checkouts",
       color = "Title")

ggplotly(line_plot, tooltip = "text")
