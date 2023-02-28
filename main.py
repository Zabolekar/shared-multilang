"""
Same as main.c but in Python
"""

from ctypes import CDLL, c_int

BUFFER_SIZE = 3

indexed_names = enumerate("abcdefgh", 1)
functions = (getattr(CDLL(f"./{i}.so"), name) for i, name in indexed_names)

init = 0
buffer = (c_int * BUFFER_SIZE)()

for f in functions:
    f(BUFFER_SIZE, buffer, init)
    print(*buffer, sep="", end=" ")
    init += BUFFER_SIZE
    init %= 10
print()
