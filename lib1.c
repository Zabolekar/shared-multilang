#include <stddef.h>

void a(size_t n, int buf[n], int init)
{
    for (size_t i = 0; i < n; i++)
        buf[i] = (i + init) % 10;
}
