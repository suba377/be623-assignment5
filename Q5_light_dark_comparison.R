# Question 5: Compare expression under dark and light conditions

# Creating the data frame
Sample <- paste0("S", 1:12)
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)
circ_df <- data.frame(Sample, Gene, ZT, Expression)

library(dplyr)

# Classifying dark and light samples
circ_df2 <- circ_df %>%
  mutate(dark = ZT >= 12)

# Calculating mean expression in dark conditions
circ_df2 %>%
  filter(dark == TRUE) %>%
  group_by(Gene) %>%
  summarise(mean_expression = mean(Expression),
            sample_count = n())

# Calculating mean expression in light conditions
circ_df2 %>%
  filter(dark == FALSE) %>%
  group_by(Gene) %>%
  summarise(mean_expression = mean(Expression),
            sample_count = n())
