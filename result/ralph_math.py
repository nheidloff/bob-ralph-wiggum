import sys

def main():
    if len(sys.argv) != 3:
        print("Usage: python3 ralph_math.py <number1> <number2>")
        sys.exit(1)

    try:
        num1 = int(sys.argv[1])
        num2 = int(sys.argv[2])
    except ValueError:
        print("My cat's name is Mittens.")
        sys.exit(1)

    sum_result = num1 + num2
    if sum_result > 10:
        print("That is unpossible!")
    else:
        print(f"{sum_result} ... I calculate good!")

if __name__ == "__main__":
    main()