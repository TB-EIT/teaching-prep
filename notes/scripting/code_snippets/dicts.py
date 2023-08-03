# Example of using dictionaries/associative array/maps/etc
person_dict = {"name": "Taras", "age": 80}

print(person_dict)
print(person_dict["age"])

person_dict["eye_color"] = "blue"
print(person_dict)

print(len(person_dict))

if "height" not in person_dict:
    print("Don't know {} height".format(person_dict["name"]))
