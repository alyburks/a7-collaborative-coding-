dataInfo <- read.csv("https://raw.githubusercontent.com/INFO-498F/a7-survey-data/master/intro_survey_data.csv")

require(dplyr)

#Did this for my own col names (easier to remember)
colnames(dataInfo) <- c('Class Standing', 'Will Apply?', 'Typical OS', 'Know Command Line?', 
                    'Familiarity with git for Version Control?', 'Familiarity with Markdown?', 
                    'Familiarity with R language?', 'Programming Experience?', 'Countries Visited?',
                    'Cats or dogs?', 'Seahawks Fan?')

#class_standing_soph <- nrow(data %>% 
                #filter(`Class Standing` == 'Sophomore') %>% 
               # select(`Class Standing`)) 
#41 Sophomores

total_data <-nrow(dataInfo) #81 responses to survey.

#This is a function to see how many _____ are in the class. 
Class_standing <- function (dataInfo, class) {
  total <- nrow(dataInfo %>% 
                 filter(`Class Standing` == class) %>% 
                 select(`Class Standing`))
  return (total)
} 

total_fresh <- Class_standing(dataInfo, "Freshman") #15

total_soph <- Class_standing(dataInfo, "Sophomore") #41

total_jun <- Class_standing(dataInfo, "Junior") #18

total_senior <- Class_standing(dataInfo, "Senior") #7

Class_standing <- dataInfo  
  #Trying to create a dataframe now...

#Function for determining number of applicants planning to _____ apply. 
apply_info <- function (dataInfo, info) {
  total <- nrow(dataInfo %>% 
                  filter(`Will Apply?` == info) %>% 
                  select(`Will Apply?`))
  return (total)
} 

yes_apply <- apply_info(dataInfo, "Yes") #67

no_apply <- apply_info(dataInfo, "No") #3

maybe_apply<- apply_info(dataInfo, "Maybe") # 9

#Function to determine which OS is being used. 
which_OS <- function (dataInfo, info) {
  total <- nrow(dataInfo %>% 
                  filter(`Typical OS` == info) %>% 
                  select(`Typical OS`))
  return (total)
} 

mac_users <- which_OS(dataInfo, "Mac") #39
windows_users <- which_OS(dataInfo, "Windows") #40

#A function to see if a seahawks fan or not.
seahawks <- function (dataInfo, info) {
  total <- nrow(dataInfo %>% 
                  filter(`Seahawks Fan?` == info) %>% 
                  select(`Seahawks Fan?`))
  return (total)
} 

fan <- seahawks(dataInfo, "Yes") #38
FAN <- seahawks(dataInfo, "YES!")#29

seahawks_fans <- fan + FAN #67
not_seahawks_fan <- seahawks(dataInfo, "No") #14

#The proportion of the sample that ARE Seahawks fans | are NOT fans.
prohawks_class_prop <- round((seahawks_fans/total_data) * 100) #87
nohawks_class_prop <- round((not_seahawks_fan/total_data) * 100) #13(I also could have done 100 - prohawks_class_prop)

#Function for finding out experience with R.
r_language <- function(dataInfo, info) {
  total<- nrow(dataInfo %>% 
                 filter(`Familiarity with R language?` == info) %>%
                 select(`Familiarity with R language?`))
  return (total)
}

some_experience <- r_language(dataInfo, "Have used it a few times") #7 people
no_experience <- r_language(dataInfo, "Never used it") #70
intermediate_experience <- r_language(dataInfo, "Intermediate user") #4 people

# A function that takes in a dataset and returns a list of info about it:
info_function <- function(info) {
  ret <- list()
  ret$class_standing <- (info) 
  # do some more interesting stuff
  return (ret)
}




