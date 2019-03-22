setwd("C:/Users/Joanna/Dropbox/Wellbeing/Stata Tables")

library(tidyverse)
library(gridExtra)

data = read.csv("wellbeing_predictedmeans.csv")

data <- data %>% 
  gather(Emotion, Value, -DOL, -Gender)

data$DOL    <- ordered(data$DOL,   levels = c("Other arrangement",  "Neither employed", "Woman full-time &\nMan part-time", 
                                              "Woman breadwinner &\nMan homemaker",   "Dual-earners ", "Man full-time &\nWoman part-time", 
                                              "Man breadwinner &\nWoman homemaker"))

data$Gender <- ordered(data$Gender,   levels = c(" Women", " Men"))

data$Emotion <- as_factor(data$Emotion)
levels(data$Emotion)[levels(data$Emotion)=="Happy"]   <- "Happy\n"
levels(data$Emotion)[levels(data$Emotion)=="Meaning"] <- "Meaning\n"
levels(data$Emotion)[levels(data$Emotion)=="Fatigue"] <- "Fatigue\n"
levels(data$Emotion)[levels(data$Emotion)=="Stress"]  <- "Stress\n"
levels(data$Emotion)[levels(data$Emotion)=="Sadness"] <- "Sadness\n"

data$Emotion <- ordered(data$Emotion,   levels = c("Happy\n", "Meaning\n", "Fatigue\n", "Stress\n", "Sadness\n"))

p1 <- data %>%
  filter(Emotion == "Happy\n" | Emotion == "Meaning\n") %>%
  ggplot(aes(DOL, Value, fill = Gender, label = round(Value, 1))) +
  geom_point(size = 9, shape=21, alpha = 0.9) +
  facet_grid(. ~ Emotion) +
  coord_flip() +
  geom_text(check_overlap = TRUE, color = "white") +
  theme_minimal() +
  theme(axis.text.x      = element_text(vjust = 0.5, hjust=1, size = 18),
        strip.text.x     = element_text(face = "bold", size = 28),
        axis.title       = element_text(size = 16), 
        axis.text        = element_text(face = "bold", size = 20), 
        plot.margin      = unit(c(1,1,1,1),"cm"),
        legend.position  = "none",
        axis.line        = element_line(size = 4, colour = "white"),
        panel.spacing=unit(.5, "lines"),
        panel.grid.major = element_line(colour="grey90", size=9),
        panel.grid.major.x = element_blank(),
        panel.border = element_blank()) +
  labs(x = " ", y = "\n", fill = "") +
  scale_fill_manual(values=c("#6a5281", "#c34f4f")) +
  scale_y_continuous(limits = c(3, 5), breaks = NULL)


p2 <- data %>%
  filter(Emotion == "Fatigue\n") %>%
  ggplot(aes(DOL, Value, fill = Gender, label = round(Value, 1))) +
  geom_point(size = 9, shape=21, alpha = 0.9) +
  facet_grid(. ~ Emotion) +
  coord_flip() +
  geom_text(check_overlap = TRUE, color = "white") +
  theme_minimal() +
  theme(axis.text.x      = element_text(vjust = 0.5, hjust=1, size = 18),
        axis.text.y      = element_blank(),
        strip.text.x     = element_text(face = "bold", size = 28),
        axis.title       = element_text(size = 16), 
        axis.text        = element_text(face = "bold", size = 20), 
        plot.margin      = unit(c(1,1,1,1),"cm"),
        legend.position  = "none",
        axis.line        = element_line(size = 4, colour = "white"),
        panel.spacing=unit(.5, "lines"),
        panel.grid.major = element_line(colour="grey90", size=9),
        panel.grid.major.x = element_blank(),
        panel.border = element_blank()) +
  labs(x = " ", y = "\n", fill = "") +
  scale_fill_manual(values=c("#6a5281", "#c34f4f")) +
  scale_y_continuous(limits = c(1, 3), breaks = NULL)

p3 <- data %>%
  filter(Emotion == "Stress\n" |Emotion == "Sadness\n") %>%
  ggplot(aes(DOL, Value, fill = Gender, label = round(Value, 1))) +
  geom_point(size = 9, shape=21, alpha = 0.9) +
  facet_grid(. ~ Emotion) +
  coord_flip() +
  geom_text(check_overlap = TRUE, color = "white") +
  theme_minimal() +
  theme(axis.text.x      = element_text(vjust = 0.5, hjust=1, size = 18),
        axis.text.y      = element_blank(),
        strip.text.x     = element_text(face = "bold", size = 28),
        axis.title       = element_text(size = 16), 
        axis.text        = element_text(face = "bold", size = 20), 
        plot.margin      = unit(c(1,1,1,1),"cm"),
        legend.position  = "none",
        axis.line        = element_line(size = 4, colour = "white"),
        panel.spacing=unit(.5, "lines"),
        panel.grid.major = element_line(colour="grey90", size=9),
        panel.grid.major.x = element_blank(),
        panel.border = element_blank()) +
  labs(x = " ", y = "\n", fill = "") +
  scale_fill_manual(values=c("#6a5281", "#c34f4f")) +
  scale_y_continuous(limits = c(0, 2), breaks = NULL)

grid.arrange(p1, p2, p3, ncol = 3, widths = c(2.5, 1, 1.5))


## Alternate plot
data %>%
  ggplot(aes(DOL, Value, fill = Gender, label = round(Value, 1))) +
  geom_col(width = 0.8, position = position_dodge(width = 0.9)) +
  geom_text(position = position_dodge(width = .9),
            vjust = 2, size = 2.5, color = "white") +
  facet_grid(~ Emotion) +
  theme_minimal() +
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
        strip.text.x  = element_text(face = "bold"),
        axis.text.y=element_blank(),
        plot.margin=unit(c(1,1,1.5,1.5),"cm"),
        legend.position = c(0.9, 0.9)) +
  labs(x = " ", y = "Average Affect Rating", fill = "") +
  scale_fill_manual(values=c("#948392", "#849483"))