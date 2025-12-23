sakinys = input("Iveskite sakini: ").lower()
letter_count ={}

for char in sakinys:
    if char.isalpha():  # Tikrina, ar simbolis yra raidė
        if char in letter_count:
            letter_count[char] += 1
        else:
            letter_count[char] = 1

print("Letter occurrences:")
for letter, count in letter_count.items():
    print(f"'{letter}': {count}")