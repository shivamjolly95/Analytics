

(grades = sample(c(letters[1:4]), size=30, replace=T, prob=c(.4,.2,.3,.1)))
summary(grades)
(gradesF = factor(grades))
summary(gradesF)
table(grades)
table(gradesF)
class(gradesF)
(gradesF0 = factor(grades, ordered=T))
(gradesF01= factor(grades, ordered=T, levels=c('a','b','c','d')))
summary(gradesF01)

(marks= ceiling(rnorm(30, mean=60, sd=5)))
(gender=factor(sample(c('M','F'), size=30, replace=T)))
(student1 = data.frame(marks,gender,  gradesF01))
boxplot(marks~ gradesF01+ gender, data=student1)

boxplot(marks)
summary(marks)
abline(h=summary(marks))
quantile(marks)