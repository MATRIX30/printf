#include "main.h"
/**
* int_to_char - functiont to convert integer to character
* @n: integer number to be converted
* Return: char value of n
*/

char int_to_char(int n)
{
	return (n + '0');
}

/**
* print_int - helper function to print integer to char
* @n: integer to be printed
* @count: number of characters written  so far
* Return: number of bytes writen
*/
int print_int(int n, int count)
{
	int last_digit;
	int other_digit;

	if (n < 0)
	{
		count += _putchar('-');
		n = -1 * n;
	}
	if (n / 10 <= 0)
	{
		_putchar(int_to_char(n));
		count++;
	}
	else
	{
		last_digit = n % 10;
		other_digit = n / 10;
		count = print_int(p, count);
		_putchar(int_to_char(m));
		count++;
	}
	return (count);
}
