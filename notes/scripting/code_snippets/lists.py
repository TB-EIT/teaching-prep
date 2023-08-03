# Using lists example

animals = ["cat", "dog", "chicken"]
print(animals[1])

animals[1] = "lizard"
animals.append("elefant")

print(animals.pop())
print(animals)

print("Length of the animals list is: {}".format(len(animals)))

new_animals = animals + ["Wolf", "Tiger"]
print(new_animals)

print([0] * 50)
