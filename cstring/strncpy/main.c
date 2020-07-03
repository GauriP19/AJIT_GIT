#include <stdio.h>
#include "astring.h"
char main()
{
	char str1[]="vlsivlsivlsi";
	char str2[40];

	return astrncpy(str2, str1, 9);

}
