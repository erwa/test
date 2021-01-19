#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#define FOO abcd

#define MACRO1(FOO, x) FOO##_##x
// Won't work
#define MACRO2(x) MACRO1(FOO, x)

// This combination will
#define MACRO3(FOO, x) MACRO1(FOO, x)
#define MACRO4(x) MACRO3(FOO, x)

int main (void) {
    int a = -1;
    int b = -1 % 3;
    printf("%d %d\n", a, b);
    return 0;
}