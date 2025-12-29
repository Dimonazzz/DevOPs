def sort_by_length(strings):
    return sorted(strings, key=len)

fruits = ["apple", "kiwi", "banana", "cherry", "fig", "blueberry"]
print(sort_by_length(fruits))