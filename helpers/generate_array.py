import random
import sys

output = open("array.txt", "w")

n_elems = int(sys.argv[1])
min_value = int(sys.argv[2])
max_value = int(sys.argv[3])

random.seed(10)

for x in range(n_elems - 1):
    output.write(f'{random.randint(min_value, max_value)}, ')

output.write(f'{random.randint(min_value, max_value)}')
