
#include "../Hfiles/baseTranslator.h"


/*from dec to binary begins*/

void addOne(int* arr,int len)
{
	--len;
	if (len < 0)
    {
      return;
    }
    arr[len] = arr[len] == 0 ? 1 : 0;
    if (arr[len] == 1)
    {
      return;
    }
  addOne (arr, len);
}

void twoComlicated (int *arr, int len)
{
  int i;
  for (i = 0; i < len; ++i)
    {
      arr[i] = arr[i] == 0 ? 1 : 0;
    }
  addOne (arr, len);
}


void decToBin (int dec, int len, int arr[])
{
  int i, flag = 0;
  for (i = 0; i < 10; ++i)
    arr[i] = 0;
  flag = dec < 0 ? 1 : 0;
  for (i = len; i > 0; --i)
    {
      if (dec % 2 != 0)
	{
	  arr[i - 1] = 1;
	}
      dec = dec / 2;
    }
  if (flag)
    {
      twoComlicated (arr, len);
    }
}

/*from dec to binary ends*/

/*from dec to base32 begins*/

void decTo32(int dec, char* res){
  char base[] = "!@#$%^&*<>abcdefghijklmnopqrstuv";
	if(dec <0) { /* if data from dataArray is negative*/  
    int arr[10];
    decToBin(dec,10,arr);
    dec = binToDec(arr);
  }
  res[0] = base[dec/32];
	res[1] = base[dec%32];	
}

/*from dec to base32 ends*/

/*from bin to dec begins*/

int binToDec(int* bin){
	int i = 0,k = 1,temp,res = 0;
	for (; i < 10; ++i)
	{

		temp = bin[i];
		k = int_pow(2, 9-i);
		res = res + temp*k;
	}
	return res;
}

int int_pow(int base, int exp)
{
    int result = 1;
    while (exp)
    {
        if (exp % 2)
           result *= base;
        exp /= 2;
        base *= base;
    }
    return result;
}

/*from bin to dec ends*/

