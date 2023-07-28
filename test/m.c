#include <limits.h>
#include <stdio.h>
#include "main.h"

/**
 * main - Entry point
 *
 * Return: Always 0
 */
int main(void)
{
    int len;
    int len2;
   

    len = _printf("%s");
    printf("\n");
    len2 = printf("%s");
    printf("%d == %d",len, len2);
    

    return (0);
}
