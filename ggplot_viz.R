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
ggplot(data = penguins, aes(flipper_length_mm, body_mass_g, colour = species)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~species) +
  labs(title = "Visualization of Palmer Archipelago Penguin Data",
       subtitle = "Flipper length Vs Body mass",
       x = "Flipper Length (in mm)",
       y = "Boddy Mass (in grams)",
       colour = "Species Type",
       caption = "Data: 'Palmerpenguins' R package"
  )

# Density of Flipper length across species
ggplot(data = penguins, aes(flipper_length_mm, colour = species)) +
  geom_density()

ggplot(data = penguins, aes(flipper_length_mm, fill = species)) +
  geom_density()


