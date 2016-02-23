
#This is my mega function.
summary_info <- function(dataInfo) {
  
  require(dplyr)
  
  #Did this for my own col names (easier to remember)
  colnames(dataInfo) <- c('Class Standing', 'Will Apply?', 'Typical OS', 'Know Command Line?', 
                          'Familiarity with git for Version Control?', 'Familiarity with Markdown?', 
                          'Familiarity with R language?', 'Programming Experience?', 'Countries Visited?',
                          'Cats or dogs?', 'Seahawks Fan?')
  
  #making an empty list. 
  ret <- list()
  
  #Function for finding out experience with R language.
  r_language <- function(dataInfo, info) {
    total<- nrow(dataInfo %>% 
                   filter(`Familiarity with R language?` == info) %>%
                   select(`Familiarity with R language?`))
    return (total)
  }
  
  #Function for determining if Seahawks fan
  seahawks <- function (dataInfo, info) {
    total <- nrow(dataInfo %>% 
                    filter(`Seahawks Fan?` == info) %>% 
                    select(`Seahawks Fan?`))
    return (total)
  } 
  
  #Function for application intent
  apply_info <- function (dataInfo, info) {
    total <- nrow(dataInfo %>% 
                    filter(`Will Apply?` == info) %>% 
                    select(`Will Apply?`))
    return (total)
  } 
  
  # Which OS function
  which_OS <- function (dataInfo, info) {
    total <- nrow(dataInfo %>% 
                    filter(`Typical OS` == info) %>% 
                    select(`Typical OS`))
    return (total)
  } 
  
  #Class Standing function
  Class_standing <- function (dataInfo, class) {
    total <- nrow(dataInfo %>% 
                    filter(`Class Standing` == class) %>% 
                    select(`Class Standing`))
    return (total)
  } 
  
  #Below are ALL of my variables represented in the list. 
  
  #Total students variables:
  ret$total_fresh <- Class_standing(dataInfo, "Freshman") #15
  
  ret$total_soph <- Class_standing(dataInfo, "Sophomore") #41
  
  ret$total_jun <- Class_standing(dataInfo, "Junior") #18
  
  ret$total_senior <- Class_standing(dataInfo, "Senior") #7
  
  ret$total_data <-nrow(dataInfo) #81 responses to survey.
  
  #OS Variables:
  ret$mac_users <- which_OS(dataInfo, "Mac") #39
  
  ret$windows_users <- which_OS(dataInfo, "Windows") #40
  
  #Application Intent Variables:
  ret$yes_apply <- apply_info(dataInfo, "Yes") #67
  
  ret$no_apply <- apply_info(dataInfo, "No") #3
  
  ret$maybe_apply<- apply_info(dataInfo, "Maybe") # 9
  
  #Seahawks Variables:  
  ret$seahawks_fan <- (seahawks(dataInfo, "Yes") + seahawks(dataInfo, "YES!"))
  
  ret$not_seahawks_fan <- seahawks(dataInfo, "No") #14
    
  ret$prohawks_class_prop <- round((ret$seahawks_fan/ret$total_data) * 100) #87% pro hawks.
  
  ret$nohawks_class_prop <- 100 - ret$prohawks_class_prop #13% don't support hawks
  
  #Experience with r language variables:
  ret$some_experience <- r_language(dataInfo, "Have used it a few times") #7 people
  
  ret$no_experience <- r_language(dataInfo, "Never used it") #70
  
  ret$intermediate_experience <- r_language(dataInfo, "Intermediate user") #4 people

    #Return the list
    return(ret)
} #closes summary info function (mega function)

