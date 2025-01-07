setwd("C:/statistics/R/repositories/BIOL432_A1/BIOL432_A1/")
DataSet<- read.csv("measurements.csv")
library(dplyr)
#Creating a column containing the volume (in mm^3) of specie's limbs based on the limb measurements, using the volume formula for a cylinder as this is fairly simple and biologically accurate shape comparison.
Data2 <- Data1 %>%
  mutate(Volume = pi * (limb_width / 2)^2 * limb_length)
write.csv(Data2, file = "C:/statistics/R/repositories/BIOL432_A1/BIOL432_A1/measurements.csv", row.names = FALSE)
