#A vector with a set of 100 species names, randomly selected from a vector of 5 species names.
species_names<- c("Oryctes nasicornis", "Dorcus parallelipipedus", "Protaetia orientalis", "Dynastes hercules", "Chalcosoma atlas")
species_vector <- sample(species_names, size = 100, replace = TRUE)
set.seed(52)
#A vector of 100 values for Limb_width (in mm), randomly selected using a distribution of your choice that makes sense for the width of limbs.
limb_width <- runif(100, min=0, max=0.5)
#A vector of 100 values for Limb_length (in mm), again randomly selected from a distribution of your choosing, but the numbers must make sense.
limb_length <- runif(100, min=0, max=80)
#A vector of 100 values for Observer, randomly selected from a vector of 3 names
observer_names<- c("Chappo", "Jennah", "Mohamed")
Observer<- sample(observer_names, size = 100, replace = TRUE)
#Combine all of the vectors into a data.frame and export to a CSV file.
Data1<- data.frame(Species= species_names, Limb_Length= limb_length, Limb_Width= limb_width, Observer= Observer)
write.csv(Data1, file = "measurements.csv", row.names = FALSE)
