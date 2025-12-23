
#!/bin/bash

# Ask user for the base number
read -p "Enter a number: " num

# Ask user how many lines to print
read -p "Enter how many lines you want in the table: " limit

# Initialize counter
i=1

# Print multiplication table using while loop
echo "Multiplication table for $num up to $limit:"
while [ $i -le $limit ]
do
    result=$((num * i))
    echo "$num x $i = $result"
    i=$((i + 1))  # Prevent infinite loop
done

