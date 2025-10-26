# Load ggplot2
if(!require(ggplot2)) install.packages("ggplot2"); library(ggplot2)

# Read your dataset (update the path if necessary)
mydata <- read.csv("C:/Users/asus/Downloads/Alia_Rezae_itc255.csv")

# Check the dataset
head(mydata)
colnames(mydata)



# Scatter plot: Age vs Height
ggplot(mydata, aes(x = Age, y = Height.cm., colour = Gender)) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Age vs Height Colored by Gender",
       x = "Age", y = "Height (cm)")

# Scatter plot: Age vs Height by Sport
ggplot(mydata, aes(x = Age, y = Height.cm., colour = Sport, shape = Gender)) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Age vs Height by Sport and Gender",
       x = "Age", y = "Height (cm)")

# Bar chart: Gender count filled by Sport
ggplot(mydata, aes(x = Gender, fill = Sport)) +
  geom_bar() +
  theme_minimal() +
  labs(title = "Gender and Sport Distribution",
       x = "Gender", y = "Count")

# Bar chart: Level of Satisfaction by Gender
ggplot(mydata, aes(x = Level.of.Satisfaction, fill = Gender)) +
  geom_bar(position = "dodge") +
  theme_minimal() +
  labs(title = "Level of Satisfaction by Gender",
       x = "Level of Satisfaction", y = "Count")

# Scatter plot: Age vs Level of Satisfaction
ggplot(mydata, aes(x = Age, y = Level.of.Satisfaction, colour = Gender)) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Age vs Level of Satisfaction",
       x = "Age", y = "Satisfaction Level")

# Histogram: Age distribution
ggplot(mydata, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black") +
  theme_minimal() +
  labs(title = "Age Distribution", x = "Age", y = "Frequency")

# Bar chart: Sport count
ggplot(mydata, aes(x = Sport)) +
  geom_bar(fill = "darkorange") +
  theme_minimal() +
  labs(title = "Sport Distribution", x = "Sport", y = "Count")
