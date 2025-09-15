load("dataset.RData")

names(data)

data$DEATH <- ifelse(data$UnitDischargeCode == "D", 1, 0)

data$DEATH_factor <- factor(data$DEATH,
                            levels = c(0,1),
                            labels = c("Survived","Died"))

data$Age <- as.numeric(as.character(data$Age))
data$UnitLengthStay <- as.numeric(as.character(data$UnitLengthStay))
data$Temperature <- as.numeric(as.character(data$Temperature))
data$ArterialPressure <- as.numeric(as.character(data$ArterialPressure))


data$Gender <- as.factor(data$Gender)
data$IsDiabetesComplicated <- as.factor(data$IsDiabetesComplicated)
data$IsArterialHypertension <- as.factor(data$IsArterialHypertension)

save(data, file = "cleaned_data.RData")