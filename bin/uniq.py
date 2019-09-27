#! /usr/bin/env python
import sys

seen = set()
for line in sys.stdin:
    line = line.strip()
    if line not in seen:
        print line
        seen.add(line)
