user_input = input("Enter a list of numbers separated by spaces: ")
numbers = [float(x) for x in user_input.split()]
if len(numbers) > 0:
    largest = max(numbers)
    smallest = min(numbers)
    
    print(f"The largest number is: {largest}")
    print(f"The smallest number is: {smallest}")
else:
    print("You didn't enter any numbers!")