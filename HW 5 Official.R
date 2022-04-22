#question 1
matrix1 <- matrix(c(7, 2, 9, 4, 12, 13), nrow = 2, ncol = 3)
      [,1] [,2] [,3]
[1,]    7    9   12
[2,]    2    4   13
matrix2 <- matrix(c(1, 2, 3, 7, 8, 9, 12, 13, 14, 19, 20, 21), nrow = 3, ncol = 4)
       [,1] [,2] [,3] [,4]
[1,]    1    7   12   19
[2,]    2    8   13   20
[3,]    3    9   14   21
matrix1 %*% matrix2
#resulting matrix 
     [,1] [,2] [,3] [,4]
[1,]   61  229  369  565
[2,]   49  163  258  391
#question 2
data_frame <- data.frame (
  id = c(1, 2, 3, 4, 5),
  name = c("Peter", "Amy", "Ryan", "Gary", "Michelle"),
  salary = c(623.30, 515.20, 611.00, 729.00, 843.25)
  )
data_frame
  id     name salary
1  1    Peter 623.30
2  2      Amy 515.20
3  3     Ryan 611.00
4  4     Gary 729.00
5  5 Michelle 843.25

new_col_df <- cbind(data_frame, dept = c("IT", "stats", "english", "history", "math"))
   id     name salary    dept
1  1    Peter 623.30      IT
2  2      Amy 515.20   stats
3  3     Ryan 611.00 english
4  4     Gary 729.00 history
5  5 Michelle 843.25    math

new_col_df[c(1, 3, 5), c(2, 3)]
     name salary
1    Peter 623.30
3     Ryan 611.00
5 Michelle 843.25

d = new_col_df[c(1,4,5), ]
barplot(d$salary, names.arg = d$name)

values = c(max(new_col_df$salary), min(new_col_df$salary), median(new_col_df$salary))
labels = c('Max','Min','Median')
colors = c('blue','pink','yellow')
pie(values, labels = labels, main = 'Salary Proportions', col = colors)
legend('topleft', labels, fill = colors)

#question 2
#using imported amazon data like on midterm
ff = read.csv("amazon.csv")
data.frame(ff)
#preprocessing
ff$Total.Charged = as.numeric(sub("\\$", "",ff$Total.Charged))
ff$Subtotal = as.numeric(sub("\\$", "",ff$Subtotal))
ff$Shipping.Charge = as.numeric(sub("\\$", "",ff$Shipping.Charge))
ff$Tax.Before.Promotions = as.numeric(sub("\\$", "",
                                            +                                               ff$Tax.Before.Promotions))
ff$Order.Date <- as.Date(ff$Order.Date , format = "%m/%d/%y")

#summary stats
paste('Max:', max(ff$Total.Charged))
210.99
paste('Min:', min(ff$Total.Charged))
1.04
paste('Median:', median(ff$Total.Charged))
15.95
paste('Mean:', mean(ff$Total.Charged))
30.13

#visualizations
#bar chart
library(ggplot2)
install.packages("lubridate")
library(lubridate)
ff$Month = month(ff$Order.Date)
ggplot(ff, aes(x = Month)) + geom_bar()
+ ggtitle('Monthly Orders')

#pie chart
values = c(sum(ff$Shipping.Charge), sum(ff$Tax.Before.Promotions), 
           +            sum(ff$Total.Charged))
labels = c('Shipping','Tax','Labeled Price')

  colors = c('yellow','green','blue')
pie(values, labels = labels, main = 'Proportion of Total Charged', col = colors)
legend('topleft', labels, fill = colors)

#multi-line comparison
ggplot(ff, aes(x = Order.Date)) +
  geom_line(aes(y=Total.Charged, color="Total")) +
  geom_line(aes(y=Tax.Before.Promotions, color="Tax")) + 
  ggtitle('Total vs Tax')

