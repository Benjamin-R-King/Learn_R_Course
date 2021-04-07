# The ebook "R Graphics Cookbook, 2nd edition" is freely available online and is an excellent resource
# https://r-graphics.org/
# A ton of code examples to make any type of graph you can imagine plus customize its appearance are thoroughly explained
# There is great example code and example datasets too.


# Establish a connection with CRAN, online R package repository. Download the package to your local computer
# Sometimes you will need to follow some instructions that will display in the console
# You only need to run this line once
install.packages("ggplot2")

# The library function will activate a package in this R session.
# You need to run this line of code everytime you open R studio or restart your R session
library("ggplot2")

# Make sure to download the glioblastoma_rna_seq.csv file from the google drive folder to some place on your machine
# use the read.csv function to read that data into memory. I will save it as the variable "rna"
# Be aware that forward slashes and back slashes are different on mac versus PCs. Make sure that you give the read.csv function
# the file path in the appropriate format
# Here I have shown the path to the file on my Mac
rna <- read.csv("/Users/kingb08/Dropbox/Genspace/Glioblastoma/glioblastoma_rna_seq.csv")

# You can see that the read.csv function imports data as a data frame
class(rna)

# you can explore the data, how many columns and rows
ncol(rna)
nrow(rna)
dim(rna)

# You could look at just the first five columns and rows of the data frame to get an idea of how it is structured
# You'll see the first column is called "Patient_ID", the second is "subtype", and the remaining columns are gene names
rna[1:5,1:5]

# for ggplot, you build figures layer by layer
# running ggplot() with no arguments just makes a blank panel
ggplot()

# To get something meaningful you need to give it the name of the data frame. Tell it what data (columns) to map to which aesthetics.
# Aesthetics could be things like x or y axis coordinates, it could be how dark to color something, how big a slice of a pie chart, etc. etc. etc
# The aesthetics that you need to map will depend on the type of graph you are making
# The last thing you need is to decide what kind of graph you want to make and tell it with  geom_
# In this case, our data frame = rna, we want to make a box plot so we use geom_boxplot(). A boxplot requires an x axis and a y axis
# we are setting our subtype column to the x and the expression of a gene of interest (in this case EGFR) to the y axis
ggplot(rna, aes(x=subtype, y=EGFR)) + geom_boxplot()

# I don't like that the boxes are are white, so let's add color, so that each subtype has a different color box
# To do this we need to map the fill aesthetic to the subtype column.
ggplot(rna, aes(x=subtype, y=EGFR, fill=subtype)) + geom_boxplot()

# I don't like the default appearance of ggplot graphs (for example, the gray background).
# You can easily modify the appearance of graphs by choosing different preconfigured themes. Here I have chose the black and white theme called theme_bw()
ggplot(rna, aes(x=subtype, y=EGFR, fill=subtype)) + geom_boxplot() +theme_bw()

# You can easily change axes. Here I have made a log y axis
ggplot(rna, aes(x=subtype, y=EGFR, fill=subtype)) + geom_boxplot() + scale_y_log10() +theme_bw()

# Don't forget there are tons of different ways to visualize your data. Maybe you think a violin plot does a better job of visualizing the data distributions
ggplot(rna, aes(x=subtype, y=EGFR)) + geom_violin()
