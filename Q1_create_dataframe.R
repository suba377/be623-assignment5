# Question 1: Create a data frame and check its structure

# Assigning sample names
Sample <- paste0("S", 1:12)

# Assigning gene names
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))

# Repeating ZT values for both genes
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)

# Storing expression values
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)

# Creating the data frame
circ_df <- data.frame(Sample, Gene, ZT, Expression)

# Checking the data frame structure
str(circ_df)

