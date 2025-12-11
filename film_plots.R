install.packages("librarian")

librarian::shelf(ggplot2)

films <- read.csv("films.csv")
head(films)
colnames(films)

class(films$averageRating)
class(films$titleType)
films$titleType <- factor(films$titleType) # not necessary here
class(films$titleType)

ggplot(films, aes(x = averageRating, fill = titleType)) +
  geom_histogram(bins=30) +
  labs(title="Average rating per type", x="Average Rating", y = "Frequency") +
  facet_grid(cols = vars(titleType))
