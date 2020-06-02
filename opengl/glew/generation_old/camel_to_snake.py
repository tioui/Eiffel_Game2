#!/usr/bin/env python3
# Script to replace method names from camel case to snake scale
# Author: Louis Marchand
# Date: Thu, 21 May 2020 18:43:37 +0000
# Version: 0.1
import sys
if len(sys.argv) > 1:
    with open(sys.argv[1], "r") as fichier:
        for line in fichier:
            if ("start1234" in line) and ("4321end" in line):
                start = line.find('start1234')
                end = line.find('4321end')
                before_text = line[:start]
                after_text = line[end + 7:-1]
                method_name = line[start + 9:end]
                new_method_name = ""
                if method_name[0].isupper(): 
                    new_method_name = method_name.lower()
                else:
                    for character in method_name:
                        if character.isupper():
                            new_method_name = new_method_name + "_" + character.lower()
                        else:
                            new_method_name = new_method_name + character
                print(before_text + new_method_name + after_text)
            else:
                print(line[:-1])
else:
    print("Usage: " + sys.argv[0] + " filename")
