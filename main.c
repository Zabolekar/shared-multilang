#include <stdio.h>
#include <stddef.h>

static const size_t BUFFER_SIZE = 3;

void a(size_t n, int buf[n], int init);
void b(size_t n, int buf[n], int init);
void c(size_t n, int buf[n], int init);
void d(size_t n, int buf[n], int init);
void e(size_t n, int buf[n], int init);
void f(size_t n, int buf[n], int init);
void g(size_t n, int buf[n], int init);
void h(size_t n, int buf[n], int init);
typedef void(*function)(size_t, int*, int);
static const function functions[] = { a, b, c, d, e, f, g, h };
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
    int init = 0;
    for (size_t i = 0; i < FUNCTION_COUNT; i++)
    {
        functions[i](BUFFER_SIZE, buf, init);
        print(BUFFER_SIZE, buf);
        init += BUFFER_SIZE;
        init %= 10;
    }
    printf("\n");
}
