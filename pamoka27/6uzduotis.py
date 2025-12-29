def find_index(my_list, target):
    if target in my_list:
        return my_list.index(target)
    return -1

items = [10, 20, 30, 40, 50]
print(find_index(items, 30))
print(find_index(items, 99)) 
print(find_index(items, 10))
