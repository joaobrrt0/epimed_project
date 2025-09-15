load("cleaned_data.RData")

risk_factors_model <- glm(
  DEATH ~ Age + Gender + UnitLengthStay + HighestHeartRate +
    Temperature + ArterialPressure + IsDiabetesComplicated +
    IsArterialHypertension,
  data = data,
  family = "binomial"
)

print("Model Summary")
print(summary(risk_factors_model))

odds_ratios <-exp(coef(risk_factors_model))

print("Model Interpretation (Odd Ratios)")
if (!is.na(odds_ratios["Age"])){
  print(paste0(
    "Age: For each additional year of a patient's age, the odds of dying increase by",
    round((odds_ratios["Age"]- 1)* 100), "%."
  ))
}

if (!is.na(odds_ratios["HighestHeartRate"])){
  print(paste0(
    "Heart Rate: For each 1 bpm increase in highest heart rate, the odds of dying increase by ",
    round((odds_ratios["HighestHeartRate"]-1)*100),"%."
  ))
}