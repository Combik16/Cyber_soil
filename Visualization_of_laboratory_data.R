data <- data.frame(
  parameter1 = c("a, b, c"),
  parameter2 = c("1, 2, 3"),
  parameter3 = c("4, 5, 6")
)

colors <- c(a = "green", b = "blue", c ="grey")


ggplot(data, aes(x = parameter2, y = parameter3, color = parameter1)) + 
  geom_path(size = 1) +  # Connecting points according to their sequence
  geom_point(size = 3) +                                # Points
  scale_color_manual(values = colors) +                 # Colors of lines
  labs(title = "", x = "", y = "") + 
  theme_minimal() +                                     # Any style you want
  scale_x_continuous(limits = c(2, 8), breaks = seq(2, 8, by = 1), position = "top") + # Extended X-axis
  scale_y_reverse(limits = c(35, 0), breaks = seq(0, 35, by = 5)) + # Inversion of the Y-axis + artificial axis boundaries
  theme(axis.title.x = element_text(vjust = -0.5),     # X-axis position
        axis.title.y = element_text(vjust = 0.5),
        axis.text.x = element_text(vjust = 1)) +       # X-axis text position
  coord_fixed(ratio = 1/2)                              # Fixed axis ratio (1/5 recommended)

