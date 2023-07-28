#include <unistd.h>
#include <stdarg.h>
#include <string.h>
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
	char null_buffer[] = "(null)";
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
				write(1, &c, 1);
				count++;
			}
			else if (*format == 's')
			{
				s = va_arg(args, char *);
				if (s == NULL)
				{
					write(1, null_buffer, 6);
					count += 6;
				}
				else
				{
					while (*s)
					{
						write(1, &s[j], 1);
						count++;
						j++;
					}
				}
			}
			else if (*format == '%')
			{
				write(1, format, 1);
				count++;
			}

		}
		else
		{
			write(1, format, 1);
			format++;
			count++;
		}
	}
	return (count);
}
