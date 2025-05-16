# Load required libraries
library(dplyr)
library(ggplot2)
library(car)

# Load the dataset
mall_data <- Mall_Customers

# Convert Age into categories for analysis
mall_data$AgeCategory <- cut(mall_data$Age,
                             breaks = c(0, 30, 50, 70),
                             labels = c("Young", "Middle-aged", "Older"))

# Two-Way ANOVA for Gender (α)
anova_gender <- aov(`Spending Score (1-100)` ~ Genre, data = mall_data)
summary(anova_gender)

# Two-Way ANOVA for AgeCategory (β)
anova_age <- aov(`Spending Score (1-100)` ~ AgeCategory, data = mall_data)
summary(anova_age)

# Chi-Square Test of Independence
# Create contingency table for Gender (Genre) and AgeCategory
gender_age_table <- table(mall_data$Genre, mall_data$AgeCategory)

# Perform Chi-Square Test
chisq_test <- chisq.test(gender_age_table)
chisq_test

# Tukey's Post-Hoc Test
# Tukey's Test for Gender (α)
tukey_gender <- TukeyHSD(anova_gender)
tukey_gender

# Tukey's Test for AgeCategory (β)
tukey_age <- TukeyHSD(anova_age)
tukey_age

# Visualizations
# Spending Score by Gender
ggplot(mall_data, aes(x = Genre, y = `Spending Score (1-100)`, fill = Genre)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Spending Score by Gender", x = "Gender", y = "Spending Score")

# Spending Score by Age Category
ggplot(mall_data, aes(x = AgeCategory, y = `Spending Score (1-100)`, fill = AgeCategory)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Spending Score by Age Category", x = "Age Category", y = "Spending Score")

# Histogram for Age
ggplot(mall_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Histogram of Age", x = "Age", y = "Frequency")

# Histogram for Annual Income
ggplot(mall_data, aes(x = `Annual Income (k$)`)) +
  geom_histogram(binwidth = 5, fill = "green", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Histogram of Annual Income", x = "Annual Income (k$)", y = "Frequency")

# Histogram for Spending Score
ggplot(mall_data, aes(x = `Spending Score (1-100)`)) +
  geom_histogram(binwidth = 5, fill = "purple", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Histogram of Spending Score", x = "Spending Score (1-100)", y = "Frequency")

