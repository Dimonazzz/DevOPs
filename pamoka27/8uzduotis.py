def apply(numbers, func):
    return [func(n) for n in numbers]

def square(x):
    return x * x

nums = [0.6, 3, 5, 7, 8]
print(apply(nums, square))