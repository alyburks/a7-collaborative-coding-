#Creates visualization 1 
library(plotly)

visualization1 <- function(data){

# Create graph
p = plot_ly(data, 
         x = AmountOfPeople,
        y = c("No experience", "Coded alittle", "Not and Coding"),
        name = "Level of Coding",
        type = "bar",
        filename="r-docs/simple-bar
) %>%
  layout(title = 'Crowdsourced Police Shootings', geo = g)
 return (p)
  
}
