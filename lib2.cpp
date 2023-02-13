#include <cstddef>
#include <numeric>
#include <algorithm>

extern "C"
{
    void b(size_t n, int* buf, int init)
    {
        std::iota(buf, buf + n, init);
        std::transform(buf, buf + n, buf, [](int i) { return i % 10; });
    }
}
