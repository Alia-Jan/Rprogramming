# --- Step 1: Load dataset from CSV ---
df <- read.csv("Alia_Rezae_itc255.csv")
View(df)

# --- Step 2: FDT for a Qualitative variable (e.g., Level of Satisfaction) ---
AbsFreq <- table(df$Level.of.Satisfaction)       # Absolute Frequency
RelFreq <- round(prop.table(AbsFreq), 2)         # Relative Frequency
CumFreq <- cumsum(RelFreq)                       # Cumulative Frequency

FDT_satisfaction <- cbind(AbsFreq, RelFreq, CumFreq)
FDT_satisfaction
View(FDT_satisfaction)

# --- Step 3: Histogram and Density for a Quantitative variable (e.g., Weight) ---
hist(df$Weight..kg.,
     col = "skyblue",
     main = "Weight Distribution",
     xlab = "Weight (kg)")

plot(density(df$Weight..kg.),
     col = "#003377",
     main = "Weight Density Distribution",
     xlab = "Weight (kg)")
