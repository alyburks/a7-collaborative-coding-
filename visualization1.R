#Creates visualization 1 
library(plotly)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/INFO-498F/a7-survey-data/master/intro_survey_data.csv")
data_info <- filter(data, What.is.your.current.class.standing. == 'Sophomore')
students <- nrow(data)
#Creats bar graph based on how much prior coding experience people had before the class
visualization1 <- function(data){
  #Detail about bar graph
  p <- plot_ly(data,
        x = Are.you.interested.in.applying.to.the.Informatics.major. ,
        y = students ,
        type = "bar", 
        marker = list(color = toRGB("blue3"))) %>% 
      #Layouts the bar graph
      layout(title = 'Coding before INFO498')
 return(p)
}
  
  
visualization1(data)


