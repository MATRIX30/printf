#include <unistd.h>
#include <stdarg.h>
#include <string.h>
#include "main.h"
/**
 * _printf - prints output according to a format.
 * @format: format string.
 *
 * Return: number of characters printed (excluding null byte).
 */
int _printf(const char *format, ...);
int _printf(const char *format, ...)
{
	va_list args;
	int count = 0;
	char c;
	char *s;
	char *null_buffer = "(null)";
	/*int j = 0;*/

	va_start(args, format);
	if (format == NULL)
	{
		return (-1);
	}
	while (*format)
	{
		if (*format == '%')
		{
			if (*format == 1 || *format == ' ')
			{
				return (-1);
			}
			format++;
			switch (*format)
			{
				case 'c':
					c = va_arg(args, int);
					count += _putchar(c);
					break;
				case 's':
					s = va_arg(args, char *);
					if (s == NULL)
					{
						write(1, null_buffer, 6);
						count += 6;
						break;
					}
					while (*s)
					{
						count += _putchar(*s);
						s++;
					}
					break;
				case '%':
					count += _putchar(*format);
					break;

				default:
					count += _putchar('%');
					count += _putchar('%');
					break;
			}

		}
		else
		{
			count += _putchar(*format);
		}
		format++;
	}
	va_end(args);
	return (count);
}
