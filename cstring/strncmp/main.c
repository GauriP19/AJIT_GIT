#include <stdio.h>
#include "astring.h"
char main()
{
	char str1[20]="vlsivlsivlsivlsivi";
	char str2[20]="vlsivlsivlsivlsivl";

	return astrncmp(str1, str2,9);

}
