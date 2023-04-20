import random
import sys


n_elems = int(sys.argv[1])
min_value = int(sys.argv[2])
max_value = int(sys.argv[3])

print(f'Generating array with {n_elems} elements')


if n_elems == 25000 or n_elems == 100000 or n_elems == 250000:
    output = open(f'inputs/array_{n_elems}.txt', "w")
else:
    pass
    output = open("array.txt", "w")

random.seed(10)

for x in range(n_elems - 1):
    output.write(f'{random.randint(min_value, max_value)}, ')

output.write(f'{random.randint(min_value, max_value)}')
