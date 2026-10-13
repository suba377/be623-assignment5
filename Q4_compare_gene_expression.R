# Question 4: Compare gene expression at different time points

# Creating the data frame
Sample <- paste0("S", 1:12)
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)
circ_df <- data.frame(Sample, Gene, ZT, Expression)

library(dplyr)

# Sorting PER2 expression
per2_sorted <- circ_df %>%
  filter(Gene == "PER2") %>%
  arrange(desc(Expression))

# Displaying PER2 results
print(per2_sorted)

# Sorting BMAL1 expression
bmal1_sorted <- circ_df %>%
  filter(Gene == "BMAL1") %>%
  arrange(desc(Expression))

# Displaying BMAL1 results
print(bmal1_sorted)

# Finding peak time points
per2_peak <- per2_sorted$ZT[1]
bmal1_peak <- bmal1_sorted$ZT[1]

# Calculating peak time difference
peak_difference <- abs(per2_peak - bmal1_peak)

# Displaying peak time results
per2_peak
bmal1_peak
peak_difference
