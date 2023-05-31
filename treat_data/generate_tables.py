import csv
import re

alg_name = 'heapsort'
alg_size = 100000
data = open('../results/no_powercap/compile_averages.csv', 'r')
clean = open(f'../results/out.txt', 'w')
reader = csv.reader(data)
for i, row in enumerate(reader):
    if (row[0] == alg_name and int(row[2]) == alg_size):
        if (i != 0):
            if (row[1] == 'C#'):
                row[1] = r'C\#'
            clean.write(
                f"{row[1]} & {round(float(row[3]), 3)} & {round(float(row[6]), 3)} & {round(float(row[7]), 3)} \\\\\n")
