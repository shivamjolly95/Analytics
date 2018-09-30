#data analysis using dplyr

install.packages(dplyr)
library(dplyr)
dplyr::filter(mtcars , mpg > 25 & am==1 )
?mtcars
filter(mtcars, mpg>25 & am==1)

mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% summarise(n())
mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% count(n())

count(mtcars)

mtcars %>% group_by(am) %>% summarise(mean(mpg))

mtcars %>% group_by(wt, gear) %>% summarise(mean(mpg))




mutate(mtcars, displ_l= disp/61.0237)   #keeps other col
transmute(mtcars, disp_l=disp/61) #shows only one col

