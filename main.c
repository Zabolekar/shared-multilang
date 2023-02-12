#include <stdio.h>
#include <stddef.h>

static const size_t BUFFER_SIZE = 3;

void a(size_t n, int buf[n]);

void print(size_t n, int buf[n])
{
    for (size_t i = 0; i < n; i++)
        printf("%i", buf[i]);
}

int main()
{
    int buf[BUFFER_SIZE];
    a(BUFFER_SIZE, buf);
    print(BUFFER_SIZE, buf);
    printf("\n");
}
