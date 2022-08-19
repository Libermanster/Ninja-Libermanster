
#include "baseTranslator.h"


/*from dec to binary begins*/

void addOne(int* arr,int len)
{
	--len;
	if (len == 0){
		return;
	}
	arr[len] = arr[len] == 0 ? 1 : 0;
	if (arr[len] == 1){
		return;
	}
	addOne(arr, len);
}

void twoComlicated(int* arr,int len)
{
	int i;
	for(i = len; i > 0; --i){
		arr[i-1] = arr[i-1] == 0 ? 1 : 0;
	}
	addOne(arr, len);
}


void decToBin(int dec, int len, int arr[]){
	int i,flag = 0;
	flag = dec < 0 ? 1 : 0;
	for(i = len; i > 0; --i){
		if(dec%2 != 0){
			arr[i-1] = 1;	
		}
		dec = dec/2;
	}
	if (flag)
	{
		twoComlicated(arr,len);
	}
}

/*from dec to binary ends*/

/*from dec to base32 begins*/

void decTo32(int dec, char* res){
	char base[] = "!@#$%^&*<>abcdefghijklmnopqrstuv";
	res[0] = base[dec/32];
	res[1] = base[dec%32];	
}

/*from dec to base32 ends*/

/*from bin to dec begins*/

int binToDec(char* bin){
	int i = 0,j,k = 2,temp,res = 0;
	for (; i < 10; ++i)
	{

		temp = (bin[i] - '0');
		for(j=0,k=1 ; j<9-i ;++j)
			k = k*2;
		res = res + temp*k;
	}
	return res;
}

/*from bin to dec ends*/

