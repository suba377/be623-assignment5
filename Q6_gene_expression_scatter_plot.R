# Question 6: Plot gene expression against ZT

# Creating the data frame
Sample <- paste0("S", 1:12)
Gene <- c(rep("PER2", 6), rep("BMAL1", 6))
ZT <- rep(c(0, 4, 8, 12, 16, 20), 2)
Expression <- c(1.8, 3.2, 6.5, 9.4, 7.1, 3.6,
                8.6, 5.9, 2.7, 1.5, 3.4, 6.8)
circ_df <- data.frame(Sample, Gene, ZT, Expression)

library(ggplot2)

# Creating the scatter plot
rhythm_plot <- ggplot(circ_df, aes(x = ZT, y = Expression,
                                   color = Gene)) +
  geom_point(size = 3) +
  scale_color_manual(values = c("PER2" = "blue",
                                "BMAL1" = "red")) +
  labs(title = "Gene Expression Over Time",
       x = "Zeitgeber time (h)",
       y = "Expression",
       color = "Gene") +
  theme_minimal()

# Displaying the plot
print(rhythm_plot)

# Saving the plot
ggsave("rhythm_plot.png", plot = rhythm_plot)
