# Packages

library(tidyverse)
library(palmerpenguins)

# View the data
View(penguins)

#simple point plot
ggplot(data = penguins, aes(flipper_length_mm, body_mass_g, colour = species)) +
  geom_point() +
  geom_smooth()

ggsave("flip_len-bod_mas_point_viz.png", dpi = 300)

# add more readability
ggplot(data = penguins, aes(flipper_length_mm, body_mass_g, colour = species)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~species) +
  labs(title = "Visualization of Penguins data: Flipper length Vs Body mass",
       x = "Flipper Length (in mm)",
       y = "Boddy Mass (in grams)",
       colour = "Species Type"
  ) +
  theme_minimal()

ggsave("flip_len-bod_mas_point-facet_viz.png", dpi = 300)


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
  ) +
  theme_minimal()


# Density of Flipper length across species
ggplot(data = penguins, aes(flipper_length_mm, colour = species)) +
  geom_density()

ggplot() +
  geom_density(data = penguins, 
               aes(flipper_length_mm, fill = species), alpha = 0.5) +
  theme_minimal()

ggsave("flip_density_viz.png", dpi = 300)

