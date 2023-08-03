# Using loops example.

example_list = [1, 2, 3, "boat", 4]

for element in example_list:
    print(element)

print(list(range(len(example_list))))

for i in range(len(example_list)):
    print(example_list[i])

example_dict = {"name": "Taras", 5: "egg"}
for key in example_dict:
    print(key, example_dict[key])

example_list = [1, 2, 3, 4]

square_list = [a**2 for a in example_list]
print(square_list)

square_list = []
for element in example_list:
    square_list.append(element**2)
print(square_list)

example_list = [1, 2, 3, "halt", 4]
i = 0
while i < len(example_list) and example_list[i] != "stop" and example_list[i] != "halt" :
    print(example_list[i])
    i += 1
