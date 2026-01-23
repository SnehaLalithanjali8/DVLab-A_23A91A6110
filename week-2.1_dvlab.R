# Load Dataset
data("iris")

# Inspect the Data
?iris
head(iris, 3)
str(iris)
class(iris)

# very Basic Bar Chart
# Count Of Each Species
# To see the Data in the column "Species"
iris$Species
View(iris)

# plot iris
# plotting a bar chart
barplot(
  table(iris$Species)
)

# labeled bar chart
barplot(
  table(iris$Species),
  main = "count of Iris Species",
  xlab = "Species",
  ylab = "Number of Items",
  col = "steelblue"
)

# Add title, axis label and color
# Bar chart from Aggregate Data
# Using Mean Sepal length per species
mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)
mean_sepal

barplot(
  mean_sepal,
  col = "orange",
  main = "Average Sepal Length By Species",
  xlab = "Species",
  ylab = "Mean Sepal Length"
)

# grouped bar chart
# compare sepal and petal Length (Mean)
group_means <- rbind(
  sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  petal = tapply(iris$Petal.Length, iris$Species, mean)
)
group_means

# Grouped (Clustered) Bar Chart
barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Clustered Bar Chart: Sepal Vs Petal Length"
)

# Grouped (Stacked) Bar Chart
barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Stacked Bar Chart: Sepal Vs Petal Length"
)

