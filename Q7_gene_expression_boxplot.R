# Question 7: Create a box plot

# Creating the data frame
Sample <- paste0("S", 1:12)
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)
circ_df <- data.frame(Sample, Gene, ZT, Expression)

library(ggplot2)

# Creating the box plot
expression_boxplot <- ggplot(circ_df,
                             aes(x = Gene, y = Expression,
                                 fill = Gene)) +
  geom_boxplot() +
  scale_fill_manual(values = c("PER2" = "blue",
                               "BMAL1" = "red")) +
  labs(title = "Gene Expression by Gene",
       x = "Gene",
       y = "Expression") +
  theme_minimal()

# Displaying the box plot
print(expression_boxplot)

# Saving the plot
ggsave("expression_boxplot.png", plot = expression_boxplot)# Question 7: Create a box plot

# Creating the data frame
Sample <- paste0("S", 1:12)
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)
circ_df <- data.frame(Sample, Gene, ZT, Expression)

library(ggplot2)

# Creating the box plot
expression_boxplot <- ggplot(circ_df,
                             aes(x = Gene, y = Expression,
                                 fill = Gene)) +
  geom_boxplot() +
  scale_fill_manual(values = c("PER2" = "blue",
                               "BMAL1" = "red")) +
  labs(title = "Gene Expression by Gene",
       x = "Gene",
       y = "Expression") +
  theme_minimal()

# Displaying the box plot
print(expression_boxplot)

# Saving the plot
ggsave("expression_boxplot.png", plot = expression_boxplot)
