library(shiny)

# Define server logic required to generate and plot a normal distribution plot 

shinyServer(function(input, output) {

  # Expression that generates a plot of the distribution. The expression
  # is wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically 
  #     re-executed when inputs change
  #  2) Its output type is a plot 
  #
 
 output$distPlot <- renderPlot({

    # building 3 sets of Normal Distribution curves using 2 variable parameters

s1 <- input$s1
m1 <- input$m1

s2 <- input$s2
m2 <- input$m2

s3 <- input$s3
m3 <- input$m3

mmin <- min(m1, m2, m3)
mmax <- max(m1, m2, m3)

   # generating densities 

x <- seq(mmin-15, mmax+15, length=1000)

y1   <- dnorm(x, mean=m1, sd=s1)
y2   <- dnorm(x, mean=m2, sd=s2)
y3   <- dnorm(x, mean=m3, sd=s3)

   # generating cumulative and random draws 

cumulative<-pnorm(x, m1, s1)
randomdeviates<-rnorm(1000, m1, s1)

   # placing 9 curves on 1 chart 

par(mfrow=c(3,3), mar=c(3,4,4,2))

plot(x, y1, col="red",xlab="", ylab="Density", type="l",lwd=2, cex=2, main="PDF of Standard Normal", cex.axis=.8)

plot(x, cumulative, col="orange", xlab="", ylab="Cumulative Probability",type="l",lwd=2, cex=2, main="CDF of Standard Normal", cex.axis=.8)

hist(randomdeviates, col="yellow", main="Random draws from Std Normal", cex.axis=.8, xlim=c(mmin-10,mmax+10))

cumulative2<-pnorm(x, m2, s2)
randomdeviates2<-rnorm(1000, m2, s2)

plot(x, y2, col="blue",xlab="", ylab="Density", type="l",lwd=2, cex=2, main="PDF of Standard Normal", cex.axis=.8)

plot(x, cumulative2, col="violet", xlab="", ylab="Cumulative Probability",type="l",lwd=2, cex=2, main="CDF of Standard Normal", cex.axis=.8)

hist(randomdeviates2, col="lightblue", main="Random draws from Std Normal", cex.axis=.8, xlim=c(mmin-10,mmax+10))

cumulative3<-pnorm(x, m3, s3)
randomdeviates3<-rnorm(1000, m3, s3)

plot(x, y3, col="green",xlab="", ylab="Density", type="l",lwd=2, cex=2, main="PDF of Standard Normal", cex.axis=.8)

plot(x, cumulative3, col="darkgreen", xlab="", ylab="Cumulative Probability",type="l",lwd=2, cex=2, main="CDF of Standard Normal", cex.axis=.8)

hist(randomdeviates3, col="lightgreen", main="Random draws from Std Normal", cex.axis=.8, xlim=c(mmin-10,mmax+10))

  })
})
