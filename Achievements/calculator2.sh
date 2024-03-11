#!/bin/bash

echo "Basic Bash Calculator"
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

echo "Select operation:"
echo "1 for Addition (+)"
echo "2 for Subtraction (-)"
echo "3 for  Multiplication (*)"
echo "4 for Division (/)"
read choice

case "$choice"  in
    1)
        result=$(echo "$((num1 + num2))")
        ;;
    2)
        result=$(echo "$((num1 - num2))")
        ;;
    3)
        result=$(echo "$((num1 * num2))")
        ;;
    4)
        result=$(echo "$((num1 / num2))")
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo "Result: $result"
