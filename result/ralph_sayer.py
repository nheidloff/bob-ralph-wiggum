
import random

quotes = [
    "I'm helping!",
    "Me fail English? That's unpossible!",
    "My cat's breath smells like cat food."
]

def get_random_quote():
    return random.choice(quotes)

if __name__ == "__main__":
    print(get_random_quote())
