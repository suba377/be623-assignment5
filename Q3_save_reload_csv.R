# Question 3: Save and reload the data frame

# Creating the data frame
Sample <- paste0("S", 1:12)
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)
circ_df <- data.frame(Sample, Gene, ZT, Expression)

# Saving the data frame
write.csv(circ_df, "circadian_expression.csv", row.names = FALSE)

# Reloading the CSV file
circ_reloaded <- read.csv("circadian_expression.csv")

# Checking expression values
identical(circ_df$Expression, circ_reloaded$Expression)
