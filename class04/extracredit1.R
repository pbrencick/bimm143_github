source("http://thegrantlab.org/misc/cdc.R") 
head(cdc$height) 
tail(cdc$height) 
tail(help)
plot(cdc$height, cdc$weight)
cor(cdc$height, cdc$weight)
hist(cdc$weight) 
hist(cdc$height) 
height_m <- cdc$height * 0.0254 
weight_kg <- cdc$weight * 0.454
bmi <- weight_kg / (height_m^2)
plot(cdc$height, bmi,
     xlab = "Height (in)",
     ylab = "BMI",
     main = "Height vs BMI")
cor(cdc$height, bmi)
sum(bmi >= 30)
obese <- bmi >= 30
sum(obese)
plot(cdc[1:100, "height"], cdc[1:100, "weight"],
     xlab = "Height (inches)",
     ylab = "Weight (pounds)",
     main = "Height vs Weight (First 100 Respondents)")
obese_gender <- bmi >= 30
table(cdc$gender[obese_gender])

