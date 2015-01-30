getwd()
setwd("C:/Users/ahall/Documents/GitHub/ExplorationsWithR")
reddit <- read.csv('reddit.csv')
table(reddit$employment.status)
'''
                   Employed full time                             Freelance 
                                14814                                  1948 
Not employed and not looking for work    Not employed, but looking for work 
                                  682                                  2087 
                              Retired                               Student 
                                   85                                 12987'

levels(reddit$age.range)
'''
[1] "18-24"       "25-34"       "35-44"       "45-54"       "55-64"       "65 or Above" "Under 18" 
'

levels(reddit$employment.status)
'''
[1] "Employed full time"                    "Freelance"                            
[3] "Not employed and not looking for work" "Not employed, but looking for work"   
[5] "Retired"                               "Student"           
'

'''
installing better graphic package
'
install.packages('ggplot2', dependencies = T) 
library(ggplot2)


qplot(data=reddit, x= age.range)
'''
The graph does not order the factors in the x-axis
'

# Let try to order them

qplot(data=reddit, x= ordered(age.range,level=c("Under 18","18-24","25-34","35-44","45-54","55-64","65 or Above")))


