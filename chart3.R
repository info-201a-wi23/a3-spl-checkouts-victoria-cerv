library(scales)
library(ggplot2)
library(plotly)

bar_plot <- ggplot(data = f_scott) +
  geom_col(mapping = aes(
    x = MaterialType,
    y= Checkouts,
    fill = MaterialType,
    text = paste("Medium:", MaterialType))
  ) 
ggplotly(bar_plot, tooltip = "text")
