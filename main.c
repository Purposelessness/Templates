#include <stdio.h>
#include <linux/kernel.h>

int main(int argc, char **argv)
{
        char c[10];
        printf("%d\n", ARRAY_SIZE(c));
        printf("Hello world!\n");
        return 0;
}
