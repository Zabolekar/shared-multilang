#include <stddef.h>

void a(size_t n, int buf[n])
{
    for (size_t i = 0; i < n; i++)
        buf[i] = i;
}
