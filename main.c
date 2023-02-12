#include <stdio.h>
#include <stddef.h>

static const size_t BUFFER_SIZE = 3;

#define FUNCTION_COUNT 2
void a(size_t n, int buf[n]);
void b(size_t n, int buf[n]);
typedef void(*function)(size_t, int*);
static const function functions[FUNCTION_COUNT] = { a, b };

void print(size_t n, int buf[n])
{
    for (size_t i = 0; i < n; i++)
        printf("%i", buf[i]);
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
