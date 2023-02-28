Creates simple shared libraries. Uses them from C and Python. Only tested on Linux.

Languages tested:
- C
- C++
- Nim
- Zig
- Rust
- NASM (for x86_64)
- GNU Assembler (for x86_64)
- FASM (for x86_64)

Run `make`. The final output should be:

```
./main
012 345 678 901 234 567 890 123
python3 main.py
012 345 678 901 234 567 890 123
```
