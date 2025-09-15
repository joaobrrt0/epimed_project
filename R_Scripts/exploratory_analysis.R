library(dplyr)
library(ggplot2)

load("cleaned_data.RData")

summary_by_outcome <- data %>%
  summarise(
    NumberOfPacients = n(),
    MedianAge = median(Age, na.rm = TRUE),
    MedianHeartRate = median(HighestHeartRate, na.rm = TRUE)
  )

print("Summary by outcome")
print(summary_by_outcome)

age_plot <-ggplot(data, aes(x = DEATH_factor, y = Age, fill = DEATH_factor)) +
  geom_boxplot(alpha = 0.7) +
  scale_y_continuous(breaks = seq(0, 100, by = 10)) + #Fix the Y-axis
  labs(
    title = "Patient Age by Survival Status",
    x = "Outcome",
    Y = "Pacient Age (In years)"
  )+
  theme_light()

print(age_plot)