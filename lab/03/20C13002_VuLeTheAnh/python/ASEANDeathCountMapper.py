#!/usr/bin/python3

import sys

TARGET = 'South-East Asia'

for line in sys.stdin:
    line = line.strip().split('\t')
    if line[1] == TARGET:
        total_cases = int(float(line[7].replace(',', '')))
        print(total_cases)
