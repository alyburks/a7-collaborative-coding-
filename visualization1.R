#Creates visualization 1 
library(plotly)

visualization1 <- function(data){
  p <- plot_ly(data,
    x = Amount&Of&People,
    y = c(20, 14, 23),
    name = "Level of Coding",
    type = "bar",
    filename="r-docs/simple-bar"
  )
  
}