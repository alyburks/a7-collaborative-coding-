#Sam Tompkins
#INFO 498F - a7 chart

vis2 <- function(data) {
  comm_line_use <- data %>% 
                    group_by(Using.the.command.line...terminal) %>% 
                    summarise(num = n()) %>% 
                    arrange(num)
  comm_line_use$Using.the.command.line...terminal <- c("Some", "Intermediate", "None")
  library(plotly)
  p <- plot_ly(
    x = comm_line_use$num,
    y = comm_line_use$Using.the.command.line...terminal,
    orientation = "h",
    opacity = 0.5,
    marker = list(color = "green"),
    hoverinfo = "x",
    type = "bar"
  )
  layout(p, 
         xaxis = list(title = "Number of Responses"), 
         yaxis = list(title = ""),
         title = "Familiarity with Command Line Operations")
}