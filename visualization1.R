#Creates visualization 1 
library(plotly)


#Creats bar graph based on how much prior coding experience people had before the class
visualization1 <- function(data){
  #Detail about bar graph
  p <- plot_ly(data,
        x = `What is your programming experience?` ,
        y = `Amount of Students`, 
        type = "bar", 
        marker = list(color = toRGB("blue3"))) %>% 
      #Layouts the bar graph
      layout(title = 'Coding before INFO498') 
  return(p)
}
