#include <unistd.h>
/**
* _putchar - a function to print a character
* @c: character parameter
* Return: number of bytes written
*/

int _putchar(char c)
{
	return (write(1, &c, 1));
}
