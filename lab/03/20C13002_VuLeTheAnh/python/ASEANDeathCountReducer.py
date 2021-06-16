#!/usr/bin/python3

import sys

totalCases = 0

for line in sys.stdin:
    try:
        count = int(line)
    except:
        continue

    totalCases += count

print(totalCases)
