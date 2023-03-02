library(scales)
library(ggplot2)
library(plotly)

chart_2 <- f_scott %>% filter(MaterialType %in% c("BOOK", "EBOOK", "AUDIOBOOK", "VIDEODISC", "MOVIE")) %>% group_by (CheckoutMonth, MaterialType) %>% summarise(total_checkouts = sum(Checkouts))

line_plot_2 <- ggplot(data = chart_2) +
  geom_line(aes(x = CheckoutMonth,
                y = total_checkouts,
                color = MaterialType
  )) +
  labs(title = "Trends of Material Type ",
       x = "Months of Checkout",
       y = "Quantity of Checkout",
       color = "Material Type")

ggplotly(line_plot_2, tooltip = "text")
