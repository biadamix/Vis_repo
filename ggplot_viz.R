# Packages

library(tidyverse)
library(palmerpenguins)

# View the data
View(penguins)

#simple point plot
ggplot(data = penguins, aes(flipper_length_mm, body_mass_g, colour = species)) +
  geom_point() +
  geom_smooth()

# add more readability
ggplot(data = penguins, aes(flipper_length_mm, body_mass_g, colour = species)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~species) +
  labs(title = "Visualization of Penguins data: Flipper length Vs Body mass",
       x = "Flipper Length (in mm)",
       y = "Boddy Mass (in grams)",
       colour = "Species Type"
  )

# Add caption about data Source
