#include <unistd.h>
#include <stdarg.h>
#include <string.h>
#include "main.h"
/**
* _printf - function that behaves exactly like printf of stdio.h
* @format: character string composed of zero or more directives
* Return: the number of characters printed
*/
int _printf(const char *format, ...);
int _printf(const char *format, ...)
{
	va_list args;
	int j = 0;
	char c;
	char *s;
	int count = 0;

	va_start(args, format);
	if (format == NULL)
	{
		return (-1);
	}
	while (*format)
	{
		if (*format == '%')
		{
			if (strlen(format) == 1)
			{
				return (0);
			}
			format++;
			if (*format == 'c')
			{
				c = va_arg(args, int);
				count += _putchar(c);
			}
			else if (*format == 's')
			{
				s = va_arg(args, char *);
					while (*s)
					{
						count += _putchar(s[j]);
						j++;
					}
			}
			else if (*format == '%')
			{
				count += _putchar(*format);
			}

		}
		else
		{
			
			count += _putchar(*format);
			format++;
		}
	}
	va_end(args);
	return (count);
}
