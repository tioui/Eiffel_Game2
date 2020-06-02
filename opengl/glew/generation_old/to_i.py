#!/usr/bin/env python3
import sys
if len(sys.argv) > 1:
    with open(sys.argv[1], "r") as fichier:
        for line in fichier:
            if ("(" not in line) and ("typedef" not in line):
                print("#define " + line[1:-1])
            else:
                if line[-2] == ";":
                    print(line[1:-1])
                else:
                    print(line[1:-1] + ";")

else:
    print("Usage: " + sys.argv[0] + " filename")
