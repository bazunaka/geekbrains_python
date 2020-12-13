import json

with open('homework5/file_7.txt', 'r') as file:
    for line in file:
        name, fir, earning, damage = line.split()
        