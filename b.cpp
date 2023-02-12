#include <cstddef>

extern "C"
{
    void b(size_t n, int* buf)
    {
        for (size_t i = 0; i < n; i++)
            buf[i] = i + 3;
    }
}
