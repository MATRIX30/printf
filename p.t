#include <unistd.h>
#include <stdarg.h>
#include <string.h>
/**
* _printf - function that behaves exactly like printf of stdio.h
* @format: character string composed of zero or more directives
* Return: the number of characters printed
*/
int _printf(const char *format, ...);
#include <stdarg.h>
#include <stdio.h>

/**
 * _printf - prints output according to a format.
 * @format: format string.
 *
 * Return: number of characters printed (excluding null byte).
 */
int _printf(const char *format, ...)
{
	va_list args;
	int count = 0;

	va_start(args, format);
	while (*format)
	{
		if (*format == '%')
		{
			format++;
			switch (*format)
			{
				case 'c':
					count += putchar(va_arg(args, int));
					break;
				case 's':
					count += printf("%s", va_arg(args, char *));
					break;
				case '%':
					count += putchar('%');
					break;
				default:
					putchar('%');
					putchar(*format);
					count += 2;
			}
		}
		else
		{
			putchar(*format);
			count++;
		}
		format++;
	}
	va_end(args);
	return (count);
}

