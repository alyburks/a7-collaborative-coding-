#Creats bar graph based on how much prior coding experience people had before the class
visualization1 <- function(data){
  #Detail about bar graph
  p <- barplot(data,
        xlab = "Interested in Applying to the Informatics Major" ,
        ylab = "Total Responses",
        col = ("blue"),
        main = 'Applying to informatics')
 return(p)
}
  