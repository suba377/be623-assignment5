# Question 2: Calculate summary statistics for PER2

# Creating the data frame
Sample <- paste0("S", 1:12)
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)
circ_df <- data.frame(Sample, Gene, ZT, Expression)

# Selecting PER2 samples
per2_rows <- circ_df[circ_df$Gene == "PER2", ]

# Calculating the mean
round(mean(per2_rows$Expression), 2)

# Calculating the median
round(median(per2_rows$Expression), 2)

# Calculating the standard deviation
round(sd(per2_rows$Expression), 2)

