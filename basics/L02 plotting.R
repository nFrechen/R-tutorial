#------------- Plotting -------------------

# create some data:
data <- c(30,65,123,53,68,23)

# to plot use the plot function:
plot( data )

# show the help:
help(plot)
# more informations here:
help(plot.default)

# add lines:
plot( data, type="b", )

# or use only lines:
plot( data, type="l")
# see section "type" of the plot help page for more plotting types

# change color:
plot( data, type="l", col="blue")

# add more data:

data2 <- c(40,21,51,100,111,12)
lines(data2, col="green")
help(lines)

# add points:
points(c(2, 4), c(60,80.6), pch=1) 
# "pch" is for the point character
help(points)

# have a look at the "par" help page to get an overview about all the graphical parameters:
help(par)

# add a legend:
legend("topleft", col=c("blue", "green"), lty=1, legend=c("data", "data2"))
help(legend)

# add horizontal lines:
abline(h=60, col="orange", lty=2) 
# "lty" is for line type
help(abline)

# add vertical lines:
abline(v=3:5, col="brown", lty=3)

# add line with y-axis intercept and slope:
abline(a=40, b=1.5, col="purple", lty=4)

# adding titles to the plot:
title(main="Main title")
help(title)

# you can add titles directly when plotting:
plot( data, ylab="values", xlab="index of data", main="Main title")

# if you want to learn more about plotting:
help(box) # define the box around the plot
help(grid) # adds a rectangular grid to an existing plot
help(axis) # add custom axis
help(pretty) # to dynamically define axis breakpoints
help(rect) # drqw rectangles
help(polygon) # draw polygons
help(layout) # arrange multiple plots on one page
help(hist) # draw a histogram
help(boxplot) # drqw a boxplot

