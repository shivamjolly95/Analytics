# library
install.packages("wordcloud2")
library(wordcloud2) 

# have a look to the example dataset
head(demoFreq)

wordcloud2(demoFreq, size=1.6)
wordcloud2(demoFreq, size=1.6, color='random-dark')

# or a vector of colors. vector must be same length than input data
wordcloud2(demoFreq, size=1.6, color=rep_len( c("green","blue"), nrow(demoFreq) ) )

# Change the background color
wordcloud2(demoFreq, size=1.6, color='random-light', backgroundColor="black")

Change the shape:
  wordcloud2(demoFreq, size = 0.7,color='random-light' shape = 'cardioid')

# Change the shape using your image
wordcloud2(demoFreq, figPath = "peace.png", size = 1.5, color = "skyblue", backgroundColor="black")
?wordcloud2
           
#http://www.sthda.com/english/wiki/text-mining-and-word-cloud-fundamentals-in-r-5-simple-steps-you-should-know        
           
                      