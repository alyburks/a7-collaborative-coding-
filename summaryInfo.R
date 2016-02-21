data <- read.csv("https://raw.githubusercontent.com/INFO-498F/a7-survey-data/master/intro_survey_data.csv")

require(dplyr)

#Did this for my own col names (easier to remember)
colnames(data) <- c('Class Standing', 'Will Apply?', 'Typical OS', 'Know Command Line?', 
                    'Familiarity with git for Version Control?', 'Familiarity with Markdown?', 
                    'Familiarity with R language?', 'Programming Experience?', 'Countries Visited?',
                    'Cats or dogs?', 'Seahawks Fan?')

#class_standing_soph <- nrow(data %>% 
                #filter(`Class Standing` == 'Sophomore') %>% 
               # select(`Class Standing`)) 
#41 Sophomores

total_data <-nrow(data) #81 responses to survey.

#This is a function to see how many _____ are in the class. 
Class_standing <- function (data, class) {
  total <- nrow(data %>% 
                 filter(`Class Standing` == class) %>% 
                 select(`Class Standing`))
  return (total)
} 

total_fresh <- Class_standing(data, "Freshman") #15

total_soph <- Class_standing(data, "Sophomore") #41

total_jun <- Class_standing(data, "Junior") #18

total_senior <- Class_standing(data, "Senior") #7

#Function for determining number of applicants planning to _____ apply. 
apply_info <- function (data, info) {
  total <- nrow(data %>% 
                  filter(`Will Apply?` == info) %>% 
                  select(`Will Apply?`))
  return (total)
} 

yes_apply <- apply_info(data, "Yes") #67

no_apply <- apply_info(data, "No") #3

maybe_apply<- apply_info(data, "Maybe") # 9

#Function to determine which OS is being used. 
which_OS <- function (data, info) {
  total <- nrow(data %>% 
                  filter(`Typical OS` == info) %>% 
                  select(`Typical OS`))
  return (total)
} 

mac_users <- which_OS(data, "Mac") #39
windows_users <- which_OS(data, "Windows") #40

#A function to see if a seahawks fan or not.
seahawks <- function (data, info) {
  total <- nrow(data %>% 
                  filter(`Seahawks Fan?` == info) %>% 
                  select(`Seahawks Fan?`))
  return (total)
} 

fan <- seahawks(data, "Yes") #38
FAN <- seahawks(data, "YES!")#29

seahawks_fans <- fan + FAN #67
not_seahawks_fan <- seahawks(data, "No") #14

#The proportion of the sample that ARE Seahawks fans | are NOT fans.
prohawks_class_prop <- round((seahawks_fans/total_data) * 100) #87
nohawks_class_prop <- round((not_seahawks_fan/total_data) * 100) #13(I also could have done 100 - prohawks_class_prop)

r_language <- function(data, info) {
  total<- nrow(data %>% 
                 filter(`Familiarity with R language?` == info) %>%
                 select(`Familiarity with R language?`))
  return (total)
}

info_function <- function(dataset) {
  ret <- list()
  ret$length <- length(dataset)
  # do some more interesting stuff
  return (ret)
}