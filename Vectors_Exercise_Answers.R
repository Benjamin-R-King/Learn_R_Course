# Make the original animal_vector
animal_vector = c("Human", "Mouse","Fly","Worm")

# (1) Write a line of R code that will return the 4th element in animal_vector
animal_vector[4]

# (2) Write a line of R code that will return the first 3 elements of animal_vector
animal_vector[1:3]
# or
animal_vector[c(1,2,3)]

# (3) Write a line of R codes that will return elements 2 and 4 of animal_vector
animal_vector[c(2,4)]

# (4) Uh oh, You realized you forgot that "Panda", and "Maple" should be in your vector animal_vector
animal_vector = c(animal_vector,"Panda", "Maple")
# You can double check it worked with print
print(animal_vector)

# (5) Calculate (using a function) how many species are in your vector
length(animal_vector)

# (6) Uh oh, you realize that the last element is a plant. Please remove it
animal_vector = animal_vector[-6]
# or
animal_vector = animal_vector[1:5]
# or
animal_vector = animal_vector[c(1,2,3,4,5)]

# (7) How many elements are in your vector now?
length(animal_vector)

# (8) Please make two new vectors one called vertebrate_vector containing the vertebrate species and one called invertebrate_vector containing the invertebrate species (** Accomplish this using what you have learned about indices)
vertebrate_vector = animal_vector[c(1,2,5)]

invertebrate_vector = animal_vector[c(3,4)]
# or
invertebrate_vector = animal_vector[3:4]