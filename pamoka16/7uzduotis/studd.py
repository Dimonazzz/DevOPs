import json

with open("stud.json", "r") as file:
    data = json.load(file)


data["age"] = 22
data["nieko2"] = "extra2"
data.pop("nieko", None)

with open("stud.json", "w") as file:
    json.dump(data, file, indent=4)