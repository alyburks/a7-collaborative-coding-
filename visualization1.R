
#Creats bar graph based on how much prior coding experience people had before the class
visualization1 <- function(data){
  #Detail about bar graph
  p <- barplot(data_info,
        xlab = "Interested in Applying to the Informatics Major" ,
        main = 'Appling to informatics')
 return(p)
}
  



