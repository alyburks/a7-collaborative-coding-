#Creates visualization 1 
library(plotly)

visualization1 <- function(data){
  p <- plot_ly(data,
        x = `What is your programming experience?` ,
        y = `Amount of Students`, 
        type = "bar", 
        marker = list(color = toRGB("blue3"))) %>% 
      layout(title = 'Coding before INFO498',) 
  return(p)
}
