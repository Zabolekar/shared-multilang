#include <cstddef>
#include <numeric>

extern "C"
{
    void b(size_t n, int* buf)
    {
        std::iota(buf, buf + n, 3);
    }
}
