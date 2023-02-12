#include <stdio.h>
#include <stddef.h>

static const size_t BUFFER_SIZE = 3;

void a(size_t n, int buf[n]);
void b(size_t n, int buf[n]);
void c(size_t n, int buf[n]);
void d(size_t n, int buf[n]);
void e(size_t n, int buf[n]);
void f(size_t n, int buf[n]);
typedef void(*function)(size_t, int*);
static const function functions[] = { a, b, c, d, e, f };
static const size_t FUNCTION_COUNT = sizeof functions / sizeof(function);

void print(size_t n, int buf[n])
{
    for (size_t i = 0; i < n; i++)
        printf("%i", buf[i]);
        printf(" ");
}

int main()
{
    int buf[BUFFER_SIZE];
    for (size_t i = 0; i < FUNCTION_COUNT; i++)
    {
        functions[i](BUFFER_SIZE, buf);
        print(BUFFER_SIZE, buf);
    }
    printf("\n");
}
